import 'package:flutter/material.dart';
import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/widget_tree/view/decoration/glowing_shadow_decoration.dart';
import 'package:flutterrheinmain/widget_tree/view/provider/widget_tree_provider.dart';
import 'package:provider/provider.dart';

class WidgetTreeNode extends StatelessWidget implements PreferredSizeWidget {
  WidgetTreeNode(
      {@required this.depth,
      @required this.child,
      this.preferredHeight,
      this.padding = 5,
      this.margin = 5,
      this.shadowColor = Colors.red});

  final int depth;
  final Widget child;
  final double preferredHeight;
  final double padding;
  final double margin;
  final Color shadowColor;

  //Since it needs to pose as an AppBar as well
  @override
  Size get preferredSize => Size.fromHeight(preferredHeight ?? kToolbarHeight);

  @override
  Widget build(BuildContext context) => Consumer<WidgetTreeProvider>(
      builder: (_, WidgetTreeProvider provider, __) => _createNode(provider));

  Widget _createNode(WidgetTreeProvider provider) => Container(
        decoration: _getDecoration(provider.depth.toInt()),
        padding: EdgeInsets.all(padding),
        margin: EdgeInsets.all(margin),
        child: child,
      );

  _getDecoration(int selectedDepth) => selectedDepth == depth
      ? GlowingShadowDecoration(
          color: shadowColor,
          backgroundColor: Colors.white,
        )
      : BoxDecoration(color: Colors.white);
}
