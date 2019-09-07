import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/widget_tree/view/pages/widget_tree_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: CustomColors.coseedarkgrey,
        primaryColor: CustomColors.coseeLightGreen,
      ),
      home: WidgetTreePage(),
    );
  }
}
