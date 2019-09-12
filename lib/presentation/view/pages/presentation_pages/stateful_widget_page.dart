import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_page.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_text.dart';
import 'package:flutterrheinmain/core/view/widgets/right_aligned_widget.dart';

class StatefulWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      StepwisePresentationPage(titleText: 'StatefulWidget', child: _createContent());

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CoseeText('Tolle widgets!'),
          CoseeText('Placeholder number 3 incoming'),
          CoseeText('Here we are!'),
        ],
      );
}
