import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_page.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/presentation_step_text.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/text/cosee_text.dart';
import 'package:flutterrheinmain/core/view/widgets/right_aligned_widget.dart';

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
