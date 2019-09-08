import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutterrheinmain/widget_tree/view/provider/scaffold_text_provider.dart';
import 'package:flutterrheinmain/widget_tree/view/provider/widget_tree_provider.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/depth_slider.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/interactive_widget_tree/widget_tree_node.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/interactive_scaffold/interactive_scaffold.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/interactive_widget_tree/interactive_widget_tree.dart';

class ScaffoldBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _createChangeNotifierProviders(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _createVerticalDepthSlider(),
              _createInteractiveWidgetTree(),
              _createInteractiveScaffold(),
            ],
          ),
        ),
      );

  _createChangeNotifierProviders({Widget child}) => MultiProvider(providers: [
        ChangeNotifierProvider(builder: (_) => WidgetTreeProvider()),
        ChangeNotifierProvider(builder: (_) => ScaffoldTextProvider()),
      ], child: child);

  Widget _createVerticalDepthSlider() => RotatedBox(
        quarterTurns: 1,
        child: DepthSlider(),
      );

  _createInteractiveScaffold() => WidgetTreeNode(
        depth: 0,
        padding: 0,
        child: Container(
          width: 180,
          child: InteractiveScaffold(),
        ),
      );

  _createInteractiveWidgetTree() => InteractiveWidgetTree();
}
