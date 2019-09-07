import 'package:flutter/material.dart';
import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/widget_tree/widgets/widget_tree_app_bar.dart';

class InteractiveScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey,
        appBar: WidgetTreeAppBar(),
      );
}
