import 'package:flutter/material.dart';

class ValueChange extends ChangeNotifier {
  bool darkMode = false;
  changeMode() {
    darkMode = !darkMode;
    notifyListeners();
  }
}
