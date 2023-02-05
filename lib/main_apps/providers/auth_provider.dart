import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jobs_app/main_apps/models/user.dart';

class AuthProvider with ChangeNotifier {
  Future<UserModel> register(
      String email, String password, String name, String goal) async {
    try {
      var body = {
        'email': email,
        'password': password,
        'name': name,
        'goal': goal
      };

      var response = await http.post(
        Uri.parse('https://future-jobs-api.vercel.app/register'),
        body: body,
      );

      if (response.statusCode == 200) {
        return UserModel.fromJson(jsonDecode(response.body));
      } else {
        throw Exception;
      }
    } catch (e) {
      throw FormatException(e.toString());
    }
  }

  Future<UserModel> signIn(String email, String password) async {
    try {
      var body = {
        'email': email,
        'password': password,
      };

      var response = await http.post(
        Uri.parse('https://future-jobs-api.vercel.app/login'),
        body: body,
      );

      if (response.statusCode == 200) {
        return UserModel.fromJson(jsonDecode(response.body));
      } else {
        throw Exception;
      }
    } catch (e) {
      throw FormatException(e.toString());
    }
  }
}
