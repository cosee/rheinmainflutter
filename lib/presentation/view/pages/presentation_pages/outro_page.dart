import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/text/cosee_text.dart';
import 'package:flutterrheinmain/presentation/view/widgets/animated_flutter_logo.dart';

class OutroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(body: _createContent());

  Widget _createContent() => Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _createHeadeline(),
            _createBottomRow('cosee GmbH, Tobias Pritsch'),
          ],
        ),
      );

  _createHeadeline() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createHeaderText('Let\'s talk about...'),
          SizedBox(height: 5),
          _createSubHeaderText('Flutter'),
          _createSubHeaderText('Android'),
          _createSubHeaderText('Mobile Development'),
          SizedBox(height: 25),
          _createVisitBoothBanner(),
        ],
      );

  _createHeaderText(String text) => CoseeText(
        text,
        fontSize: 50,
        bold: true,
        color: Colors.white,
      );

  _createSubHeaderText(String text, {double fontSize = 25}) => Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.w300,
          ),
        ),
      );

  _createBottomRow(String text) => Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // CoseeText(text),
            _createSubHeaderText('cosee.biz  |  cosee.jobs  |  blog.cosee.biz',
                fontSize: 20),
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

  _createVisitBoothBanner() => CoseeText(
        'Visit our booth!',
        color: CustomColors.coseeMiddleGreen,
        fontColor: Colors.white,
        fontSize: 33,
      );
}
