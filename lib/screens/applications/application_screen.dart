import 'package:flutter/material.dart';
import 'package:linkup/constants.dart';
import 'package:linkup/screens/applications/application_tile.dart';
import 'package:linkup/screens/bookmark_jobs/bookmark_job_body_card.dart';

class ApplicationScreen extends StatefulWidget {
  const ApplicationScreen({Key key}) : super(key: key);

  @override
  _ApplicationScreenState createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen> {
  bool _isExpanded = false;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: colorDarkBackground,
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: orientation == Orientation.landscape
                ? size.width * 0.75
                : size.width,
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for (var i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: ApplicationTile(
                      index: _index,
                      iterateIndex: i,
                      isExpanded: _isExpanded,
                      title: "Job application",
                      subTitle: "Test jon application",
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
