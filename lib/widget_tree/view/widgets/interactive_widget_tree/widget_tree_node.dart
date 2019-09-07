import 'package:flutter/material.dart';
import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/widget_tree/view/decoration/glowing_shadow_decoration.dart';
import 'package:flutterrheinmain/widget_tree/view/provider/widget_tree_provider.dart';
import 'package:provider/provider.dart';

class WidgetTreeNode extends StatelessWidget {
  WidgetTreeNode(this.depth, this.text);

  final int depth;
  final String text;

  @override
  Widget build(BuildContext context) => Consumer<WidgetTreeProvider>(
      builder: (_, WidgetTreeProvider provider, __) => _createNode(provider));

  Widget _createNode(WidgetTreeProvider provider) => Container(
        decoration: _getDecoration(provider.depth.toInt()),
        padding: EdgeInsets.all(10),
        child: Text(text),
      );

  _getDecoration(int selectedDepth) => selectedDepth == depth
      ? GlowingShadowDecoration(
          color: CustomColors.coseeLightGreen,
          backgroundColor: Colors.white,
        )
      : BoxDecoration(color: Colors.white);
}
