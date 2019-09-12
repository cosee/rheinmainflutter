import 'package:flutter/material.dart';

class PresentationStepProvider extends ChangeNotifier {
  PresentationStepProvider(this._maxStep);

  int _step = 0;
  int get step => _step;

  int _maxStep = 0;

  bool _reachedEnd = false;
  bool get reachedEnd => _reachedEnd;

  next() {
    print('Clicked next');
    _step++;
    if(_step >= _maxStep) {
      _reachedEnd = true;
    }
    notifyListeners();
  }

}