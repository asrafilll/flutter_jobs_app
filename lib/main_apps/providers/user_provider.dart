import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/models/user.dart';

class UserProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel newUser) {
    _user = newUser;
    notifyListeners();
  }
}
