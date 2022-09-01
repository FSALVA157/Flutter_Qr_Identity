import 'package:flutter/material.dart';

class GlobalTheme{

  static const primary_color = Color(0xff3863FF);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary_color,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0
    ),
  );

}