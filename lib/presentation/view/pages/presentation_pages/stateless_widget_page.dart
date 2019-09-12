import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/view/widgets/right_aligned_widget.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/stepwise_presentation_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step_text.dart';

class StateManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      StepwisePresentationPage(titleText: 'State Management', child: _createContent());

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PresentationStepText('Provider package', 0, bold: true,),
          PresentationStepText('ChangeNotifier', 1),
          PresentationStepText('ChangeNotifierProvider', 2),
          PresentationStepText('Consumer', 3),
        ],
      );
}
