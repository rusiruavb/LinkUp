import "package:flutter/material.dart";
import 'package:linkup/constants.dart';

class OpenToWork extends StatelessWidget {
  final String applicantName;
  final String profileImageURL;
  final String applyingPosition;
  final String description;

  const OpenToWork({
    Key key,
    this.applicantName,
    this.profileImageURL,
    this.applyingPosition,
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
                      ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            profileImageURL,
                            scale: 10,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              applicantName,
                              style: const TextStyle(
                                fontFamily: fontFamilySFPro,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              applyingPosition,
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
