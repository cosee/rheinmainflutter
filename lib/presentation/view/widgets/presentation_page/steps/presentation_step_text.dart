import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/text/cosee_text.dart';

class PresentationStepText extends StatelessWidget {
  PresentationStepText(
    this.text,
    this.step, {
    this.color = Colors.white,
    this.fontSize = 20,
    this.usePadding = true,
    this.bold = false,
  });

  final int step;

  final String text;
  final Color color;
  final double fontSize;
  final bool usePadding;
  final bool bold;

  @override
  Widget build(BuildContext context) => PresentationStep(
        CoseeText(
          text,
          color: color,
          fontSize: fontSize,
          usePadding: usePadding,
          bold: bold,
        ),
        step,
      );
}
