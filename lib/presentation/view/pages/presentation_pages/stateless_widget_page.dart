import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/view/widgets/right_aligned_widget.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/stepwise_presentation_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step_text.dart';

class StatelessWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      StepwisePresentationPage(titleText: 'StatelessWidget', child: _createContent());

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PresentationStepText('Geiler Text alla', 0),
          PresentationStepText('Übertrieben cooler Text!', 1),
          RightAlignedWidget(PresentationStepText('Noch besserer Text', 2)),
        ],
      );
}
