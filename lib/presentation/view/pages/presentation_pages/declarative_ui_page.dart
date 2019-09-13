import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/stepwise_presentation_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step_text.dart';

class DeclarativeUiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
        titleText: 'Declarative UI programming',
        child: _createContent(),
      );

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createUiEqualsImage(),
          PresentationStepText(
              'UI is rebuild from scratch to reflect current state of app', 1),
          PresentationStepText(
              'No imperative modifying of UI  \n   widget.setText(\'text\')',
              2),
          _createSourceText(),
        ],
      );

  Widget _createUiEqualsImage() => Center(
        child: PresentationStep(
          Image.asset(
            'assets/images/ui_equals_function_of_state.png',
            height: 160,
          ),
          0,
        ),
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
