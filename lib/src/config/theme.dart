
import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/core/constans/colors.dart';




class CustomeTheme { 
  
  static  ThemeData theme = ThemeData(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor:  kBackgroundColor,
    highlightColor: const Color(0xFFFFAB00),
    colorScheme: const ColorScheme(
      primary:  kPrimaryColor,
      secondary:  kSecondaryColor,
      surface:  Color(0xFFFFFFFF),
      error:  Color(0xFFF64E34),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onError: Colors.white,
      brightness:  Brightness.light,
    ),
    appBarTheme: appBarTheme
  );

  

  static AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor:  kBackgroundColor
  );

}