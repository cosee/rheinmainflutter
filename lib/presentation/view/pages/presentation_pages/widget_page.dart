import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/stepwise_presentation_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step_text.dart';

class WidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
        titleText: 'Widgets',
        child: _createContent(),
      );

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PresentationStepText('"Everything\'s a Widget" - Google', 0),
          PresentationStepText('Lifecycle hook', 1),
          PresentationStepText('Blueprint for Elements to draw', 2),
          _createUiEqualsImage(),
          PresentationStep(_createSourceText(),3)
        ],
      );

  Widget _createUiEqualsImage() => Center(
        child: PresentationStep(
            Image.asset(
              'assets/images/ui_equals_function_of_state.png',
              height: 160,
            ),
            3),
      );

  Widget _createSourceText() => Center(
        child: Text(
          'Source: https://flutter.dev/docs/development/data-and-backend/state-mgmt/declarative',
          style: TextStyle(
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      );
}
