import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/stepwise_presentation_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step_text.dart';

class FlutterExplanationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
        titleText: 'What is Flutter?',
        child: _createContent(),
      );

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PresentationStepText('Google\'s new UI toolkit', 0),
          PresentationStepText('Programmed in Dart', 1),
          PresentationStepText('Using the Skia rendering engine', 2),
          PresentationStepText('Pixel perfect', 3),
          PresentationStepText('Fast & productive', 4),
          PresentationStepText('A whole lotta fun!', 5, bold: true,),
        ],
      );
}
