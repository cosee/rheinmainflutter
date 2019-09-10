import 'package:flutter/material.dart';

enum TextSize {
  BIG,
  SMALL,
}

const Map<TextSize, double> _size = {
  TextSize.BIG: 20,
  TextSize.SMALL: 50,
};

class CoseeText extends StatelessWidget {
  CoseeText(
    this.text, {
    this.color = Colors.white,
    this.fontSize = 20,
  });

  final String text;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Text(
          ' $text ',
          style: TextStyle(
            fontSize: fontSize,
            backgroundColor: color,
          ),
        ),
      );
}
