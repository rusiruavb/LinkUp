import "package:flutter/material.dart";
import 'package:linkup/components/rounded_button.dart';
import 'package:linkup/components/rounded_number_field.dart';
import 'package:linkup/components/rounded_text_field.dart';
import 'package:linkup/components/side_navbar.dart';
import 'package:linkup/constants.dart';

import '../../components/user_image_upload.dart';

class ApplicationFormScreen extends StatefulWidget {
  const ApplicationFormScreen({Key key}) : super(key: key);

  @override
  _ApplicationFormScreenState createState() => _ApplicationFormScreenState();
}

class _ApplicationFormScreenState extends State<ApplicationFormScreen> {
  String applicantName = "";
  String nic = "";
  String contactNumber = "";
  String university = "";
  String skills = "";
  String languages = "";
  String linkedIn = "";
  String github = "";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Job Application",
          style: TextStyle(fontFamily: fontFamilySFPro),
        ),
        backgroundColor: colorDarkMidGround,
        elevation: 0.0,
      ),
      backgroundColor: colorDarkBackground,
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: orientation == Orientation.landscape
                ? size.width * 0.8
                : size.width,
            height: orientation == Orientation.landscape
                ? size.height * 2
                : size.height * 1.15,
            padding: const EdgeInsets.all(0.0),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Form(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    RoundedTextField(
                      text: "Applicant Name",
                      onChange: (value) {
                        setState(() {
                          applicantName = value;
                        });
                      },
                      value: applicantName,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedTextField(
                      text: "NIC",
                      onChange: (value) {
                        setState(() {
                          nic = value;
                        });
                      },
                      value: nic,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedTextField(
                      text: "Contact Number",
                      type: "phone",
                      onChange: (value) {
                        setState(() {
                          contactNumber = value;
                        });
                      },
                      value: contactNumber,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedTextField(
                      text: "University",
                      onChange: (value) {
                        setState(() {
                          university = value;
                        });
                      },
                      value: university,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedTextField(
                      text: "Skills",
                      onChange: (value) {
                        setState(() {
                          skills = value;
                        });
                      },
                      value: skills,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedTextField(
                      text: "Languages",
                      onChange: (value) {
                        setState(() {
                          languages = value;
                        });
                      },
                      value: languages,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedTextField(
                      text: "LinkedIn",
                      onChange: (value) {
                        setState(() {
                          linkedIn = value;
                        });
                      },
                      value: linkedIn,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedTextField(
                      text: "Github",
                      onChange: (value) {
                        setState(() {
                          github = value;
                        });
                      },
                      value: github,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    MediaQuery.of(context).orientation == Orientation.landscape
                        ? SizedBox(
                            height: size.height * 0.06,
                          )
                        : SizedBox(
                            height: size.height * 0.01,
                          ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      child: RoundedButton(
                        color: colorDarkForground,
                        fontSize: 14,
                        height: 45,
                        width: 100,
                        text: "Apply",
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
      ),
    );
  }
}
