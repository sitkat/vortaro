import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vortaro/feature/auth/ui/start_authorize_screen.dart';
import 'package:vortaro/local/word_list_not_auth.dart';

class MainScreenNotAuthorized extends StatefulWidget {
  const MainScreenNotAuthorized({Key? key}) : super(key: key);

  @override
  State<MainScreenNotAuthorized> createState() => _MainScreenNotAuthorizedState();
}

class _MainScreenNotAuthorizedState extends State<MainScreenNotAuthorized> {
  int _currentIndex = 0;

  final tabs = [
    const WordListNotAuth(),
    const StartAuthorizeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Esperanto"),
        automaticallyImplyLeading: false,
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: Container(
        color: Colors.lightGreenAccent,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50.0,
            vertical: 10.0,
          ),
          child: GNav(
            backgroundColor: Colors.lightGreenAccent,
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.white60,
            padding: const EdgeInsets.all(16),
            gap: 2,
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
