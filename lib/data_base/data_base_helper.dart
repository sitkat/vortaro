import 'dart:io' as io;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart';
import 'package:vortaro/model/word.dart';

import 'data_base_request.dart';

class DbHelper {
  static final DbHelper instance = DbHelper._instance();

  DbHelper._instance();

  // DbHelper.internal();

  late final io.Directory _appDocumnetDirectory;
  late final String _pathDB;
  late final Database _db;
  int _version = 1;

  Future<void> init() async {
    _appDocumnetDirectory =
        await path_provider.getApplicationDocumentsDirectory();

    _pathDB = join(_appDocumnetDirectory.path, "dbMain.db");

    bool dbExists = await io.File(_pathDB).exists();

    if (!dbExists) {
      ByteData data = await rootBundle.load(join("assets", "dbTest.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      await io.File(_pathDB).writeAsBytes(bytes, flush: true);
    }

    if (io.Platform.isMacOS) {
      sqfliteFfiInit();
      _db = await databaseFactoryFfi.openDatabase(_pathDB,
          options: OpenDatabaseOptions(
            version: _version,
            onCreate: (db, version) => onCreateTable(db),
            onUpgrade: (db, oldVersion, newVersion) => onUpdateTable(db),
          ));
    }
    // if (io.Platform.isAndroid) {
      _db = await openDatabase(
        _pathDB,
        version: _version,
        onCreate: (db, version) async {
          await onCreateTable(db);
        },
        onUpgrade: (db, oldVersion, newVersion) => onUpdateTable(db),
      );
    // }
  }

  Future<void> onCreateTable(Database db) async {
    for (var element in DataBaseRequest.tableCreateList) {
      db.execute(element);
    }
  }

  Future<void> onUpdateTable(Database db) async {
    var tables = await db.rawQuery('SELECT name FROM sqlite_master');
    for (var table in DataBaseRequest.tableList.reversed) {
      if (tables.where((element) => element['name'] == table).isNotEmpty) {
        await db.execute(DataBaseRequest.deleteTable(table));
      }
    }
    for (var element in DataBaseRequest.tableCreateList) {
      db.execute(element);
    }
  }

  Future<int> onCreateWord(Word word) async {
    var dbClient = await _db;
    return dbClient.insert(DataBaseRequest.tableWord, word.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<int> onUpdateWord(Word word) async {
    var dbClient = await _db;
    return await dbClient.update(DataBaseRequest.tableWord, word.toMap(),
        where: 'id = ?', whereArgs: [word.id]);
  }

  Future<void> onDeleteWord(int id) async {
    var dbClient = await _db;
    try {
      await dbClient
          .delete(DataBaseRequest.tableWord, where: "id = ?", whereArgs: [id]);
    } catch (error) {
      debugPrint("Something went wrong when deleting an item: $error");
    }
  }

  Future<List<Map<String, dynamic>>> getWords() async {
    var dbClient = await _db;
    return dbClient.query(DataBaseRequest.tableWord,
        orderBy: "title", limit: 2000);
  }
}
