import 'package:flutter/material.dart';

import '../../components/bottom_navbar.dart';
import '../../components/side_navbar.dart';
import '../../constants.dart';
import 'bookmark_job_body_card.dart';
import 'bookmark_job_header_card.dart';

// stores ExpansionPanel state information
class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class BookMarkedJobsScreen extends StatefulWidget {
  const BookMarkedJobsScreen({Key key}) : super(key: key);

  @override
  State<BookMarkedJobsScreen> createState() => _BookMarkedJobsScreenState();
}

class _BookMarkedJobsScreenState extends State<BookMarkedJobsScreen> {
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');
  final List<Item> _data = generateItems(8);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bookmarked Jobs",
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
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _data[index].isExpanded = !isExpanded;
            });
          },
          children: _data.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
              canTapOnHeader: true,
              backgroundColor: colorDarkMidGround,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return const BookmarkedCard(
                  companyLogo:
                      "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-icon-png-transparent-background-osteopathy-16.png",
                  companyName: "Google In.",
                  position: "Associate Software Engineer",
                );
              },
              body: const BookmarkedJobBodyCard(
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
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}
