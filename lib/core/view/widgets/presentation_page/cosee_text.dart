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
    this.usePadding = true,
  });

  final String text;
  final Color color;
  final double fontSize;
  final bool usePadding;

  @override
  Widget build(BuildContext context) => Container(
        margin:  usePadding ? EdgeInsets.only(bottom: 10) : null,
        child: Text(
          ' $text ',
          style: TextStyle(
            fontSize: fontSize,
            backgroundColor: color,
          ),
        ),
      );
}
