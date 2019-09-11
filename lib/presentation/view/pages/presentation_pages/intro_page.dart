import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_text.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(body: _createContent());

  Widget _createContent() => Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: <Widget>[
            _createHeaderText('Flutter SDK'),
            _createSubHeaderText('Modern Hybrid App Development'),
            SizedBox(height: 180),
            _createBottomRow('cosee GmbH, Tobias Pritsch'),
          ],
        ),
      );

  _createHeaderText(String text) => CoseeText(
        text,
        fontSize: 45,
        bold: true,
        color: CustomColors.coseeLightGreen,
      );

  _createSubHeaderText(String text) => CoseeText(text, fontSize: 33);

  _createBottomRow(String text) =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
        CoseeText(text),
        _createImage(),
      ]);

  Widget _createImage() => Padding(
        padding: const EdgeInsets.only(right: 25),
        child: Image.asset(
          'assets/images/cosee_logo.png',
          height: 70,
        ),
      );
}
