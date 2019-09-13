import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/stepwise_presentation_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step.dart';

class AccessNativeCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
        titleText: 'Access native code from Dart',
        child: _createContent(),
      );

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createRegisterChannelImage(),
          SizedBox(height: 5),
          _createInitializeMembersImage(),
          SizedBox(height: 5),
          _createAccessImage(),
        ],
      );

  _createRegisterChannelImage() => _createImage(
        'assets/images/method_channel_register.png',
        0,
        height: 90,
      );
  _createInitializeMembersImage() => _createImage(
        'assets/images/method_channel_initialize_members.png',
        1,
        height: 45,
      );
  _createAccessImage() => _createImage(
        'assets/images/method_channel_access.png',
        2,
        height: 135,
      );

  _createImage(String imagePath, int step, {double height = 100}) => Center(
    child: PresentationStep(
      Image.asset(
        imagePath,
        height: height,
      ),
      step,
    ),
  );
}
