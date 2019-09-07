import 'package:flutter/material.dart';

import 'package:flutterrheinmain/widget_tree/view/widgets/interactive_widget_tree/widget_tree_node.dart';

class InteractiveWidgetTree extends StatelessWidget {
  final Padding verticalPadding = Padding(padding: EdgeInsets.all(20));
  final Padding horizontalPadding = Padding(padding: EdgeInsets.only(right: 40));

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          WidgetTreeNode(depth: 0, child: Text('Scaffold')),
          verticalPadding,
          _createLevel1(),
          verticalPadding,
          _createLevel2(),
        ],
      );

  Widget _createLevel1() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          WidgetTreeNode(depth: 1, child: Text('AppBar')),
          horizontalPadding,
          WidgetTreeNode(
              depth: 1, child: Text('Body'), shadowColor: Colors.blue),
          Padding(padding: EdgeInsets.only(right: 100)),
        ],
      );

  Widget _createLevel2() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          WidgetTreeNode(depth: 2, child: Text('Slider')),
          horizontalPadding,
          WidgetTreeNode(depth: 2, child: Text('WidgetTree')),
          horizontalPadding,
          WidgetTreeNode(depth: 2, child: Text('Scaffold')),
        ],
      );
}
