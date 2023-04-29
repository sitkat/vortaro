import 'package:flutter/cupertino.dart';
import 'package:vortaro/app/domain/app_builder.dart';
import 'package:vortaro/app/domain/app_runner.dart';

class MainAppRunner implements AppRunner {
  @override
  Future<void> preloadData() async {
    WidgetsFlutterBinding.ensureInitialized();
  }

  @override
  Future<void> run(AppBuilder appBuilder) async {
    await preloadData();
    runApp(appBuilder.buildApp());
  }
}
