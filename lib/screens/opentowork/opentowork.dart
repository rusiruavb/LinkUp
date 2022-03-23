import "package:flutter/material.dart";
import 'package:linkup/components/bottom_navbar.dart';
import 'package:linkup/components/opentowork_card.dart';
import 'package:linkup/components/side_navbar.dart';
import 'package:linkup/constants.dart';

class OpenToWorkScreen extends StatefulWidget {
  const OpenToWorkScreen({Key key}) : super(key: key);

  @override
  _OpenToWorkScreenState createState() => _OpenToWorkScreenState();
}

class _OpenToWorkScreenState extends State<OpenToWorkScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LinkUp",
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
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              OpenToWork(
                profileImageURL:
                    "https://monteluke.com.au/wp-content/gallery/linkedin-profile-pictures/34217-MLS-Fabian-Ekker-003flin.jpg",
                applicantName: "Lasal Hettiarchchi.",
                description:
                    "A job description not only describes the position’s responsibilities, it sets the foundation for recruiting, developing and retaining talent and also sets the stage for optimum work performance by clarifying responsibilities, expected results, and evaluation of performance. It is also an important component to maintaining an equitable compensation system and ensuring legal compliance. The document should be revisited and updated in line with the annual performance evaluation cycle.",
                applyingPosition: "Associate Software Engineer",
              ),
              OpenToWork(
                profileImageURL:
                    "https://monteluke.com.au/wp-content/gallery/linkedin-profile-pictures/34217-MLS-Fabian-Ekker-003flin.jpg",
                applicantName: "Rusiru Abisheak.",
                description:
                    "A job description not only describes the position’s responsibilities, it sets the foundation for recruiting, developing and retaining talent and also sets the stage for optimum work performance by clarifying responsibilities, expected results, and evaluation of performance. It is also an important component to maintaining an equitable compensation system and ensuring legal compliance. The document should be revisited and updated in line with the annual performance evaluation cycle.",
                applyingPosition: "Associate Software Engineer",
              ),
              OpenToWork(
                profileImageURL:
                    "https://monteluke.com.au/wp-content/gallery/linkedin-profile-pictures/34217-MLS-Fabian-Ekker-003flin.jpg",
                applicantName: "Senura Jayadeva.",
                description:
                    "A job description not only describes the position’s responsibilities, it sets the foundation for recruiting, developing and retaining talent and also sets the stage for optimum work performance by clarifying responsibilities, expected results, and evaluation of performance. It is also an important component to maintaining an equitable compensation system and ensuring legal compliance. The document should be revisited and updated in line with the annual performance evaluation cycle.",
                applyingPosition: "Intern Software Engineer",
              ),
              OpenToWork(
                profileImageURL:
                    "https://monteluke.com.au/wp-content/gallery/linkedin-profile-pictures/34217-MLS-Fabian-Ekker-003flin.jpg",
                applicantName: "Dilmi Palliyaguru.",
                description:
                    "A job description not only describes the position’s responsibilities, it sets the foundation for recruiting, developing and retaining talent and also sets the stage for optimum work performance by clarifying responsibilities, expected results, and evaluation of performance. It is also an important component to maintaining an equitable compensation system and ensuring legal compliance. The document should be revisited and updated in line with the annual performance evaluation cycle.",
                applyingPosition: "Associate Devops Engineer",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
