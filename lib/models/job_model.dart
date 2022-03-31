class Job {
  String id;
  String company;
  String position;
  String description;

  Job({this.id, this.company, this.position, this.description});

  factory Job.fromJson(
    Map<String, dynamic> json,
  ) =>
      Job(
        id: json['id'],
        company: json['company'],
        position: json['position'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'company': company,
        'position': position,
        'description': description,
      };
}
