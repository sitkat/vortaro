import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vortaro/feature/auth/ui/start_authorize_screen.dart';
import 'package:vortaro/screens/home_screen.dart';
import 'package:vortaro/screens/not_found_screen.dart';
import 'package:vortaro/screens/translator_screen.dart';

class MainScreenNotAuthorized extends StatefulWidget {
  const MainScreenNotAuthorized({Key? key}) : super(key: key);

  @override
  State<MainScreenNotAuthorized> createState() => _MainScreenNotAuthorizedState();
}

class _MainScreenNotAuthorizedState extends State<MainScreenNotAuthorized> {
  int _currentIndex = 3;

  final tabs = [
    const HomeScreen(),
    const NotFoundScreen(),
    const TranslatorScreen(),
    const StartAuthorizeScreen(),
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
            vertical: 20.0,
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
