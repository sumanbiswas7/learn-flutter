import 'package:coolapp/routes/app_routes.dart';
import 'package:coolapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // Set the status bar color to blue
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.lime,
  ));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: AppThemes.lightTheme(),
      darkTheme: AppThemes.darkTheme(),
      initialRoute: AppRoutes.homeRoute,
      routes: AppRoutes.getRoutes(),
    );
  }
}
