import 'package:flutter/material.dart';
import 'package:flutterrheinmain/widget_tree/widgets/vertical_slider.dart';

class ScaffoldBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[VerticalSlider(10)],
      );
}
