import 'package:flutter/material.dart';
import 'package:flutterrheinmain/core/resources/colors.dart';

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
    this.bold = false,
    this.fontColor = CustomColors.coseeDarkGrey,
  });

  final String text;
  final Color color;
  final Color fontColor;
  final double fontSize;
  final bool usePadding;
  final bool bold;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: usePadding ? EdgeInsets.only(bottom: 10) : null,
            padding: EdgeInsets.only(left: 30),
            color: color,
            child: _createText(),
          ),
        ],
      );

  _createText() => Text(
        '$text  ',
        style: TextStyle(
          fontWeight: this.bold ? null : FontWeight.w300,
          fontSize: fontSize,
          color: fontColor,
        ),
      );
}
