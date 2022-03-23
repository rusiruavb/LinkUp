import "package:flutter/material.dart";
import 'package:linkup/components/rounded_button.dart';
import 'package:linkup/components/rounded_number_field.dart';
import 'package:linkup/components/rounded_text_field.dart';
import 'package:linkup/components/side_navbar.dart';
import 'package:linkup/constants.dart';
import '../../components/user-profile-image/user_image_upload.dart';

class OpenToWorkFormScreen extends StatefulWidget {
  const OpenToWorkFormScreen({Key key}) : super(key: key);

  @override
  _OpenToWorkFormScreenState createState() => _OpenToWorkFormScreenState();
}

class _OpenToWorkFormScreenState extends State<OpenToWorkFormScreen> {
  String applicantName = "";
  String applyingPosition = "";
  String description = "";

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
                    text: "applyingPosition",
                    onChange: (value) {
                      setState(() {
                        applyingPosition = value;
                      });
                    },
                    value: applyingPosition,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  RoundedTextField(
                    text: "description",
                    onChange: (value) {
                      setState(() {
                        description = value;
                      });
                    },
                    value: description,
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
