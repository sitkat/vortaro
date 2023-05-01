import 'package:flutter/material.dart';
import 'package:vortaro/app/ui/root_screen.dart';
import 'package:vortaro/feature/auth/ui/login_screen.dart';
import 'package:vortaro/feature/auth/ui/register_screen.dart';
import 'package:vortaro/feature/auth/ui/start_authorize_screen.dart';


import 'package:vortaro/model/word.dart';
import 'package:vortaro/screens/create_word_screen.dart';
import 'package:vortaro/screens/detail_word_screen.dart';
import 'package:vortaro/screens/home_screen.dart';
import 'package:vortaro/screens/main_screen.dart';
import 'package:vortaro/screens/not_found_screen.dart';
import 'package:vortaro/screens/translator_screen.dart';
import 'package:vortaro/screens/update_word_screen.dart';

import 'app_router_constants.dart';

class AppRouter {
  Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case rootRoute:
        return MaterialPageRoute(builder: (_) => const RootScreen());
      case startAuthorizeScreenRoute:
        return MaterialPageRoute(builder: (_) => const StartAuthorizeScreen());
      case loginScreenRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case registerScreenRoute:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case mainRoute:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case createWordRoute:
        return MaterialPageRoute(builder: (_) => const CreateWord());
      case updateWordRoute:
        return MaterialPageRoute(
            builder: (_) => UpdateWord(
                word:
                    (settings.arguments as WordRouteArguments).wordArguments));
      case detailWordRoute:
        return MaterialPageRoute(
            builder: (_) => DetailWord(
                word:
                    (settings.arguments as WordRouteArguments).wordArguments));
      case translatorRoute:
        return MaterialPageRoute(builder: (_) => const TranslatorScreen());
      case notFoundPageRoute:
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
    }
  }
}

class WordRouteArguments {
  WordRouteArguments({required this.wordArguments});

  final Word wordArguments;
}
