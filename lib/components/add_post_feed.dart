import "package:flutter/material.dart";
import 'package:linkup/components/image_upload.dart';
import 'package:linkup/components/post_image_upload.dart';
import 'package:linkup/components/rounded_textarea_field.dart';
import 'package:linkup/constants.dart';
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
        Card(
          color: colorDarkMidGround,
          child: Container(
            padding: const EdgeInsets.only(
              top: 10,
              left: 25,
              right: 25,
              bottom: 5,
            ),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, bottom: 10),
                    child: Text(
                      "Create your post",
                      style: TextStyle(
                        fontFamily: fontFamilySFPro,
                        fontSize: 20,
                        color: colorTextPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                RoundedTextArea(
                  backgroundColor: colorDarkMidGround,
                  textAreaColor: colorDarkBackground,
                  text: "Description",
                  onChange: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                PostImageUpload(
                  onFileChanged: (imageUrl) {
                    print(imageUrl);
                  },
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                RoundedButton(
                  color: colorTextPrimary,
                  textColor: colorDarkBackground,
                  fontSize: 14,
                  height: 35,
                  width: size.width * 0.85,
                  text: "Post",
                  onPressed: () {
                    print("Button clicked");
                  },
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
