import "package:flutter/material.dart";

import '../../components/job_card.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key key}) : super(key: key);

  @override
  _JobsScreenState createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          children: [
            JobCard(
              companyLogo:
                  "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-icon-png-transparent-background-osteopathy-16.png",
              companyName: "Google In.",
              description:
                  "A job description not only describes the position’s responsibilities, it sets the foundation for recruiting, developing and retaining talent and also sets the stage for optimum work performance by clarifying responsibilities, expected results, and evaluation of performance. It is also an important component to maintaining an equitable compensation system and ensuring legal compliance. The document should be revisited and updated in line with the annual performance evaluation cycle.",
              position: "Associate Software Engineer",
              postImage:
                  "https://templates.mediamodifier.com/5e9709395e1d70189ea21cd1/job-posting-linkedin-post-template.jpg",
              qualifications: "Test",
              salary: "45000",
              type: "Full Time",
              onClick: () {
                Navigator.pushNamed(context, "/applicationform");
              },
            ),
            const JobCard(
              companyLogo:
                  "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-icon-png-transparent-background-osteopathy-16.png",
              companyName: "Google In.",
              description:
                  "A job description not only describes the position’s responsibilities, it sets the foundation for recruiting, developing and retaining talent and also sets the stage for optimum work performance by clarifying responsibilities, expected results, and evaluation of performance. It is also an important component to maintaining an equitable compensation system and ensuring legal compliance. The document should be revisited and updated in line with the annual performance evaluation cycle.",
              position: "Associate Software Engineer",
              postImage:
                  "https://templates.mediamodifier.com/5e9709395e1d70189ea21cd1/job-posting-linkedin-post-template.jpg",
              qualifications: "Test",
              salary: "45000",
              type: "Full Time",
            ),
          ],
        ),
      ),
    );
  }
}
