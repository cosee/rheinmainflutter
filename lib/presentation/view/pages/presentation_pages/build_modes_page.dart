import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/cosee_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step_text.dart';

class BuildModesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
        titleText: 'Build modes',
        child: _createContent(),
      );

  Widget _createContent() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createDebugTexts(),
          _createReleaseTexts(),
        ],
      );

  _createDebugTexts() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createHeaderText('Debug:', 0),
          PresentationStepText('Optimized for fast development cycle', 1),
          PresentationStepText('Uses Dart-VM to run Dart code', 2),
          PresentationStepText('Hot reload enabled', 3),
          PresentationStepText('Debugging enabled', 4,)
        ],
      );

  _createReleaseTexts() => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          _createHeaderText('Release:  ', 5),
          PresentationStepText('Compiled into native     \nARM/x86 libraries', 6),
          PresentationStepText('Optimized for fast startup/execution   ', 7),
          PresentationStepText('Build is minified   ', 8),
          PresentationStepText('Hot reload disabled   ', 9),
          PresentationStepText('Debugging disabled   ', 10),
        ],
      );

      _createHeaderText(String text, int step) => PresentationStepText(
            text,
            step,
            fontSize: 26,
            bold: true,
          );
}
