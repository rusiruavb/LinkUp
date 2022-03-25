import "package:flutter/material.dart";
import 'package:linkup/components/bottom_navbar.dart';
import 'package:linkup/components/side_navbar.dart';
import 'package:linkup/components/post_card.dart';
import 'package:linkup/constants.dart';

class NewsFeedScreen extends StatefulWidget {
  const NewsFeedScreen({Key key}) : super(key: key);

  @override
  NewsFeedScreenState createState() => NewsFeedScreenState();
}

class NewsFeedScreenState extends State<NewsFeedScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colorDarkBackground,
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              PostCard(
                  postImage:
                      "https://templates.mediamodifier.com/5e9709395e1d70189ea21cd1/job-posting-linkedin-post-template.jpg",
                  description:
                      "A job description not only describes the position’s responsibilities, it sets the foundation for recruiting, developing and retaining talent and also sets the stage for optimum work performance by clarifying responsibilities, expected results, and evaluation of performance. It is also an important component to maintaining an equitable compensation system and ensuring legal compliance. The document should be revisited and updated in line with the annual performance evaluation cycle.",
                  position: "Associate Software Engineer",
                  fullName: "Rusiru Bandara",
                  profileImageURL:
                      "https://monteluke.com.au/wp-content/gallery/linkedin-profile-pictures/34217-MLS-Fabian-Ekker-003flin.jpg"),
              PostCard(
                  postImage:
                      "https://templates.mediamodifier.com/5e9709395e1d70189ea21cd1/job-posting-linkedin-post-template.jpg",
                  description:
                      "A job description not only describes the position’s responsibilities, it sets the foundation for recruiting, developing and retaining talent and also sets the stage for optimum work performance by clarifying responsibilities, expected results, and evaluation of performance. It is also an important component to maintaining an equitable compensation system and ensuring legal compliance. The document should be revisited and updated in line with the annual performance evaluation cycle.",
                  position: "Associate Software Engineer",
                  fullName: "Rusiru Bandara",
                  profileImageURL:
                      "https://monteluke.com.au/wp-content/gallery/linkedin-profile-pictures/34217-MLS-Fabian-Ekker-003flin.jpg"),
              PostCard(
                  postImage:
                      "https://templates.mediamodifier.com/5e9709395e1d70189ea21cd1/job-posting-linkedin-post-template.jpg",
                  description:
                      "A job description not only describes the position’s responsibilities, it sets the foundation for recruiting, developing and retaining talent and also sets the stage for optimum work performance by clarifying responsibilities, expected results, and evaluation of performance. It is also an important component to maintaining an equitable compensation system and ensuring legal compliance. The document should be revisited and updated in line with the annual performance evaluation cycle.",
                  position: "Associate Software Engineer",
                  fullName: "Rusiru Bandara",
                  profileImageURL:
                      "https://monteluke.com.au/wp-content/gallery/linkedin-profile-pictures/34217-MLS-Fabian-Ekker-003flin.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
