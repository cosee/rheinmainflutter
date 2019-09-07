import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/core/widgets/abstract_app_bar.dart';

class WidgetTreeAppBar extends AbstractAppBar {
  WidgetTreeAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppBar(
        title: Text(
          'Widget Tree',
          style: TextStyle(color: CustomColors.coseedarkgrey),
        ),
      );
}
