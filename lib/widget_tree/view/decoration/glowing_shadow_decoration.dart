import 'package:flutter/material.dart';
import 'package:flutterrheinmain/core/resources/colors.dart';

class GlowingShadowDecoration extends BoxDecoration {
  GlowingShadowDecoration({Color color, Color backgroundColor})
      : super(
          boxShadow: [GlowingShadow(color)],
          color: backgroundColor,
        );
}

class GlowingShadow extends BoxShadow {
  GlowingShadow(Color color)
      : super(
          color: color ?? CustomColors.coseeMiddleGreen.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 10,
        );
}
