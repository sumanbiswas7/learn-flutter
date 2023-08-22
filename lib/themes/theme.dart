import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static lightTheme() => ThemeData(
      primarySwatch: Colors.lime,
      fontFamily: GoogleFonts.roboto().fontFamily,
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
}
