import 'package:flutter/material.dart';
import 'package:vortaro/UI/app_router/constants_router.dart';
import 'package:vortaro/UI/app_router/custom_router.dart';
import 'package:vortaro/UI/app_theme/custom_theme.dart';
import 'package:vortaro/app/ui/main_app_builder.dart';
import 'package:vortaro/app/ui/main_app_runner.dart';
import 'package:vortaro/data_base/data_base_helper.dart';

// был Future<void> main() async {
void main()  {
  // new
  const env = String.fromEnvironment("env", defaultValue: "prod");
  const runner = MainAppRunner(env);
  final builder = MainAppBuilder();
  runner.run(builder);
  //
}

// Было
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await DbHelper.instance.init();
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   final CustomRouter router = CustomRouter();
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: lightTheme,
//       title: 'Esperanto',
//       onGenerateRoute: router.generatedRoute,
//       initialRoute: mainRoute,
//     );
//   }
// }
