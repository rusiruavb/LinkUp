import 'application_model.dart';
import 'education_model.dart';
import 'experience_model.dart';
import 'job_model.dart';
import 'post_model.dart';

class User {
  String firstName;
  String lastName;
  String phoneNumber;
  String password;
  String email;
  String profileImageURL;
  List<String> skills;
  List<Education> educations;
  List<Experience> experiences;
  List<Post> posts;
  List<Application> applications;
  List<Job> jobs;
}
