import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_page.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_text.dart';
import 'package:flutterrheinmain/core/view/widgets/right_aligned_widget.dart';

class StatelessWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      CoseePage(titleText: 'StatelessWidget', child: _createContent());

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CoseeText('Geiler Text alla'),
          CoseeText('Übertrieben cooler Text!'),
          RightAlignedWidget(CoseeText('Noch besserer Text')),
        ],
      );
}
