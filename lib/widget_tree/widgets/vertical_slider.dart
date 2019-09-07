import 'package:flutter/material.dart';
import 'package:flutterrheinmain/core/resources/colors.dart';

class VerticalSlider extends StatefulWidget {
  VerticalSlider(this.positions);
  final int positions;
  @override
  _VerticalSliderState createState() => _VerticalSliderState();
}

class _VerticalSliderState extends State<VerticalSlider> {
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) => RotatedBox(
        quarterTurns: 1,
        child: _createSlider(),
      );

  _createSlider() => Slider(
        label: 'Depth',
        divisions: widget.positions,
        inactiveColor: CustomColors.coseeMiddleGreen,
        activeColor: CustomColors.coseeLightGreen,
        value: sliderValue,
        min: 0,
        max: widget.positions.toDouble(),
        onChanged: (double value) => setState(() {
          //TODO: lift state up
          print(value);
          return sliderValue = value;
        }),
      );
}
