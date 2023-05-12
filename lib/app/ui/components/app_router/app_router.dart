import 'package:flutter/material.dart';
import 'package:vortaro/app/ui/root_screen.dart';
import 'package:vortaro/feature/auth/ui/login_screen.dart';
import 'package:vortaro/feature/auth/ui/register_screen.dart';
import 'package:vortaro/feature/auth/ui/start_authorize_screen.dart';
import 'package:vortaro/local/screens/create_word_screen.dart';
import 'package:vortaro/local/screens/detail_word_screen.dart';
import 'package:vortaro/general/translator_screen.dart';
import 'package:vortaro/local/screens/update_word_screen.dart';
import 'package:vortaro/local/word.dart';
import 'package:vortaro/local/word_list_not_auth.dart';

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
      case wordListNotAuthRoute:
        return MaterialPageRoute(builder: (_) => const WordListNotAuth());
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
      default:
        return MaterialPageRoute(builder: (_) => const RootScreen());
    }
  }
}

class WordRouteArguments {
  WordRouteArguments({required this.wordArguments});

  final Word wordArguments;
}
