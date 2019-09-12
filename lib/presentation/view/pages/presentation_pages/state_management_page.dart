import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/stepwise_presentation_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step_text.dart';
import 'package:provider/provider.dart';

class StateManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
      titleText: 'State Management', child: _createContent());

  Widget _createContent() => Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _createTexts(),
                _createImages(),
              ],
            ),
            SizedBox(height: 10),
            _createImage('assets/images/consumer.png', 3, height: 70),
          ],
        ),
      );

  Widget _createTexts() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PresentationStepText('Provider package', 0, bold: true),
          PresentationStepText('ChangeNotifier', 1),
          PresentationStepText('ChangeNotifierProvider', 2),
          PresentationStepText('Consumer', 3),
        ],
      );

  Widget _createImages() => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          _createImage('assets/images/change_notifier.png', 1),
          SizedBox(height: 10),
          _createImage('assets/images/change_notifier_provider.png', 2,
              height: 80),
        ],
      );

  _createImage(String imagePath, int step, {double height = 100}) =>
      PresentationStep(
        Image.asset(imagePath, height: height),
        step,
      );
}

class AwesomeChangeNotifier extends ChangeNotifier {
  int state = 0;
  addOne() {
    state++;
    notifyListeners();
  }
}

class StateManagingWidget extends StatelessWidget {
  Widget child;

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        builder: (context) => AwesomeChangeNotifier(),
        child: child,
      );
}

class StateManagedWidget extends StatelessWidget {
  Widget child;

  @override
  Widget build(BuildContext context) => Consumer<AwesomeChangeNotifier>(
        builder: (_, provider, __) => Text(provider.state.toString()),
      );
}

class ChildWidget extends StatelessWidget {
  ChildWidget(int state);

  @override
  Widget build(BuildContext context) => null;
}
