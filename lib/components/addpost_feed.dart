import 'dart:html';

import "package:flutter/material.dart";
import 'package:linkup/components/image_upload.dart';
import 'package:linkup/constants.dart';
import 'package:linkup/components/rounded_text_field.dart';
import 'package:linkup/components/rounded_button.dart';

class AddPostFeed extends StatefulWidget {
  const AddPostFeed({
    Key key,
  }) : super(key: key);

  @override
  _AddPostFeedState createState() => _AddPostFeedState();
}

class _AddPostFeedState extends State<AddPostFeed> {
  String description = "";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(3.0),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.03,
                ),
                ImageUpload(
                  onFileChanged: (imageUrl) {
                    print(imageUrl);
                  },
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        filled: true,
                        hintStyle: TextStyle(color: Colors.white),
                        fillColor: Color.fromARGB(255, 59, 59, 59),
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Description'),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                RoundedButton(
                  color: colorDarkForground,
                  fontSize: 14,
                  height: 50,
                  width: size.width * 0.4,
                  text: "Post",
                  onPressed: () {
                    print("Button clicked");
                  },
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
              ],
            )),
      ],
    );
  }
}
