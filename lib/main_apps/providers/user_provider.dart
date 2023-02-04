import 'package:flutter/material.dart';
import 'package:jobs_app/main_apps/models/user.dart';

class UserProvider with ChangeNotifier {
  late User _user;

  User get user => _user;

  set user(User newUser) {
    _user = newUser;
    notifyListeners();
  }
}
