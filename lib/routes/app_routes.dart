import 'package:coolapp/screens/home_screen.dart';
import 'package:coolapp/screens/login_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static String homeRoute = "/";
  static String loginRoute = "/login";
  static String signupRoute = "/login";

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      homeRoute: (context) => const HomeScreen(),
      loginRoute: (context) => const LoginScreen(),
      signupRoute: (context) => const LoginScreen(),
    };
  }
}
