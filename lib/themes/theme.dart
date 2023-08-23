import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static lightTheme() => ThemeData(
      primarySwatch: Colors.lime,
      fontFamily: GoogleFonts.roboto().fontFamily,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0.0,
        backgroundColor: Colors.lime,
        selectedItemColor: Colors.black,
      ),
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.lime,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            fontSize: 17,
          )));

  static darkTheme() => ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      );
  static materialLightTheme() => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lime),
        fontFamily: GoogleFonts.roboto().fontFamily,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
      );
}
