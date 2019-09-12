import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_page.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_text.dart';
import 'package:flutterrheinmain/core/view/widgets/right_aligned_widget.dart';

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
          CoseeText('Geiler Text alla'),
          CoseeText('Übertrieben cooler Text!'),

          CoseeText('Mir kommen gerade die Tränen so toll ist der Text'),
          CoseeText('Kein Scheiß man, ich könnte kotzen vor Glück!',
              usePadding: false),
          // RightAlignedWidget(CoseeText('Noch besserer Text')),
        ],
      );

  _createRightSide() => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          CoseeText('Wer bist du überhaupt?'),
          CoseeText('Übertrieben cooler Text!\n LOL'),
          CoseeText('Übertrieben cooler Text!'),
          // RightAlignedWidget(CoseeText('Noch besserer Text')),
        ],
      );
}
