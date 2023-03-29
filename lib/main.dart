import 'package:flutter/material.dart';
import 'package:vortaro/UI/app_router/constants_router.dart';
import 'package:vortaro/UI/app_theme/custom_theme.dart';
import 'package:vortaro/data_base/data_base_helper.dart';
import 'package:vortaro/data_base/data_controller.dart';
import 'package:vortaro/screens/home_screen.dart';
import 'package:vortaro/screens/main_screen.dart';
import 'package:vortaro/screens/translator_screen.dart';

import 'UI/app_router/custom_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.instance.init();
  runApp(const MyApp());
  // DataController dataController = DataController();
  // dataController.converter();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      title: 'Esperanto',
      routes: routes,
      // onGenerateRoute: CustomRouter.generatedRoute(),
    );
  }
}
