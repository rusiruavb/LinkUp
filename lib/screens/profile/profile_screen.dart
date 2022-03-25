import "package:flutter/material.dart";
import 'package:linkup/components/bottom_navbar.dart';
import 'package:linkup/components/education_card.dart';
import 'package:linkup/components/experience_card.dart';
import 'package:linkup/components/side_navbar.dart';
import 'package:linkup/components/skills_card.dart';
import 'package:linkup/components/user_image_upload.dart';
import 'package:linkup/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            fontFamily: "SF-Pro",
          ),
        ),
        backgroundColor: colorDarkMidGround,
        elevation: 0.0,
      ),
      backgroundColor: colorDarkBackground,
      drawer: const SideNavbar(),
      bottomNavigationBar: const BottomNavbar(),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _ProfileHeaderCard(),
              _ExperienceSection(),
              _EducationSection(),
              _SkillsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileHeaderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Container(
      width:
          orientation == Orientation.landscape ? size.width * 0.75 : size.width,
      padding: const EdgeInsets.only(top: 5),
      child: Card(
        color: colorDarkMidGround,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: UserImageUpload(
                imageURL:
                    "https://firebasestorage.googleapis.com/v0/b/linkup-31422.appspot.com/o/images%2F2022-03-22T15%3A35%3A58.162724image_cropper_1647943553952.jpg?alt=media&token=e297b221-aa54-4e86-94c3-f805f221ed0e",
                onFileChanged: ((imageURL) {
                  print(imageURL);
                }),
              ),
            ),
            const Text(
              "Lasal Sandepa Hettiarachchi",
              style: TextStyle(
                fontFamily: fontFamilySFPro,
                fontSize: 24,
                color: colorTextPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Mountain view, Califonia",
              style: TextStyle(
                fontFamily: fontFamilySFPro,
                fontSize: 16,
                color: colorTextPrimary,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  FontAwesomeIcons.facebook,
                  color: colorTextPrimary,
                  size: 30,
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(
                  FontAwesomeIcons.linkedin,
                  color: colorTextPrimary,
                  size: 30,
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(
                  FontAwesomeIcons.instagram,
                  color: colorTextPrimary,
                  size: 30,
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(
                  FontAwesomeIcons.github,
                  color: colorTextPrimary,
                  size: 30,
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(right: 10, bottom: 5),
                child: Text(
                  "Edit",
                  style: TextStyle(
                    fontFamily: fontFamilySFPro,
                    fontSize: 16,
                    color: colorPrimaryLight,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}

class _ExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Container(
      width:
          orientation == Orientation.landscape ? size.width * 0.75 : size.width,
      padding: const EdgeInsets.only(top: 0),
      child: Card(
        color: colorDarkMidGround,
        child: Padding(
          padding: const EdgeInsets.only(top: 8, right: 8, left: 8, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Experience",
                    style: TextStyle(
                      fontFamily: fontFamilySFPro,
                      fontSize: 18,
                      color: colorTextPrimary,
                    ),
                  ),
                  Icon(
                    Icons.add,
                    color: colorTextPrimary,
                  ),
                ],
              ),
              for (var i = 0; i < 2; i++)
                const ExperienceCard(
                  companyLogo:
                      "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-icon-png-transparent-background-osteopathy-16.png",
                  companyName: "Google",
                  position: "Software Engineer",
                  description:
                      "As an associate software engineer, your job duties include coding software, coordinating with hardware engineers to ensure that different types of technology can run the software, and helping the QA team to test software before release.",
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Container(
      width:
          orientation == Orientation.landscape ? size.width * 0.75 : size.width,
      padding: const EdgeInsets.only(top: 0),
      child: Card(
        color: colorDarkMidGround,
        child: Padding(
          padding: const EdgeInsets.only(top: 8, right: 8, left: 8, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Education",
                    style: TextStyle(
                      fontFamily: fontFamilySFPro,
                      fontSize: 18,
                      color: colorTextPrimary,
                    ),
                  ),
                  Icon(
                    Icons.add,
                    color: colorTextPrimary,
                  ),
                ],
              ),
              for (var i = 0; i < 2; i++)
                const EducationCard(
                  schoolName: "SLIIT",
                  course: "B.Sc (Hons) Software Engineering",
                  period: "2019 - 2023",
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Container(
      width:
          orientation == Orientation.landscape ? size.width * 0.75 : size.width,
      padding: const EdgeInsets.only(top: 0, bottom: 5),
      child: Card(
        color: colorDarkMidGround,
        child: Padding(
          padding: const EdgeInsets.only(top: 8, right: 8, left: 8, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Skills",
                    style: TextStyle(
                      fontFamily: fontFamilySFPro,
                      fontSize: 18,
                      color: colorTextPrimary,
                    ),
                  ),
                  Icon(
                    Icons.add,
                    color: colorTextPrimary,
                  ),
                ],
              ),
              for (var i = 0; i < 2; i++)
                const SkillCard(
                  skill: "Public Speaking",
                ),
            ],
          ),
        ),
      ),
    );
  }
}
