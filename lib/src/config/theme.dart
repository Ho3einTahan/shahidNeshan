import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData theme = ThemeData(
    primaryColor: const Color(0xFF074B87),
    scaffoldBackgroundColor: const Color(0xFFF7F7F7),
    fontFamily: 'Dana',
    colorScheme: const ColorScheme(
      primary: Color(0xFF074B87),
      secondaryContainer: Color(0xff5A87AF),
      secondary: Color(0xFFD1B490),
      surface: Color(0xFFFFFFFF),
      error: Color(0xFFF64E34),
      onPrimary: Color(0xffCDDBE7),
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onError: Colors.white,
      brightness: Brightness.light,
      background: Color(0xffF7F7F7),
      onBackground: Colors.transparent,
    ),
    highlightColor: const Color(0xFFFFAB00),
    textTheme: const TextTheme(
      bodySmall: TextStyle(fontFamily: 'Dana', fontWeight: FontWeight.w100),
      displaySmall: TextStyle(fontFamily: 'Dana', fontWeight: FontWeight.w300),
      displayMedium: TextStyle(fontFamily: 'Dana', fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(fontFamily: 'Dana', fontWeight: FontWeight.w500),
      displayLarge: TextStyle(fontFamily: 'Dana', fontWeight: FontWeight.w600),
      bodyLarge: TextStyle(fontFamily: 'Dana', fontWeight: FontWeight.w700),
      labelLarge: TextStyle(fontFamily: 'Dana', fontWeight: FontWeight.w800),
    ),
  );
}
