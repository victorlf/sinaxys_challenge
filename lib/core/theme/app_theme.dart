import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get brightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.grey,
        primary: Colors.white,
        background: Colors.grey,
        secondary: const Color(0xFF532AEF),
        onSecondary: Colors.white,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        headline3: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
        headline4: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
      ).apply(
        displayColor: Colors.black,
        bodyColor: Colors.black,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xFF532AEF)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0)),
          textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
