import 'package:flutter/material.dart';

class AppTheme {
  static const Color headerDropShadowColor = Color(0x29000000);
  static const Color backgroundTopColor = Color(0xFFD0FFF0);
  static const Color backgroundIntermediateColor = Color(0xFFCEECFF);
  static const Color backgroundBottomColor = Color(0xFFD3DDFF);
  static const Color buttonColor = Color(0xFF4FC9D0);

  static final ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 4.0,
      shadowColor: headerDropShadowColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: buttonColor,
        minimumSize: const Size(280, 44),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(34),
        ),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}
