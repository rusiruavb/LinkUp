import "package:flutter/material.dart";
import 'package:linkup/components/rounded_button.dart';
import 'package:linkup/components/rounded_text_field.dart';
import 'package:linkup/constants.dart';

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
                      backgroundColor: colorDarkBackground,
                      textAreaColor: colorDarkMidGround,
                      value: applicantName,
                      isRequired: true,
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
                      backgroundColor: colorDarkBackground,
                      textAreaColor: colorDarkMidGround,
                      value: nic,
                      isRequired: true,
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
                      backgroundColor: colorDarkBackground,
                      textAreaColor: colorDarkMidGround,
                      value: contactNumber,
                      isRequired: true,
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
                      backgroundColor: colorDarkBackground,
                      textAreaColor: colorDarkMidGround,
                      value: university,
                      isRequired: true,
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
                      backgroundColor: colorDarkBackground,
                      textAreaColor: colorDarkMidGround,
                      value: skills,
                      isRequired: true,
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
                      backgroundColor: colorDarkBackground,
                      textAreaColor: colorDarkMidGround,
                      value: languages,
                      isRequired: true,
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
                      backgroundColor: colorDarkBackground,
                      textAreaColor: colorDarkMidGround,
                      value: linkedIn,
                      isRequired: true,
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
                      backgroundColor: colorDarkBackground,
                      textAreaColor: colorDarkMidGround,
                      value: github,
                      isRequired: true,
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
                        color: colorTextPrimary,
                        fontSize: 16,
                        height: 45,
                        width: size.width * 0.89,
                        text: "Apply",
                        textColor: colorDarkBackground,
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
