import 'package:flutter/material.dart';

class HeightProvider extends ChangeNotifier {
  double _height = 40;

  double get height => _height;

  set height(double newHeight) {
    _height = newHeight;
    notifyListeners();
  }
}
