import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vortaro/app/ui/components/app_dialog_three_params.dart';
import 'package:vortaro/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:vortaro/feature/auth/ui/profile_screen.dart';
import 'package:vortaro/feature/words/domain/state/word_cubit.dart';
import 'package:vortaro/feature/words/ui/word_list.dart';

// class MainScreenAuthorized extends StatelessWidget {
//   const MainScreenAuthorized({Key? key, required this.userEntity})
//       : super(key: key);
//
//   final UserEntity userEntity;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("MainScreen"),
//         actions: [
//           IconButton(
//               onPressed: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const ProfileScreen(),
//                   )),
//               icon: const Icon(Icons.account_box)),
//           IconButton(
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (context) => AppDialogThreeParams(
//                       val1: "Слово",
//                       val2: "Перевод",
//                       val3: "Описание",
//                       onPressed: ((v1, v2, v3) {
//                         context.read<WordCubit>().createWord({
//                           "title": v1,
//                           "translation": v2,
//                           "description": v3,
//                         });
//                       })),
//                 );
//               },
//               icon: const Icon(Icons.email)),
//         ],
//       ),
//       body: const WordList(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vortaro/feature/auth/ui/start_authorize_screen.dart';
import 'package:vortaro/screens/home_screen.dart';
import 'package:vortaro/screens/not_found_screen.dart';
import 'package:vortaro/screens/translator_screen.dart';

class MainScreenAuthorized extends StatefulWidget {
  const MainScreenAuthorized({Key? key, required this.userEntity})
      : super(key: key);
  final UserEntity userEntity;

  @override
  State<MainScreenAuthorized> createState() => _MainScreenAuthorizedState();
}

class _MainScreenAuthorizedState extends State<MainScreenAuthorized> {
  int _currentIndex = 0;

  final tabs = [
    const WordList(),
    const NotFoundScreen(),
    const TranslatorScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Esperanto"),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: Container(
        color: Colors.lightGreenAccent,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10.0,
          ),
          child: GNav(
            backgroundColor: Colors.lightGreenAccent,
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.white60,
            padding: const EdgeInsets.all(16),
            gap: 4,
            selectedIndex: _currentIndex,
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.book_outlined,
                text: 'Словарь',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Избранное',
              ),
              GButton(
                icon: Icons.translate,
                text: 'Переводчик',
              ),
              GButton(
                icon: Icons.account_circle_outlined,
                text: 'Профиль',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
