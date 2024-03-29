import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/stepwise_presentation_page.dart';

class FastDevelopmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
        titleText: 'Fast Development: Demo',
        child: _fastDeploymentExample(),
      );

  _fastDeploymentExample() => Container(
        // margin: EdgeInsets.only(left: 200),
        // padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            // color: Colors.green,
            // borderRadius: BorderRadius.circular(50),
            ),
        child: Text(
          'Fast! Isn\'t it?',
          style: TextStyle(fontSize: 50),
        ),
      );
}
