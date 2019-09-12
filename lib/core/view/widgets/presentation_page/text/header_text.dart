import 'package:flutter/material.dart';
import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_text.dart';

class HeaderText extends StatelessWidget {
  HeaderText(this.text);
  
  final String text;


  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(top: 50),
        child: CoseeText(
          text,
          fontSize: 35,
          bold: true,
          color: CustomColors.coseeLightGreen,
        ),
      );
}
