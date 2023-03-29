// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:vortaro/data_base/data_base_helper.dart';
// import 'package:vortaro/model/word.dart';
//
// class DataController {
//   var helper = DbHelper.instance;
//   String? _edition;
//   String _title = "";
//   String _translation = "";
//   String _description = "";
//
//   String _forNewTitle = "";
//   String _forNewPodTitle = "";
//   String _forNewTranslation = "";
//   String _forNewDescription = "";
//
//   // String firstEntry = "";
//   // String secondEntry = "";
//
//   void converter() async {
//     WidgetsFlutterBinding.ensureInitialized();
//     // File file = File(readFileAsync('assets/test.txt').toString());
//     readFileAsync('assets/test.txt').toString();
//   }
//
//   // Future<dynamic> readFileAsync(String filePath) async {
//   //   String data = await rootBundle.loadString(filePath);
//   //   return LineSplitter.split(data).forEach((line) {
//   //     if (isDate(line)) {
//   //       _edition = line.characters.take(16).string;
//   //     }
//   //     // else if (firstEntry.isNotEmpty && line.contains('_')) {
//   //     //
//   //     // }
//   //
//   //     else if (line.startsWith('[')) {
//   //       int firstSymbol = line.indexOf('_');
//   //
//   //       int firstMatch = line.indexOf('[');
//   //       int secondMatch = line.indexOf(']');
//   //
//   //       // if (_title.isEmpty) {
//   //       _title = line.substring(firstMatch + 1, secondMatch).trim();
//   //       // if (_title.contains('|')) {
//   //       //   // print('$_title' + ' Проверка');
//   //       //   _forNewTitle = _title.substring(0, _title.indexOf('|'));
//   //       //   // print('$_forNewTitle' + ' Проверка без окончания');
//   //       // }
//   //       // }
//   //       if (line.contains('_')) {
//   //         _description = line.substring(
//   //             line.indexOf('_') + 1, line.indexOf('_', firstSymbol + 1));
//   //         // print('Описание: ' + '$_description');
//   //         // _translation = line.substring(line.indexOf('_', firstSymbol + 1));
//   //         // print(_translation);
//   //       }
//   //       // else {
//   //       //   _translation = line.substring(secondMatch + 1).trim();
//   //       // }
//   //       // if (line.startsWith('~', 1)) {
//   //       //   _forNewPodTitle = _forNewTitle.trim() +
//   //       //       line.substring(line.indexOf('[') + 2, line.indexOf(']'));
//   //       //   print('Под Title: ' + _forNewPodTitle);
//   //       //   if (line.contains('_')) {
//   //       //     _forNewDescription = line.substring(
//   //       //         line.indexOf('_') + 1, line.indexOf('_', firstSymbol + 1));
//   //       //     print('Под Description: ' + '$_forNewDescription');
//   //       //     _forNewTranslation =
//   //       //         line.substring(line.indexOf('_', firstSymbol + 1));
//   //       //     print('Под Translation: ' + _forNewTranslation);
//   //       //   }
//   //       // }
//   //     } else if (line.isEmpty) {
//   //       print('$_edition');
//   //       print('$_title');
//   //       print('$_translation');
//   //       print('$_description');
//   //
//   //       print('');
//   //       _edition = "";
//   //       _title = "";
//   //       _translation = "";
//   //       _description = "";
//   //
//   //       // _forNewTitle = "";
//   //       // _forNewPodTitle = "";
//   //       // _forNewTranslation = "";
//   //       // _forNewDescription = "";
//   //
//   //       // helper.onCreateWord(Word(edition: _edition.toString(), title: _title, translation: _translation, description: _description));
//   //     }
//   //   });
//   // }
//
//   Future<dynamic> readFileAsync(String filePath) async {
//     String data = await rootBundle.loadString(filePath);
//     return LineSplitter.split(data).forEach((line) {
//       if (isDate(line)) {
//         _edition = line.characters.take(16).string;
//       } else if (line.startsWith('[')) {
//         int firstMatch = line.indexOf('[');
//         int secondMatch = line.indexOf(']');
//
//         _title = line.substring(firstMatch + 1, secondMatch).trim();
//       } else if (line.contains('_')) {
//         int firstSymbol = line.indexOf('_');
//         _description = line.substring(
//             line.indexOf('_') + 1, line.indexOf('_', firstSymbol + 1));
//         _translation = line.substring(line.indexOf('_', firstSymbol + 1));
//       } else if (line.isEmpty) {
//         print('$_edition');
//         print('$_title');
//         print('$_translation');
//         print('$_description');
//
//         print('----------------------------');
//         _edition = "";
//         _title = "";
//         _translation = "";
//         _description = "";
//
//         // helper.onCreateWord(Word(edition: _edition.toString(), title: _title, translation: _translation, description: _description));
//       }
//     });
//   }
//
//   bool isDate(String str) {
//     try {
//       DateTime.parse(str.characters.take(16).string);
//       return true;
//     } catch (e) {
//       return false;
//     }
//   }
// }
