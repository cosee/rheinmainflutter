import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutterrheinmain/widget_tree/view/decoration/glowing_shadow_decoration.dart';
import 'package:flutterrheinmain/widget_tree/view/provider/widget_tree_provider.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/depth_slider.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/interactive_scaffold/interactive_scaffold.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/interactive_widget_tree/interactive_widget_tree.dart';

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
              _createInteractiveWidgetTree(),
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
        width: 180,
        decoration: GlowingShadowDecoration(),
        child: InteractiveScaffold(),
      );

      _createInteractiveWidgetTree() => InteractiveWidgetTree();
}
