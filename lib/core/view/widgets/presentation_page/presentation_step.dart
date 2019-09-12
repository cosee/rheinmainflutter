import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutterrheinmain/presentation/view/provider/presentation_state_provider.dart';

class PresentationStep extends StatelessWidget {
  PresentationStep(this.child, this.step);

  final Widget child;
  final int step;
  @override
  Widget build(BuildContext context) => Consumer<PresentationStepProvider>(
        builder: (_, provider, __) =>
            provider.step < step ? Container() : child,
      );

}
