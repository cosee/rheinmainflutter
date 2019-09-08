import 'package:flutter/material.dart';

class ScaffoldTextProvider with ChangeNotifier {
  static const String scaffoldText = 'Scaffold';
  static const String scaffnewText = 'Scaffnew';

  String text = scaffoldText;
  Color backgroundColor;

  void toggleText() {
    if (text == scaffoldText) {
      text = scaffnewText;
      backgroundColor = Colors.deepOrange;
    } else {
      text = scaffoldText;
      backgroundColor = null;
    }
    notifyListeners();
  }
}
