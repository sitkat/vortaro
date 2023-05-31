import 'package:flutter/material.dart';
import 'package:vortaro/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:vortaro/feature/auth/ui/profile_screen.dart';
import 'package:vortaro/feature/favorites/ui/favorite_list.dart';
import 'package:vortaro/feature/words/ui/word_list.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vortaro/general/translator_screen.dart';

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
    const FavoriteList(),
    const TranslatorScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
