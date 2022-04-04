import "package:flutter/material.dart";
import 'package:linkup/components/add_job_feed.dart';
import 'package:linkup/models/job_model.dart';
import 'package:linkup/providers/job_provider.dart';
import 'package:provider/provider.dart';
import '../../components/job_card.dart';
import '../../constants.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key key}) : super(key: key);

  @override
  _JobsScreenState createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  Future<List<Job>> jobs;

  @override
  void initState() {
    super.initState();
    jobs = context.read<JobProvider>().getJobs();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colorDarkBackground,
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const AddJobFeed(),
            FutureBuilder<List<Job>>(
              future: jobs,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: ((context, index) {
                        return JobCard(
                          companyLogo: snapshot.data[index].companyLogo,
                          companyName: snapshot.data[index].companyName,
                          position: snapshot.data[index].position,
                          salary: snapshot.data[index].salary,
                          jobImage: snapshot.data[index].jobImage,
                          description: snapshot.data[index].description,
                        );
                      }),
                    ),
                  );
                } else if (snapshot.hasError) {
                  return const Text(
                    'Error with load posts',
                    style: TextStyle(
                      fontFamily: fontFamilySFPro,
                      fontSize: 16,
                      color: colorTextPrimary,
                    ),
                  );
                }
                return const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(
                      color: colorTextPrimary,
                      strokeWidth: 2,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
