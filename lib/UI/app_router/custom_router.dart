import 'package:flutter/material.dart';
import 'package:vortaro/UI/app_router/constants_router.dart';
import 'package:vortaro/model/word.dart';
import 'package:vortaro/screens/create_word_screen.dart';
import 'package:vortaro/screens/detail_word_screen.dart';
import 'package:vortaro/screens/home_screen.dart';
import 'package:vortaro/screens/main_screen.dart';
import 'package:vortaro/screens/not_found_screen.dart';
import 'package:vortaro/screens/translator_screen.dart';
import 'package:vortaro/screens/update_word_screen.dart';

// class CustomRouter {
//   static Route<dynamic> generatedRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case mainRoute:
//         return MaterialPageRoute(builder: (_) => const MainScreen());
//       case homeRoute:
//         return MaterialPageRoute(builder: (_) => const HomeScreen());
//       case createWordRoute:
//         return MaterialPageRoute(builder: (_) => const CreateWord());
//       // case updateWordRoute:
//       //   return MaterialPageRoute(builder: (_) => UpdateWord(_word));
//       // case detailWordRoute:
//       //   return MaterialPageRoute(builder: (_) => DetailWord(_word));
//       case translatorRoute:
//         return MaterialPageRoute(builder: (_) => const TranslatorScreen());
//       default:
//         return MaterialPageRoute(builder: (_) => const NotFoundScreen());
//     }
//   }
// }
