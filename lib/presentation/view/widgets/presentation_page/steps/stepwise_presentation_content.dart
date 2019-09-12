import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/text/header_text.dart';
import 'package:flutterrheinmain/presentation/view/provider/presentation_state_provider.dart';

class StepwisePresentationContent extends StatelessWidget {
  StepwisePresentationContent(this.child, this.titleText);
  final Widget child;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<PresentationStepProvider>(context);
    return GestureDetector(
      onTap: provider.next,
      child: Container(
        color:
            Colors.transparent, //Dirty hack for whole-screen gesture-detection,
        child: _createPageContent(),
      ),
    );
  }

  Widget _createPageContent() => Column(
    children: <Widget>[
      HeaderText(titleText),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: child,
      ),
    ],
  );
}
