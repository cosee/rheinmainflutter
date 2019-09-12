import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/stepwise_presentation_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step_text.dart';

class FlutterForWebExplanationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
        titleText: 'Flutter for web',
        child: _createContent(),
      );

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PresentationStepText('dart2js', 0),
          PresentationStepText('is in preview state', 1),
        ],
      );
}
