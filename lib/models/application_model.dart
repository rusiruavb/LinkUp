class Application {
  String id;
  String applicantName;
  String nic;
  String contactNumber;
  String university;
  String skills;
  String languages;
  String linkedIn;
  String gitHub;
  String status;

  Application({
    this.id,
    this.applicantName,
    this.nic,
    this.contactNumber,
    this.university,
    this.skills,
    this.languages,
    this.linkedIn,
    this.gitHub,
    this.status,
  });

  factory Application.fromJson(
    Map<String, dynamic> json,
  ) =>
      Application(
        id: json['id'],
        applicantName: json['applicantName'],
        nic: json['nic'],
        contactNumber: json['contactNumber'],
        university: json['university'],
        skills: json['skills'],
        languages: json['languages'],
        linkedIn: json['linkedIn'],
        gitHub: json['gitHub'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'applicantName': applicantName,
        'nic': nic,
        'contactNumber': contactNumber,
        'university': university,
        'skills': skills,
        'languages': languages,
        'linkedIn': linkedIn,
        'gitHub': gitHub,
        'status': status,
      };
}
