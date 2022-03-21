import "package:flutter/material.dart";
import 'package:linkup/routes/page_routes.dart';
import 'package:linkup/screens/home/home.dart';
import 'package:linkup/screens/welcome/welcome_screen.dart';

void main() => runApp(const LinkUpApp());

class LinkUpApp extends StatelessWidget {
  const LinkUpApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(
        duration: 3,
        navigationPage: HomeScreen(),
      ),
      onGenerateRoute: PageRoutes.generateRoute,
    );
  }
}
