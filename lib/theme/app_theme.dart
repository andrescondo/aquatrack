// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF007BFF);
  static const Color secundary = Color(0xFF28A745);
  static const Color grey = Color(0xFFF1F3F5);
  static const Color white = Color(0xFFFFFFFF);
  static const Color orange = Color(0xFFFD7E14);
  static const Color blacktransparent = Color.fromARGB(39, 72, 88, 165);
  static const Color bluetransparent = Color.fromARGB(18, 0, 123, 255);
  static const Color ligthgray = Color.fromARGB(255, 213, 213, 213);
  static const Color darkgray = Color.fromARGB(255, 95, 95, 95);
  static const Color blueligth = Color.fromARGB(41, 0, 123, 255);
  // Estilo para TextButto

  static final ThemeData lightTheme = ThemeData.light().copyWith(

      // Color primario
      primaryColor: const Color(0xFF007BFF),

      // AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      // TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        primary: primary,
      )),

      // FloatingActionButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),

      // ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo, shape: const StadiumBorder(), elevation: 0),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

      // Color primario
      primaryColor: Colors.indigo,

      // AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
