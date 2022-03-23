import "package:flutter/material.dart";
import 'package:linkup/constants.dart';

class ExperienceCard extends StatelessWidget {
  final String companyLogo;
  final String position;
  final String companyName;
  final String description;

  const ExperienceCard({
    Key key,
    this.companyLogo,
    this.companyName,
    this.position,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Container(
      width: size.width,
      padding: const EdgeInsets.only(top: 15, left: 5),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                companyLogo,
                scale: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      position,
                      style: const TextStyle(
                        fontFamily: fontFamilySFPro,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: colorTextPrimary,
                      ),
                    ),
                    Text(
                      companyName,
                      style: const TextStyle(
                        fontFamily: fontFamilySFPro,
                        fontSize: 16,
                        color: colorTextPrimary,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              if (description != null)
                Container(
                  padding: const EdgeInsets.only(left: 48, top: 8),
                  width: orientation == Orientation.landscape
                      ? size.width * 0.65
                      : size.width * 0.85,
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontFamily: fontFamilySFPro,
                      fontSize: 13,
                      color: colorTextPrimary,
                    ),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
