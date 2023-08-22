import 'package:coolapp/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // Set the status bar color to blue
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.blue,
  ));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: GoogleFonts.roboto().fontFamily,
          primaryColor: Colors.lightGreen,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.brown,
          )),
      initialRoute: AppRoutes.homeRoute,
      routes: AppRoutes.getRoutes(),
    );
  }
}
