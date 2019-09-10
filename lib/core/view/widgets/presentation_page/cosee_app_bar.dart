import 'package:flutter/material.dart';
import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_text.dart';

class CoseeAppBar extends StatelessWidget implements PreferredSizeWidget {
  CoseeAppBar(
    this.text, {
    Key key,
    this.preferredHeight,
  }) : super(key: key);

  final String text;
  final double preferredHeight;

  @override
  Size get preferredSize => Size.fromHeight(preferredHeight ?? kToolbarHeight);

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(top: 25),
        color: CustomColors.coseeDarkGrey,
        child: CoseeText(
          text,
          fontSize: 30,
          color: CustomColors.coseeLightGreen,
        ),
      );
}
