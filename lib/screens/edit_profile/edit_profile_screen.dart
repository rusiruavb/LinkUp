import "package:flutter/material.dart";
import 'package:linkup/components/rounded_button.dart';
import 'package:linkup/components/rounded_number_field.dart';
import 'package:linkup/components/rounded_text_field.dart';
import 'package:linkup/components/side_navbar.dart';
import 'package:linkup/constants.dart';

import '../../components/user_image_upload.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String firstName = "";
  String lastName = "";
  String email = "";
  String phoneNumber = "";
  String password = "";
  String conformPassword = "";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorDarkBackground,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0.0,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            fontFamily: "SF-Pro",
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: colorDarkBackground,
      drawer: const SideNavbar(),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: MediaQuery.of(context).orientation == Orientation.landscape
              ? size.height * 2.15
              : size.height * 1.2,
          padding: const EdgeInsets.all(0.0),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Form(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  RoundedTextField(
                    text: "First Name",
                    onChange: (value) {
                      setState(() {
                        firstName = value;
                      });
                    },
                    value: firstName,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  RoundedTextField(
                    text: "Last Name",
                    onChange: (value) {
                      setState(() {
                        lastName = value;
                      });
                    },
                    value: lastName,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
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
                  RoundedNumberField(
                    text: "Phone Number",
                    type: "phone",
                    onChange: (value) {
                      setState(() {
                        phoneNumber = value;
                      });
                    },
                    value: phoneNumber,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  RoundedTextField(
                    text: "New Password",
                    onChange: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    type: "password",
                    value: password,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  RoundedTextField(
                    text: "Conform New Password",
                    onChange: (value) {
                      setState(() {
                        conformPassword = value;
                      });
                    },
                    type: "password",
                    value: conformPassword,
                  ),
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? SizedBox(
                          height: size.height * 0.06,
                        )
                      : SizedBox(
                          height: size.height * 0.03,
                        ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: RoundedButton(
                      color: colorDarkForground,
                      fontSize: 14,
                      height: 50,
                      width: size.width * 0.4,
                      text: "Edit",
                      onPressed: () {
                        print("Button clicked");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
