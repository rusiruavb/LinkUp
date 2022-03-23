import 'dart:ui';

import "package:flutter/material.dart";
import 'package:linkup/components/rounded_text_field.dart';
import 'package:linkup/components/side_navbar.dart';

import '../../components/rounded_button.dart';
import '../../constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorDarkBackground,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0.0,
        title: const Text(
          "Login",
          style: TextStyle(
            fontFamily: "SF-Pro",
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: colorDarkBackground,
      drawer: const SideNavbar(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: orientation == Orientation.landscape
              ? size.height * 0.95
              : size.height * 0.9,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Form(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: orientation == Orientation.landscape
                            ? const EdgeInsets.only(left: 32, top: 10)
                            : const EdgeInsets.only(left: 10, top: 10),
                        child: const Text(
                          "Hello 👋🏻, login to your",
                          style: TextStyle(
                            fontFamily: fontFamilySFPro,
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: orientation == Orientation.landscape
                            ? const EdgeInsets.only(left: 32, top: 10)
                            : const EdgeInsets.only(left: 10, top: 10),
                        child: const Text(
                          "Privillage Club Account",
                          style: TextStyle(
                            fontFamily: fontFamilySFPro,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  RoundedTextField(
                    text: "Email Address",
                    type: "email",
                    onChange: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                    value: email,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  RoundedTextField(
                    text: "Password",
                    type: "password",
                    onChange: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    value: password,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: RoundedButton(
                      color: colorDarkForground,
                      fontSize: 18,
                      height: 50,
                      width: size.width * 0.4,
                      text: "Login",
                      onPressed: () {
                        print("Button clicked");
                      },
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const Divider(
                    color: colorDivider, //color of divider
                    height: 5, //height spacing of divider
                    thickness: 2, //thickness of divier line
                    indent: 25, //spacing at the start of divider
                    endIndent: 25, //spacing at the end of divider
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    width: size.width * 0.85,
                    height: size.height * 0.16,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0xFF6F95DF),
                            Color(0xFF2A3548),
                          ],
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Join the privillaged club",
                          style: TextStyle(
                            color: colorTextPrimary,
                            fontSize: 18,
                            fontFamily: fontFamilySFPro,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "CREATE ACCOUNT",
                          style: TextStyle(
                            color: colorTextPrimary,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: fontFamilySFPro,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
