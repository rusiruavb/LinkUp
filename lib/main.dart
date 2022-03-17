import "package:flutter/material.dart";
import 'package:linkup/components/rounded_button.dart';
import 'package:linkup/components/side_navbar.dart';
import 'package:linkup/constants.dart';

void main() => runApp(const LinkUpApp());

class LinkUpApp extends StatelessWidget {
  const LinkUpApp({Key key}) : super(key: key);

  void _testFunc() {
    print("This is function");
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: const SideNavbar(),
          appBar: AppBar(
            title: const Text(
              "LinkUp",
              style: TextStyle(
                fontFamily: "SF-Pro",
              ),
            ),
          ),
          body: Center(
            child: RoundedButton(
              width: 130,
              height: 50,
              color: colorPrimary,
              fontSize: 15,
              text: "Test Button",
              onPressed: () {
                print("Button Clicked");
              },
              textColor: colorSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
