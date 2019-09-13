import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/stepwise_presentation_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step_text.dart';

class WidgetBuildMethodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
        titleText: 'Widgets: build method',
        child: _createContent(),
      );

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PresentationStepText('Builds Elements to draw on screen', 0),
          _createAwesomeWidgetRow(),
        ],
      );

  _createAwesomeWidgetRow() => Center(
        child: Column(
          children: <Widget>[
            _createUiEqualsImage(),
            SizedBox(height: 20),
            _createAwesomeWidget(),
          ],
        ),
      );

  Widget _createUiEqualsImage() => PresentationStep(
      Image.asset(
        'assets/images/awesome_widget.png',
        height: 180,
      ),
      1);

  Widget _createAwesomeWidget() => PresentationStep(AwesomeWidget(), 2);
}

class AwesomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Boring Text :(', style: TextStyle(color: Colors.white)),
        Text('Awesome Text :)', style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
