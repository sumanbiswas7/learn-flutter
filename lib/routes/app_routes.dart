import 'package:coolapp/screens/home_screen.dart';
import 'package:coolapp/screens/login_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      "/": (context) => const HomeScreen(),
      "/login": (context) => const LoginScreen(),
      "/signup": (context) => const LoginScreen(),
    };
  }
}
