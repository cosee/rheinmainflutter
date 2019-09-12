import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutterrheinmain/core/view/widgets/presentation_page/text/header_text.dart';
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
      child: _createPageContent(),
    );
  }

  Widget _createPageContent() => Container(
        color: Colors.transparent, //Dirty hack GestureDetector for whole screen
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            HeaderText(titleText),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: child,
            ),
          ],
        ),
      );
}
