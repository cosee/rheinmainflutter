import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/widget_tree/view/provider/widget_tree_provider.dart';

class DepthSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<WidgetTreeProvider>(
        builder: (_, provider, __) => _createSlider(provider),
      );

  _createSlider(WidgetTreeProvider provider) => Slider(
        label: 'Depth',
        inactiveColor: CustomColors.coseeMiddleGreen,
        activeColor: CustomColors.coseeLightGreen,
        min: 0,
        max: provider.maxDepth,
        divisions: provider.maxDepth.toInt(),
        value: provider.depth,
        onChanged: (double value) => provider.depth = value,
      );
}
