import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_page.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/steps/presentation_step_text.dart';

class FlutterExplanation extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
        titleText: 'What is Flutter?',
        child: _createContent(),
      );

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PresentationStepText('Flutter', 0),
          PresentationStepText('is', 1),
          PresentationStepText('awesome!', 2),
        ],
      );
}
