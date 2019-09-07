import 'package:flutter/material.dart';

abstract class AbstractAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  AbstractAppBar({Key key, this.preferredHeight}) : super(key: key);

  final double preferredHeight;

  @override
  Size get preferredSize => Size.fromHeight(preferredHeight ?? kToolbarHeight);
}
