import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';
import 'package:linkup/components/image_upload.dart';
import 'package:linkup/components/post_image_upload.dart';
import 'package:linkup/components/rounded_number_field.dart';
import 'package:linkup/components/rounded_text_field.dart';
import 'package:linkup/components/rounded_textarea_field.dart';
import 'package:linkup/constants.dart';
import 'package:linkup/components/rounded_button.dart';
import 'package:linkup/providers/job_provider.dart';
import 'package:linkup/providers/post_provider.dart';
import 'package:linkup/providers/user_provider.dart';
import 'package:provider/provider.dart';

class AddJobFeed extends StatefulWidget {
  const AddJobFeed({
    Key key,
  }) : super(key: key);

  @override
  _AddJobFeedState createState() => _AddJobFeedState();
}

class _AddJobFeedState extends State<AddJobFeed> {
  String description = "";
  String position = "";
  String salary = "";
  String companyName = "";
  JobProvider jobProvider;
  UserProvider userProvider;

  @override
  void initState() {
    super.initState();
    jobProvider = context.read<JobProvider>();
    userProvider = context.read<UserProvider>();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ExpansionTile(
      initiallyExpanded: false,
      collapsedBackgroundColor: colorDarkMidGround,
      backgroundColor: colorDarkMidGround,
      trailing: const Icon(
        Icons.add,
        color: colorTextPrimary,
        size: 20,
      ),
      title: const Text(
        'Create Job',
        style: TextStyle(
          fontFamily: fontFamilySFPro,
          color: colorTextPrimary,
          fontSize: 18,
        ),
      ),
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: colorDarkMidGround,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 25,
                    right: 25,
                    bottom: 5,
                  ),
                  child: Column(
                    children: [
                      RoundedTextField(
                        text: "Company Name",
                        onChange: (value) {
                          setState(() {
                            jobProvider.job.companyName = value;
                          });
                        },
                        isRequired: true,
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      PostImageUpload(
                        onFileChanged: (imageUrl) {
                          setState(() {
                            jobProvider.job.jobImage = imageUrl;
                          });
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      RoundedTextField(
                        text: "Position",
                        onChange: (value) {
                          setState(() {
                            jobProvider.job.position = value;
                          });
                        },
                        isRequired: true,
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      RoundedTextField(
                        text: "Salary",
                        onChange: (value) {
                          setState(() {
                            jobProvider.job.salary = value;
                          });
                        },
                        isRequired: true,
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      RoundedTextArea(
                        backgroundColor: colorDarkMidGround,
                        textAreaColor: colorDarkBackground,
                        text: "Description",
                        onChange: (value) {
                          setState(() {
                            jobProvider.job.description = value;
                          });
                        },
                        value: jobProvider.job.description,
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      PostImageUpload(
                        onFileChanged: (imageUrl) {
                          setState(() {
                            jobProvider.job.companyLogo = imageUrl;
                          });
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      RoundedButton(
                        color: colorTextPrimary,
                        textColor: colorDarkBackground,
                        fontSize: 14,
                        height: 35,
                        width: size.width * 0.85,
                        text: "Post",
                        onPressed: () {
                          jobProvider.createJob(
                            context,
                          );
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
