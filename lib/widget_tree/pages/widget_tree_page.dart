import 'package:flutter/material.dart';
import 'package:flutterrheinmain/widget_tree/widgets/app_bar.dart';
import 'package:flutterrheinmain/widget_tree/widgets/scaffold_body.dart';

class WidgetTreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: WidgetTreeAppBar(),
        body: ScaffoldBody(),
      );
}
