import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_page.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/presentation_step_text.dart';

class ProgrammingLanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
        titleText: 'Programming Language: Dart',
        child: _createContent(),
      );

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PresentationStepText('Declarative', 0),
          PresentationStepText('Futures are baked in!', 1),
          PresentationStepText('Storage', 2),
        ],
      );
}
