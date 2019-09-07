import 'package:flutter/material.dart';

abstract class AbstractAppBar extends StatelessWidget implements PreferredSizeWidget {
  AbstractAppBar({Key key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
