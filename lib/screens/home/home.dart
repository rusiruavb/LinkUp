import "package:flutter/material.dart";
import 'package:linkup/components/bottom_navbar.dart';
import 'package:linkup/components/side_navbar.dart';
import 'package:linkup/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LinkUp",
          style: TextStyle(
            fontFamily: "SF-Pro",
          ),
        ),
        backgroundColor: colorPrimaryDark,
        elevation: 0.0,
      ),
      drawer: const SideNavbar(),
      bottomNavigationBar: const BottomNavbar(),
      body: const Text("Home Screen"),
    );
  }
}
