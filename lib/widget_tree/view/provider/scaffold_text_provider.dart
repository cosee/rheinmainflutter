import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';

class ScaffoldTextProvider with ChangeNotifier {
  static const String scaffoldText = 'Scaffold';
  static const String scaffnewText = 'Scaffnew';

  String text = scaffoldText;
  Color backgroundColor;

  void toggleText() {
    if (text == scaffoldText) {
      text = scaffnewText;
      backgroundColor = CustomColors.coseeLightGreen;
    } else {
      text = scaffoldText;
      backgroundColor = null;
    }
    notifyListeners();
  }
}
