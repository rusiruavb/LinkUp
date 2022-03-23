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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorDarkBackground,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0.0,
        title: const Text(
          "Application Form",
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
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          "Fill your application today",
                          style: TextStyle(
                            fontFamily: fontFamilySFPro,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
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
                      text: "Sumbit",
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
