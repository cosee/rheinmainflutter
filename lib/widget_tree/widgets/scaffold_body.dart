import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutterrheinmain/widget_tree/provider/widget_tree_provider.dart';
import 'package:flutterrheinmain/widget_tree/widgets/depth_slider.dart';

class ScaffoldBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _createChangeNotifierProvider(
        child: Row(
          children: <Widget>[
            _createVerticalDepthSlider(),
          ],
        ),
      );

  _createChangeNotifierProvider({Widget child}) => ChangeNotifierProvider(
      builder: (_) => WidgetTreeProvider(), child: child);

  Widget _createVerticalDepthSlider() => RotatedBox(
        quarterTurns: 1,
        child: DepthSlider(),
      );
}
