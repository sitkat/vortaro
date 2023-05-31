import 'package:flutter/material.dart';
import 'package:vortaro/app/ui/main_app_builder.dart';
import 'package:vortaro/app/ui/main_app_runner.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const env = String.fromEnvironment("env", defaultValue: "prod");
  const runner = MainAppRunner(env);
  final builder = MainAppBuilder();
  runner.run(builder);
}
