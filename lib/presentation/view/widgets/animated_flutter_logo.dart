import 'package:flutter/material.dart';
import 'package:animator/animator.dart';

class AnimatedFlutterLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Animator(
        tween: Tween<double>(begin: 100, end: 150),
        cycles: 0,
        duration: Duration(seconds: 2),
        builder: (anim) => Container(
          height: anim.value,
          width: anim.value,
          child: FlutterLogo(),
        ),
      );
}
