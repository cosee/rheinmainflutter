import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/stepwise_presentation_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/presentation_step.dart';

class DeclarativeUiCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
        titleText: 'Declarative UI programming: code',
        child: _createContent(),
      );

  Widget _createContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createViewImage(),
          SizedBox(
            height: 10,
          ),
          _createCodeImagesRow(),
        ],
      );

  _createViewImage() => Center(
        child: _createImage(
          'assets/images/declarative_uI_changes.png',
          0,
          height: 160,
        ),
      );

  _createCodeImagesRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _createImage('assets/images/imperative_style.png', 1),
          _createImage('assets/images/declarative_style.png', 2),
        ],
      );

  _createImage(String imagePath, int step, {double height = 100}) =>
      PresentationStep(
        Image.asset(
          imagePath,
          height: height,
        ),
        step,
      );

  // Widget _createImperativeStyleImage() => PresentationStep(
  //     Image.asset(
  //       'assets/images/imperative_style.png',
  //       height: 150,
  //     ),
  //     3);

  // Widget _createDeclarativeStyleImage() => PresentationStep(
  //     Image.asset(
  //       'assets/images/declarative_style.png',
  //       height: 150,
  //     ),
  //     3);
}

// _imperativeCode() {
//   bool red;
//   ImperativeCode b = ImperativeCode();

//   // Imperative style
//   b.setColor(red);
//   b.clearChildren();
//   ViewC c3 = new ViewC("...");
//   b.add(c3);
// }

// _declarativeCode() {
//   bool red;
//   ImperativeCode b = ImperativeCode();

//   // Declarative style
//   return ViewB(
//     color: red,
//     child: ViewC('...'),
//   );
// }

// class ImperativeCode {
//   setColor(bool a) {}
//   clearChildren() {}
//   add(ViewC c) {}
// }

// class ViewC {
//   ViewC(String a);
// }

// class ViewB {
//   ViewB({bool color, ViewC child});
// }
