import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutterrheinmain/widget_tree/view/provider/scaffold_text_provider.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/arrow/arrow.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/interactive_widget_tree/widget_tree_node.dart';

class InteractiveWidgetTree extends StatelessWidget {
  final Padding verticalPadding = Padding(padding: EdgeInsets.all(20));
  final Padding horizontalPadding =
      Padding(padding: EdgeInsets.only(right: 40));

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _createLevel0(),
          _createLevel0Arrows(),
          _createLevel1(),
          _createLevel1Arrows(),
          _createLevel2(),
        ],
      );

  Widget _createLevel0() => WidgetTreeNode(depth: 0, child: Text('Scaffold'));

  Widget _createLevel0Arrows() => Row(
        children: <Widget>[
          Transform.rotate(angle: 0.7, child: Arrow(height: 40)),
          SizedBox(width: 40),
          Transform.rotate(angle: -0.01, child: Arrow(height: 30)),
          SizedBox(width: 40),
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

        Widget _createLevel1Arrows() => Row(
        children: <Widget>[
          Transform.rotate(angle: 1, child: Arrow(height: 40)),
          SizedBox(width: 50),
          Arrow(height: 30),
          SizedBox(width: 50),
          Transform.rotate(angle: -0.85, child: Arrow(height: 38)),
        ],
      );

  Widget _createLevel2() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          WidgetTreeNode(depth: 2, child: Text('Slider')),
          horizontalPadding,
          WidgetTreeNode(depth: 2, child: Text('WidgetTree')),
          horizontalPadding,
          _createScaffoldTreeNode(),
        ],
      );

  _createScaffoldTreeNode() => Consumer<ScaffoldTextProvider>(
      builder: (_, provider, __) => GestureDetector(
            onTap: provider.toggleText,
            child: WidgetTreeNode(
              depth: 2,
              child: Text(provider.text),
              backgroundColor: provider.backgroundColor,
            ),
          ));
}
