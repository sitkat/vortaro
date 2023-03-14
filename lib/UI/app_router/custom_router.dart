import 'package:flutter/material.dart';
import 'package:vortaro/UI/app_router/constants_router.dart';
import 'package:vortaro/screens/home_screen.dart';
import 'package:vortaro/screens/not_found_screen.dart';

class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    // case aboutRoute:
    //   return MaterialPageRoute(builder: (_) => const AboutPage());
    // case settingsRoute:
    //   return MaterialPageRoute(builder: (_) => const SettingsPage());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
    }
  }
}