import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_page.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/presentation_step_text.dart';
import 'package:flutterrheinmain/core/view/widgets/right_aligned_widget.dart';

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
