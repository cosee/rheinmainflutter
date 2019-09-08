import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';

class GlowingShadowDecoration extends BoxDecoration {
  GlowingShadowDecoration({Color shadowColor, Color backgroundColor})
      : super(
          boxShadow: [GlowingShadow(shadowColor)],
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
