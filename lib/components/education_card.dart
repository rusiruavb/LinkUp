import "package:flutter/material.dart";
import 'package:linkup/constants.dart';

class EducationCard extends StatelessWidget {
  final String educationLogo;
  final String period;
  final String schoolName;
  final String course;

  const EducationCard({
    Key key,
    this.educationLogo,
    this.schoolName,
    this.period,
    this.course,
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
                educationLogo,
                scale: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course,
                      style: const TextStyle(
                        fontFamily: fontFamilySFPro,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: colorTextPrimary,
                      ),
                    ),
                    Text(
                      schoolName,
                      style: const TextStyle(
                        fontFamily: fontFamilySFPro,
                        fontSize: 18,
                        color: colorTextPrimary,
                      ),
                    ),
                    Text(
                      period,
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
              Text(
                period,
                style: const TextStyle(
                  fontFamily: fontFamilySFPro,
                  fontSize: 13,
                  color: colorTextPrimary,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
