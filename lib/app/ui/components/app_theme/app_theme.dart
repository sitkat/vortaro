import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  fontFamily: "Muli",
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black87),
    elevation: 0,
    titleTextStyle: TextStyle(
        color: Colors.green, fontSize: 20, fontWeight: FontWeight.w700),
  ),
  textTheme: const TextTheme(
    // Для кнопок
    labelLarge: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      // decoration: TextDecoration.underline,
    ),
    labelMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 18,
      // decoration: TextDecoration.underline,
    ),
    labelSmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      decoration: TextDecoration.underline,
    ),
    displayLarge: TextStyle(
      fontFamily: "Muli",
      fontSize: 24,
      color: Color(0xff070707),
    ),
    displayMedium: TextStyle(
      fontFamily: "Muli",
      fontSize: 16,
      color: Colors.blue,
    ),
  ),
);
