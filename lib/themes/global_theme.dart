import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalTheme{

  //static const primary_color = Color(0xff3863FF);
  static const primary_color = Color(0xff337ff0);
  //static const primary_color = Colors.yellow;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary_color,
    appBarTheme: const AppBarTheme(
      color: primary_color,
      elevation: 0,      
    ),

  );

}