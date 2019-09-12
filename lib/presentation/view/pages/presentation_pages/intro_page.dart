import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/text/cosee_text.dart';
import 'package:flutterrheinmain/presentation/view/widgets/animated_flutter_logo.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(body: _createContent());

  Widget _createContent() => Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _createHeadeline(),
            AnimatedFlutterLogo(),
            _createBottomRow('cosee GmbH, Tobias Pritsch'),
          ],
        ),
      );

  _createHeadeline() => Column(
        children: <Widget>[
          _createHeaderText('Flutter SDK'),
          _createSubHeaderText('Modern Hybrid App Development'),
        ],
      );

  _createHeaderText(String text) => CoseeText(
        text,
        fontSize: 50,
        bold: true,
        color: CustomColors.coseeLightGreen,
      );

  _createSubHeaderText(String text) => CoseeText(text, fontSize: 33);

  _createBottomRow(String text) => Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CoseeText(text),
            _createCoseeLogo(),
          ],
        ),
      );


  Widget _createCoseeLogo() => Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Image.asset(
          'assets/images/cosee_logo.png',
          height: 55,
        ),
      );
}
