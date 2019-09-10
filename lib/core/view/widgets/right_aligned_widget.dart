import 'package:flutter/cupertino.dart';

class RightAlignedWidget extends StatelessWidget {
  RightAlignedWidget(this.child);
  final Widget child;

  @override
  Widget build(BuildContext context) =>
      Row(children: <Widget>[Spacer(), child]);
}
