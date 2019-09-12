import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/stepwise_presentation_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step_text.dart';

class StatefulWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      StepwisePresentationPage(titleText: 'StatefulWidget', child: _createContent());

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PresentationStepText('Tolle widgets!', 0),
          PresentationStepText('Placeholder number 3 incoming', 1),
          PresentationStepText('Here we are!', 2),
        ],
      );
}
