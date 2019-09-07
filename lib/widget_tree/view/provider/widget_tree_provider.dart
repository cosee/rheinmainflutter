import 'package:flutter/material.dart';

class WidgetTreeProvider with ChangeNotifier {
  final double maxDepth = 2;

  int _depth = 0;
  double get depth => _depth.toDouble();

  set depth(double value) {
    print('new widgetTree-depth: $value');
    _depth = value.toInt();
    notifyListeners();
  }
}
