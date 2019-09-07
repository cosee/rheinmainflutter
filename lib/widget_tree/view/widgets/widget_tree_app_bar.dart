import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/core/widgets/abstract_app_bar.dart';

class WidgetTreeAppBar extends AbstractAppBar {
  WidgetTreeAppBar({Key key, this.text = 'Widget Tree', double preferredHeight})
      : super(key: key, preferredHeight: preferredHeight);

  final String text;
  
  @override
  Widget build(BuildContext context) => AppBar(
        title: Text(
          text,
          style: TextStyle(color: CustomColors.coseedarkgrey),
        ),
      );
}
