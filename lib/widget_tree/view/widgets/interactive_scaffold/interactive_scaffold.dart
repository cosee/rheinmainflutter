import 'package:flutter/material.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/interactive_widget_tree/widget_tree_node.dart';

import 'package:flutterrheinmain/widget_tree/view/widgets/widget_tree_app_bar.dart';

class InteractiveScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.grey,
        appBar: _createAppBar(),
        body: _createBody(),
      );

  _createAppBar() => WidgetTreeNode(
        depth: 1,
        child: WidgetTreeAppBar(text: 'AppBar'),
        preferredHeight: 30,
        padding: 0,
        margin: 0,
      );

      _createBody() => WidgetTreeNode(
        depth: 1,
        child: Container(),
        padding: 0,
        margin: 0,
        shadowColor: Colors.blue,
      );
}
