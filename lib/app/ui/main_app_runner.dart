import 'package:flutter/cupertino.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vortaro/app/di/init_di.dart';
import 'package:vortaro/app/domain/app_builder.dart';
import 'package:vortaro/app/domain/app_notifications.dart';
import 'package:vortaro/app/domain/app_runner.dart';
import 'package:vortaro/local/data_base/data_base_helper.dart';

class MainAppRunner implements AppRunner {
  final String env;

  const MainAppRunner(this.env);

  @override
  Future<void> preloadData() async {
    initDi(env);
  }

  @override
  Future<void> run(AppBuilder appBuilder) async {
    await DbHelper.instance.init();
    AppNotifications().initNotification();
    final storage = await HydratedStorage.build(
        storageDirectory: await getApplicationDocumentsDirectory());
    HydratedBlocOverrides.runZoned(() async {
      await preloadData();
      runApp(appBuilder.buildApp());
    }, storage: storage);
  }
}
