import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: CustomColors.coseeDarkGrey,
        primaryColor: CustomColors.coseeLightGreen,
      ),
      // home: WidgetTreePage(),
      home: PresentationPage(),
    );
  }
}
