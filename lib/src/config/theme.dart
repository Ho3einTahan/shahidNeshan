import 'package:flutter/material.dart';

class CustomeTheme {
  static ThemeData theme = ThemeData(
    primaryColor: const Color(0xFF074B87),
    scaffoldBackgroundColor: const Color(0xFFF7F7F7),
    colorScheme: const ColorScheme(
      primary: Color(0xFF074B87),
      secondary: Color(0xFFD1B490),
      surface: Color(0xFFFFFFFF),
      error: Color(0xFFF64E34),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onError: Colors.white,
      brightness: Brightness.light,
      background: Colors.transparent,
      onBackground: Colors.transparent,
    ),
    highlightColor: const Color(0xFFFFAB00),
  );
}
