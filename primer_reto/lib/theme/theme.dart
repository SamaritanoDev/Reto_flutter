import 'package:flutter/material.dart';

//variables
const TextAlign textcenter = TextAlign.center;
const Color colorprimary = Color(0xff015231);
const Color colorBoton = Color(0xffE5E2E3);
const TextStyle letra = TextStyle(fontFamily: 'Montserrat');
const Color colorsecondary = Color(0xffCAA071);

//clase tema
class AppTheme {

  static final ThemeData lightTheme = ThemeData(
      //Color primario
      primaryColor: colorprimary,

      //AppBar Theme
      appBarTheme: const AppBarTheme(color: colorprimary, elevation: 0),

      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: colorprimary)));
}
