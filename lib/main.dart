import "package:flutter/material.dart";
import 'package:linkup/screens/home/home.dart';
import 'package:linkup/screens/welcome/welcome_screen.dart';

void main() => runApp(const LinkUpApp());

class LinkUpApp extends StatelessWidget {
  const LinkUpApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(
          duration: 4,
          navigationPage: HomeScreen(),
        ),
      ),
    );
  }
}
