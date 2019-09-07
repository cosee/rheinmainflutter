import 'package:flutter/material.dart';
import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/depth_slider.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/interactive_widget_tree/widget_tree_node.dart';

import 'package:flutterrheinmain/widget_tree/view/widgets/widget_tree_app_bar.dart';

class InteractiveScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _createAppBar(),
        body: _createBody(),
      );

  _createAppBar() => WidgetTreeNode(
        depth: 1,
        preferredHeight: 30,
        padding: 0,
        margin: 0,
        child: WidgetTreeAppBar(text: 'AppBar'),
      );

  _createBody() => WidgetTreeNode(
      depth: 1,
      padding: 0,
      margin: 0,
      shadowColor: Colors.blue,
      backgroundColor: CustomColors.coseeLighterDarkGrey,
      child: _createBodyContent());

  _createBodyContent() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _createSlider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _createWidgetTreeNode('WidgetTree'),
              _createWidgetTreeNode('Scaffold'),
            ],
          )
        ],
      );

  _createSlider() => WidgetTreeNode(
      depth: 2,
      padding: 0,
      margin: 0,
      backgroundColor: Colors.white.withOpacity(0),
      child: RotatedBox(quarterTurns: 1, child: DepthSlider()));

  _createWidgetTreeNode(String text) => WidgetTreeNode(
        depth: 2,
        padding: 0,
        margin: 0,
        child: Container(
          padding: EdgeInsets.all(10),
          color: CustomColors.coseeMiddleGreen,
          child: Text(text),
        ),
      );
}
