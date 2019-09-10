import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_app_bar.dart';

class CoseePage extends StatelessWidget {
  CoseePage({this.titleText, this.child});

  final String titleText;
  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CoseeAppBar(titleText),
        backgroundColor: CustomColors.coseeDarkGrey,
        body: _createPageContent(),
      );

  Widget _createPageContent() => Padding(
    padding: const EdgeInsets.only(top:15),
    child: child,
  );
}
