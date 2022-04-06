import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';
import 'package:linkup/components/rounded_text_field.dart';
import 'package:linkup/components/side_navbar.dart';
import 'package:linkup/providers/user_provider.dart';

import '../../components/rounded_button.dart';
import '../../constants.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  UserProvider userProvider;

  @override
  void initState() {
    super.initState();
    userProvider = context.read<UserProvider>();
  }

  void login() {
    if (userProvider.logUser.email != '' &&
        userProvider.logUser.password != '') {
      userProvider.login(context);
    } else {
      Fluttertoast.showToast(
        msg: 'Inputs are required',
        backgroundColor: colorWarningLight,
        textColor: colorDarkBackground,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: colorDarkBackground,
      //   iconTheme: const IconThemeData(color: Colors.white),
      //   elevation: 0.0,
      //   title: const Text(
      //     "Login",
      //     style: TextStyle(
      //       fontFamily: "SF-Pro",
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      backgroundColor: colorDarkBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: SizedBox(
            width: size.width,
            height: orientation == Orientation.landscape
                ? size.height * 0.95
                : size.height * 0.6,
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
                            "Privileged Club Account",
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
                          userProvider.logUser.email = value;
                        });
                      },
                      value: userProvider.logUser.email,
                      isRequired: true,
                      backgroundColor: colorDarkBackground,
                      textAreaColor: colorDarkMidGround,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedTextField(
                      text: "Password",
                      type: "password",
                      onChange: (value) {
                        setState(() {
                          userProvider.logUser.password = value;
                        });
                      },
                      value: userProvider.logUser.password,
                      isRequired: true,
                      backgroundColor: colorDarkBackground,
                      textAreaColor: colorDarkMidGround,
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
                        color: colorTextPrimary,
                        textColor: colorDarkBackground,
                        fontSize: 18,
                        height: 50,
                        width: size.width * 0.4,
                        text: "Login",
                        onPressed: () {
                          login();
                        },
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
