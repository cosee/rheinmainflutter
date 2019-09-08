import 'package:flutter/material.dart';

import 'package:flutterrheinmain/widget_tree/view/widgets/arrow/triangle_clipper.dart';

class Arrow extends StatelessWidget {
  Arrow({
    this.height = 50,
    this.width = 2,
    this.color = Colors.white,
  });

  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        _createArrowLine(),
        _createArrowHead(),
      ]);

  _createArrowLine() => Container(
        height: height,
        width: width,
        color: color,
      );

  _createArrowHead() => ClipPath(
      clipper: TriangleClipper(),
      child: Container(
        height: 10,
        width: 10,
        color: color,
      ));
}
