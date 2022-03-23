import "package:flutter/material.dart";
import 'package:linkup/screens/applicationform/applicationform_screen.dart';
import 'package:linkup/screens/home/home.dart';
import 'package:linkup/screens/login/login_screen.dart';
import 'package:linkup/screens/opentowork/opentowork.dart';
import 'package:linkup/screens/profile/profile_screen.dart';
import 'package:linkup/screens/signup/signup_screen.dart';
import 'package:linkup/screens/news_feed/news_feed_screen.dart';

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

      case "/opentowork":
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const OpenToWorkScreen(),
          settings: settings,
          transitionsBuilder: (_, opacity, __, child) => FadeTransition(
            opacity: opacity,
            child: child,
          ),
        );

      // Sign up screen route
      case "/applicationform":
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const ApplicationFormScreen(),
          settings: settings,
          transitionsBuilder: (_, opacity, __, child) => FadeTransition(
            opacity: opacity,
            child: child,
          ),
        );

      case "/opentoworkform":
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const ApplicationFormScreen(),
          settings: settings,
          transitionsBuilder: (_, opacity, __, child) => FadeTransition(
            opacity: opacity,
            child: child,
          ),
        );

      // Sign up screen route
      case "/signup":
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const SignUpScreen(),
          settings: settings,
          transitionsBuilder: (_, opacity, __, child) => FadeTransition(
            opacity: opacity,
            child: child,
          ),
        );

      // Login screen route
      case "/login":
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => LoginScreen(),
          settings: settings,
          transitionsBuilder: (_, opacity, __, child) => FadeTransition(
            opacity: opacity,
            child: child,
          ),
        );

      // Profile screen route
      case "/profile":
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const ProfileScreen(),
          settings: settings,
          transitionsBuilder: (_, opacity, __, child) => FadeTransition(
            opacity: opacity,
            child: child,
          ),
        );
      case "/feed":
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const NewsFeedScreen(),
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
