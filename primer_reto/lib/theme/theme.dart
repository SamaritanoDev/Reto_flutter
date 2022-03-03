import 'package:flutter/material.dart';

class AppTheme {
  static const Color colorprimary = Color(0xff015231);
  static const Color colorsecondary = Color(0xffCAA071);
  
  static final ThemeData lightTheme = ThemeData(
    //Color primario
    primaryColor: colorprimary,

    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: colorprimary, 
      elevation: 0
    ),

   //TextButton Theme
    textButtonTheme:
      TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: colorprimary
        )
      )
    );
}