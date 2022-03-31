import 'application_model.dart';
import 'education_model.dart';
import 'experience_model.dart';
import 'job_model.dart';
import 'post_model.dart';

class User {
  String id;
  String token;
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

  User({
    this.id,
    this.token,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.password,
    this.email,
    this.profileImageURL,
    this.skills,
    this.educations,
    this.experiences,
    this.posts,
    this.applications,
    this.jobs,
  });

  factory User.fromJson(
    Map<String, dynamic> json,
  ) =>
      User(
        id: json['id'],
        token: json['token'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        phoneNumber: json['phoneNumber'],
        password: json['password'],
        email: json['email'],
        profileImageURL: json['profileImageURL'],
        skills: json['skills'],
        educations: json['education'],
        experiences: json['experience'],
        posts: json['posts'],
        applications: json['applicationList'],
        jobs: json['jobList'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'phoneNumber': phoneNumber,
        'password': password,
        'email': email,
        'profileImageURL': profileImageURL,
        'skills': skills,
        'educations': educations,
        'experiences': experiences,
        'applications': applications,
        'jobs': jobs,
      };
}
