import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutterrheinmain/widget_tree/view/provider/scaffold_text_provider.dart';
import 'package:flutterrheinmain/widget_tree/view/provider/widget_tree_provider.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/depth_slider.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/interactive_scaffold/interactive_scaffold.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/interactive_widget_tree/interactive_widget_tree.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/interactive_widget_tree/widget_tree_node.dart';
import 'package:flutterrheinmain/widget_tree/view/widgets/widget_tree_app_bar.dart';

class WidgetTreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: WidgetTreeAppBar(),
        body: _createScaffoldBody(),
      );

  Widget _createScaffoldBody() => _createChangeNotifierProviders(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 3,
            separatorBuilder: _separatorBuilder,
            itemBuilder: _listItemBuilder,
          ),
        ),
      );

  _createChangeNotifierProviders({Widget child}) => MultiProvider(providers: [
        ChangeNotifierProvider(builder: (_) => WidgetTreeProvider()),
        ChangeNotifierProvider(builder: (_) => ScaffoldTextProvider()),
      ], child: child);

  Widget _separatorBuilder(BuildContext context, int index) =>
      SizedBox(width: 50);

  Widget _listItemBuilder(ontext, int index) {
    switch (index) {
      case 0:
        return _createVerticalDepthSlider();
      case 1:
        return InteractiveWidgetTree();
      case 2:
        return _createInteractiveScaffold();
    }
    return Container();
  }

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
}
