import 'package:flutter/material.dart';

class WeightProvider extends ChangeNotifier {
  double _weight = 40;

  double get weight => _weight;

  set weight(double newWeight) {
    _weight = newWeight;
    notifyListeners();
  }
}
