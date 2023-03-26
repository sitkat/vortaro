import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vortaro/screens/home_screen.dart';
import 'package:vortaro/screens/not_found_screen.dart';
import 'package:vortaro/screens/translator_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;

  final tabs = [
    const HomeScreen(),
    const NotFoundScreen(),
    const TranslatorScreen(),
    const NotFoundScreen(),
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
            onTabChange: (index){
              setState(() {
                _currentIndex = index;
              });
            },

            tabs: const [
              GButton(icon: Icons.book, text: 'Словарь',),
              GButton(icon: Icons.favorite_border, text: 'Избранное',),
              GButton(icon: Icons.translate, text: 'Переводчик',),
              GButton(icon: Icons.settings, text: 'Настройки',),
            ],
          ),
        ),
      ),
    );
  }
}
