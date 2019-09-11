import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_page.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_text.dart';

class PerformancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CoseePage(
        titleText: 'Performance',
        child: _createContent(),
      );

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CoseeText('CPU'),
          CoseeText('RAM'),
          CoseeText('Storage'),
        ],
      );
}
