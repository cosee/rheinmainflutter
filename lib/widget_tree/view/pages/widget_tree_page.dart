import 'package:flutter/material.dart';

import 'package:flutterrheinmain/widget_tree/view/widgets/scaffold_body.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/widget_tree_app_bar.dart';

class WidgetTreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: WidgetTreeAppBar(),
        body: ScaffoldBody(),
      );
}
