import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/access_native_code_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/build_modes_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/declarative_ui_code_page.dart.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/declarative_ui_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/fast_deployment_demo.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/flutter_explanation.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/flutter_for_web_explanation.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/flutter_for_web_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/intro_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/outro_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/state_management_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/widget_build_method_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/widget_page.dart';
import 'package:flutterrheinmain/widget_tree/view/pages/widget_tree_page.dart';

class PresentationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: pages.length,
        child: TabBarView(children: pages),
      );

  final List<Widget> pages = <Widget>[
    IntroPage(),
    FlutterExplanationPage(),
    DeclarativeUiPage(),
    FlutterForWebPage(),
    DeclarativeUiCodePage(),
    WidgetPage(),
    WidgetBuildMethodPage(),
    WidgetTreePage(),
    StateManagementPage(),
    FastDeploymentDemoPage(),
    BuildModesPage(),
    AccessNativeCodePage(),
    FlutterForWebExplanationPage(),
    OutroPage(),
  ];
}
