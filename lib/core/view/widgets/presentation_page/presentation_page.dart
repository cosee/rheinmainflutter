import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_app_bar.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_text.dart';

class PresentationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CoseeAppBar('Mega geile Überschrift'),
        backgroundColor: CustomColors.coseeDarkGrey,
        body: _createPageContent(),
      );

  Widget _createPageContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CoseeText('Geiler Text alla'),
          CoseeText('Noch besserer Text'),
        ],
      );
}
