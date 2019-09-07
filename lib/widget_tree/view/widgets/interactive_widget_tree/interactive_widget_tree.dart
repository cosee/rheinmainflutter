import 'package:flutter/material.dart';

import 'package:flutterrheinmain/widget_tree/view/widgets/interactive_widget_tree/widget_tree_node.dart';

class InteractiveWidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          WidgetTreeNode(depth: 0, child: Text('Scaffold')),
          _createLevel1(),
        ],
      );

  Widget _createLevel1() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          WidgetTreeNode(depth: 1, child: Text('AppBar')),
          Padding(padding: EdgeInsets.only(right: 50),),
          WidgetTreeNode(
              depth: 1, child: Text('Body'), shadowColor: Colors.blue),
        ],
      );
}
