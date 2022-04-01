import "package:flutter/material.dart";
import 'package:linkup/components/rounded_button.dart';
import 'package:linkup/components/rounded_text_field.dart';
import 'package:linkup/components/rounded_textarea_field.dart';

import '../../constants.dart';

class AddExperienceScreen extends StatefulWidget {
  const AddExperienceScreen({Key key}) : super(key: key);

  @override
  _AddExperienceScreenState createState() => _AddExperienceScreenState();
}

class _AddExperienceScreenState extends State<AddExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add experience",
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
                ? size.height * 1.15
                : size.height * 0.8,
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
                      text: "Title*",
                      onChange: (value) {
                        print(value);
                      },
                      isRequired: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RoundedTextField(
                      text: "Company name*",
                      onChange: (value) {
                        print(value);
                      },
                      isRequired: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RoundedTextArea(
                      text: "Description",
                      onChange: (value) {
                        print(value);
                      },
                      type: "multiline",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: RoundedButton(
                        color: colorDarkForground,
                        text: "Save",
                        width: size.width * 0.9,
                        height: 40,
                      ),
                    )
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
