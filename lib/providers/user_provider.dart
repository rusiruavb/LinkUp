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
      final token = await storage.read(key: 'authToken');

      if (token != null) {
        await storage.deleteAll();
      }
      await storage.write(key: 'userId', value: authData.token);

      // Get user profile
      getProfile();

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
      final token = await storage.read(key: 'authToken');

      if (token != null) {
        await storage.deleteAll();
      }
      await storage.write(key: 'userId', value: authData.token);

      // Get user profile
      getProfile();

      notifyListeners();
      Fluttertoast.showToast(msg: 'Login Success');
      Navigator.pushNamed(context, '/home');
    }
  }

  // Get user profile
  Future<User> getProfile() async {
    final authToken = await storage.read(key: 'authToken');
    final response = await http.get(
      Uri.parse('$baseApi/user/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'x-auth-token': authToken,
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      user = User.fromJson(data);
      notifyListeners();
      return user;
    } else if (response.statusCode == 400) {
      Fluttertoast.showToast(msg: 'Authentication Failed');
      notifyListeners();
      return null;
    } else {
      Fluttertoast.showToast(msg: 'Server Error');
      notifyListeners();
      return null;
    }
  }

  // Update user profile
  Future<User> updateUser() async {
    final authToken = await storage.read(key: 'authToken');
    final response = await http.put(
      Uri.parse('$baseApi/user/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'x-auth-token': authToken,
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
      user = User.fromJson(data);

      // Get updated user profile
      getProfile();

      notifyListeners();
      Fluttertoast.showToast(msg: 'Update Success');
      return user;
    } else if (response.statusCode == 400) {
      Fluttertoast.showToast(msg: 'Authentication Failed');
      notifyListeners();
      return null;
    } else {
      Fluttertoast.showToast(msg: 'Server Error');
      notifyListeners();
      return null;
    }
  }

  void deleteUser(BuildContext context) async {
    var userId = user.id;
    final authToken = await storage.read(key: 'authToken');
    final response = await http.delete(
      Uri.parse('$baseApi/user/remove/$userId'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'x-auth-token': authToken,
      },
    );

    if (response.statusCode == 200) {
      await storage.deleteAll();
      Navigator.pushNamed(context, '/signup');
    } else if (response.statusCode == 400) {
      Fluttertoast.showToast(msg: 'Authentication Failed');
      notifyListeners();
      return null;
    } else {
      Fluttertoast.showToast(msg: 'Server Error');
      notifyListeners();
      return null;
    }
  }
}
