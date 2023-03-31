import 'package:flutter/material.dart';
import 'package:vortaro/UI/app_router/constants_router.dart';
import 'package:vortaro/UI/app_router/custom_router.dart';
import 'package:vortaro/UI/app_theme/custom_theme.dart';
import 'package:vortaro/data_base/data_base_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.instance.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  final CustomRouter router = CustomRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      title: 'Esperanto',
      onGenerateRoute: router.generatedRoute,
      initialRoute: mainRoute,
      // routes: routes,
      // onGenerateRoute: CustomRouter.generatedRoute(),
    );
  }
}
