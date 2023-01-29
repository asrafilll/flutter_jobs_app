import 'package:flutter/material.dart';

class GenderProvider with ChangeNotifier {
  bool _isMale = true;

  bool get isMale => _isMale;

  set isMale(bool newValue) {
    _isMale = newValue;
    notifyListeners();
  }

  get color => isMale ? Colors.blue : Colors.pink;
  get maleColor => isMale ? Colors.blue : Colors.grey;
  get femaleColor => isMale ? Colors.grey : Colors.pink;
}
