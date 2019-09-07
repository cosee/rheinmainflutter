import 'package:flutter/material.dart';
import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/widget_tree/widgets/interactive_scaffold/interactive_scaffold.dart';
import 'package:provider/provider.dart';

import 'package:flutterrheinmain/widget_tree/provider/widget_tree_provider.dart';
import 'package:flutterrheinmain/widget_tree/widgets/depth_slider.dart';

class ScaffoldBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _createChangeNotifierProvider(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _createVerticalDepthSlider(),
              _createInteractiveScaffold(),
            ],
          ),
        ),
      );

  _createChangeNotifierProvider({Widget child}) => ChangeNotifierProvider(
      builder: (_) => WidgetTreeProvider(), child: child);

  Widget _createVerticalDepthSlider() => RotatedBox(
        quarterTurns: 1,
        child: DepthSlider(),
      );

  _createInteractiveScaffold() => Container(
        width: 200,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: CustomColors.coseeMiddleGreen.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10)
        ]),
        child: InteractiveScaffold(),
      );
}
