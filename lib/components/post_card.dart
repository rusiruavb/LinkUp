import "package:flutter/material.dart";
import 'package:linkup/components/rounded_button.dart';
import 'package:linkup/constants.dart';

class PostCard extends StatelessWidget {
  final String fullName;
  final String position;
  final String profileImageURL;
  final String postImage;
  final String description;

  const PostCard({
    Key key,
    this.fullName,
    this.position,
    this.profileImageURL,
    this.postImage,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: orientation == Orientation.landscape
              ? size.width * 0.75
              : size.width,
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Card(
            color: colorDarkMidGround,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    // Header section
                    children: [
                      Image.network(
                        profileImageURL,
                        scale: 23,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              fullName,
                              style: const TextStyle(
                                fontFamily: fontFamilySFPro,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              position,
                              style: const TextStyle(
                                fontFamily: fontFamilySFPro,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                if (postImage != null) Image.network(postImage),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 5,
                    right: 10,
                  ),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontFamily: fontFamilySFPro,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
