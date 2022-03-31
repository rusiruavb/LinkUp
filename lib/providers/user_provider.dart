import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:linkup/constants.dart';
import 'package:linkup/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserProvider extends ChangeNotifier {
  User user;
  final storage = const FlutterSecureStorage();

  // Create new user profile
  void create(BuildContext context) async {
    final response = await http.post(
      Uri.parse('$baseApi/user/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(
        <String, String>{
          'firstName': user.firstName,
          'lastName': user.lastName,
          'phoneNumber': user.phoneNumber,
          'password': user.password,
          'email': user.email,
          'profileImageURL': user.profileImageURL,
        },
      ),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      var authData = User.fromJson(data);
      final token = await storage.read(key: 'userId');

      if (token != null) {
        await storage.deleteAll();
      }
      await storage.write(key: 'userId', value: authData.token);

      // Get user profile

      notifyListeners();
      Fluttertoast.showToast(msg: 'Success');
      Navigator.pushNamed(context, '/home');
    }
  }

  // User login
  void login(BuildContext context) async {
    final response = await http.post(
      Uri.parse('$baseApi/user/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(
        <String, String>{
          'email': user.email,
          'password': user.password,
        },
      ),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      var authData = User.fromJson(data);
      final token = await storage.read(key: 'userId');

      if (token != null) {
        await storage.deleteAll();
      }
      await storage.write(key: 'userId', value: authData.token);

      // Get user profile

      notifyListeners();
      Fluttertoast.showToast(msg: 'Login Success');
      Navigator.pushNamed(context, '/home');
    }
  }
}
