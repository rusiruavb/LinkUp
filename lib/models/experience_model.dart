class Experience {
  String id;
  String companyLogo;
  String position;
  String companyName;
  String description;

  Experience({
    this.id,
    this.companyLogo,
    this.companyName,
    this.position,
    this.description,
  });

  factory Experience.fromJson(
    Map<String, dynamic> json,
  ) =>
      Experience(
        id: json['_id'],
        companyLogo: json['companyLogo'],
        position: json['position'],
        companyName: json['companyName'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'companyLogo': companyLogo,
        'position': position,
        'companyName': companyName,
        'description': description,
      };
}
