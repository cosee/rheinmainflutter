import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/text/header_text.dart';

class CoseePage extends StatelessWidget {
  CoseePage({this.titleText, this.child});

  final String titleText;
  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: CustomColors.coseeDarkGrey,
        body: _createPageContent(),
      );

  Widget _createPageContent() => Column(
    mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          HeaderText(titleText),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: child,
          ),
        ],
      );
}
