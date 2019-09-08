import 'package:flutter/material.dart';

class TextFieldProvider with ChangeNotifier {
  static const String scaffoldText = 'Scaffold';
  static const String scaffnewText = 'Scaffnew';

  String text = scaffoldText;

  void toggleText() {
    if (text == scaffoldText) {
      text = scaffnewText;
    } else {
      text = scaffoldText;
    }
    notifyListeners();
  }
}
