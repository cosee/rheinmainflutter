import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/stepwise_presentation_content.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/text/header_text.dart';
import 'package:flutterrheinmain/presentation/view/provider/presentation_state_provider.dart';
import 'package:provider/provider.dart';

class StepwisePresentationPage extends StatelessWidget {
  StepwisePresentationPage({this.titleText, this.child, this.steps = 0});

  final String titleText;
  final Widget child;
  final int steps;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: CustomColors.coseeDarkGrey,
        body: _createProvider(context),
      );

  Widget _createProvider(BuildContext context) => ChangeNotifierProvider(
        builder: (_) => PresentationStepProvider(steps),
        child: _createGestureDetector(context),
      );

  Widget _createGestureDetector(BuildContext context) =>
      StepwisePresentationContent(child, titleText);

  // {
  //   var provider = Provider.of<PresentationStepProvider>(context);
  //   return GestureDetector(
  //     onTap: provider.next,
  //     child: _createPageContent(),
  //   );
  // }

  // Widget _createPageContent() => Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: <Widget>[
  //         HeaderText(titleText),
  //         Padding(
  //           padding: const EdgeInsets.only(top: 15),
  //           child: child,
  //         ),
  //       ],
  //     );
}
