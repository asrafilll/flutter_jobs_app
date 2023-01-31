import 'package:flutter/material.dart';

class UploadPhotoProvider with ChangeNotifier {
  bool _isUpload = false;

  bool get isUpload => _isUpload;

  set upload(bool isUpload) {
    _isUpload = !_isUpload;
    notifyListeners();
  }
}
