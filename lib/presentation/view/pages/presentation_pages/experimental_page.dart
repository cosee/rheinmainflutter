import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/stepwise_presentation_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step_text.dart';

class ExperimentalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
      titleText: 'Sick experiments -- DO NOT PRESENT --',
      child: _createContent());

  Widget _createContent() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _createLeftSide(),
          _createRightSide(),
        ],
      );

  _createLeftSide() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PresentationStepText('Geiler Text alla', 0),
          PresentationStepText('Übertrieben cooler Text!', 1),

          PresentationStepText(
              'Mir kommen gerade die Tränen so toll ist der Text', 2),
          PresentationStepText(
            'Kein Scheiß man, ich könnte kotzen vor Glück!',
            3,
            usePadding: false,
          ),
          // RightAlignedWidget(CoseeText('Noch besserer Text')),
        ],
      );

  _createRightSide() => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          PresentationStepText('Wer bist du überhaupt?', 4),
          PresentationStepText('Übertrieben cooler Text!\n LOL', 5),
          PresentationStepText('Übertrieben cooler Text!', 6),
          // RightAlignedWidget(CoseeText('Noch besserer Text')),
        ],
      );
}
