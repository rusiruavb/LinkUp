class Post {
  String id;
  String fullName;
  String position;
  String profileImageURL;
  String postImage;
  String description;

  Post({
    this.id,
    this.fullName,
    this.position,
    this.profileImageURL,
    this.postImage,
    this.description,
  });

  factory Post.fromJson(
    Map<String, dynamic> json,
  ) =>
      Post(
        id: json['id'],
        fullName: json['fullName'],
        position: json['position'],
        profileImageURL: json['profileImageURL'],
        postImage: json['postImage'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'fullName': fullName,
        'position': position,
        'profileImageURL': profileImageURL,
        'postImage': postImage,
        'description': description,
      };
}
