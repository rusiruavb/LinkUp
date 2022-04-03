import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:linkup/constants.dart';
import 'package:linkup/models/post_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PostProvider extends ChangeNotifier {
  Post post = Post.createPostConstructor(
    description: '',
    fullName: '',
    position: '',
    id: '',
    postImage: '',
    profileImageURL: '',
  );
  List<Post> posts = [];
  final storage = const FlutterSecureStorage();

  void createPost(
    BuildContext context,
    String firstName,
    String lastName,
    String position,
    String profileImageURL,
  ) async {
    var userId = await storage.read(key: 'userId');
    var authToken = await storage.read(key: 'authToken');

    final response = await http.post(
      Uri.parse('$baseApi/posts/user/$userId'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'x-auth-token': authToken,
      },
      body: jsonEncode(
        <String, String>{
          'fullName': firstName + " " + lastName,
          'position': position,
          'profileImageURL': profileImageURL,
          'postImage': post.postImage,
          'description': post.description,
        },
      ),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      post = Post.fromJson(data);
      posts.add(post);
      notifyListeners();
    } else if (response.statusCode == 400) {
      Fluttertoast.showToast(msg: 'Authentication Failed');
      Navigator.pushNamed(context, '/login');
      notifyListeners();
    } else {
      Fluttertoast.showToast(msg: 'Server Error');
      notifyListeners();
    }
  }

  Future<List<Post>> getPosts() async {
    return null;
  }
}
