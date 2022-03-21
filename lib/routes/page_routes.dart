import "package:flutter/material.dart";
import 'package:linkup/screens/home/home.dart';
import 'package:linkup/screens/signup/signup_screen.dart';

class PageRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Home screen route
      case "/home":
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const HomeScreen(),
          settings: settings,
          transitionsBuilder: (_, opacity, __, child) => FadeTransition(
            opacity: opacity,
            child: child,
          ),
        );

      // Sign up screen route
      case "/signup":
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => SignUpScreen(),
          settings: settings,
          transitionsBuilder: (_, opacity, __, child) => FadeTransition(
            opacity: opacity,
            child: child,
          ),
        );
      default:
        return null;
    }
  }
}
