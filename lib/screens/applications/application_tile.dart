import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkup/constants.dart';

class ApplicationTile extends StatelessWidget {
  final int index;
  final int iterateIndex;
  final bool isExpanded;
  final String title;
  final String subTitle;
  final Function(bool) onExpansionChanged;

  const ApplicationTile({
    Key key,
    this.index,
    this.iterateIndex,
    this.isExpanded,
    this.title,
    this.subTitle,
    this.onExpansionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: false,
      collapsedBackgroundColor: colorDarkMidGround,
      backgroundColor: colorDarkMidGround,
      leading: const Icon(
        FontAwesomeIcons.fileText,
        color: colorTextPrimary,
        size: 32,
      ),
      title: const Text(
        "Associate Software Engineer",
        style: TextStyle(
          fontSize: 18,
          fontFamily: fontFamilySFPro,
          color: colorTextPrimary,
        ),
      ),
      subtitle: const Text(
        "15/03/2022 1.30 PM",
        style: TextStyle(
          fontFamily: fontFamilySFPro,
          color: colorTextPrimary,
        ),
      ),
      trailing: Icon(
        index == iterateIndex && isExpanded
            ? Icons.arrow_circle_up
            : Icons.arrow_circle_down,
        color: colorTextPrimary,
        size: 30,
      ),
      onExpansionChanged: onExpansionChanged,
      children: const <Widget>[
        ApplicationCard(
          companyName: "Redot Global",
          applicantName: "Rusiru Abhisheak",
          contactNumber: "0776621325",
          gitHub: "https://github.com/rusiruavb",
          linkedIn: "https://linkedin.com/rusiru-abhisheak",
          nic: "982252565V",
          university: "SLIIT",
          status: "Pending",
        )
      ],
    );
  }
}

class ApplicationCard extends StatelessWidget {
  final String companyName;
  final String applicantName;
  final String dateTime;
  final String nic;
  final String contactNumber;
  final String linkedIn;
  final String gitHub;
  final String status;
  final String university;
  final List<String> skills;

  const ApplicationCard({
    Key key,
    this.companyName,
    this.applicantName,
    this.dateTime,
    this.nic,
    this.contactNumber,
    this.linkedIn,
    this.gitHub,
    this.status,
    this.university,
    this.skills,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: colorDarkMidGround,
      child: SizedBox(
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.building,
                      size: 16,
                      color: colorTextDisabled,
                    ),
                    const Text(
                      " Company: ",
                      style: TextStyle(
                        fontFamily: fontFamilySFPro,
                        color: colorTextPrimary,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        companyName,
                        style: const TextStyle(
                          fontFamily: fontFamilySFPro,
                          fontSize: 16,
                          color: colorTextPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 16,
                      color: colorTextDisabled,
                    ),
                    const Text(
                      " Applicant name: ",
                      style: TextStyle(
                        fontFamily: fontFamilySFPro,
                        color: colorTextPrimary,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        applicantName,
                        style: const TextStyle(
                          fontFamily: fontFamilySFPro,
                          fontSize: 16,
                          color: colorTextPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.school,
                      size: 13,
                      color: colorTextDisabled,
                    ),
                    const Text(
                      "  University: ",
                      style: TextStyle(
                        fontFamily: fontFamilySFPro,
                        color: colorTextPrimary,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        university,
                        style: const TextStyle(
                          fontFamily: fontFamilySFPro,
                          fontSize: 16,
                          color: colorTextPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.idCard,
                      size: 13,
                      color: colorTextDisabled,
                    ),
                    const Text(
                      "  NIC: ",
                      style: TextStyle(
                        fontFamily: fontFamilySFPro,
                        color: colorTextPrimary,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        university,
                        style: const TextStyle(
                          fontFamily: fontFamilySFPro,
                          fontSize: 16,
                          color: colorTextPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      size: 14,
                      color: colorTextDisabled,
                    ),
                    const Text(
                      "  Contact No: ",
                      style: TextStyle(
                        fontFamily: fontFamilySFPro,
                        color: colorTextPrimary,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        contactNumber,
                        style: const TextStyle(
                          fontFamily: fontFamilySFPro,
                          fontSize: 16,
                          color: colorTextPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      FontAwesomeIcons.linkedin,
                      size: 14,
                      color: colorTextDisabled,
                    ),
                    const Text(
                      " LinkedIn: ",
                      style: TextStyle(
                        fontFamily: fontFamilySFPro,
                        color: colorTextPrimary,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        linkedIn,
                        style: const TextStyle(
                          fontFamily: fontFamilySFPro,
                          fontSize: 16,
                          color: colorPrimaryLight,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      FontAwesomeIcons.github,
                      size: 14,
                      color: colorTextDisabled,
                    ),
                    const Text(
                      " GitHub: ",
                      style: TextStyle(
                        fontFamily: fontFamilySFPro,
                        color: colorTextPrimary,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        gitHub,
                        style: const TextStyle(
                          fontFamily: fontFamilySFPro,
                          fontSize: 16,
                          color: colorPrimaryLight,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      FontAwesomeIcons.check,
                      size: 14,
                      color: colorTextDisabled,
                    ),
                    const Text(
                      " Status: ",
                      style: TextStyle(
                        fontFamily: fontFamilySFPro,
                        color: colorTextPrimary,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        status,
                        style: TextStyle(
                          fontFamily: fontFamilySFPro,
                          fontSize: 16,
                          color: status == "Pending"
                              ? colorWarningLight
                              : status == "Rejected"
                                  ? colorErrorLight
                                  : status == "Selected"
                                      ? colorSuccessLight
                                      : colorPrimaryLight,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
