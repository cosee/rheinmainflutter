import 'package:flutter/material.dart';

import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/experimental_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/fast_deployment.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/flutter_explanation.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/flutter_for_web_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/intro_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/performance_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/programming_language.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/stateful_widget_page.dart';
import 'package:flutterrheinmain/presentation/view/pages/presentation_pages/stateless_widget_page.dart';
import 'package:flutterrheinmain/widget_tree/view/pages/widget_tree_page.dart';

class PresentationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: pages.length,
        child: TabBarView(children: pages),
      );

  final List<Widget> pages = <Widget>[
    // ExperimentalPage(),
    IntroPage(),
    FlutterExplanation(),
    ProgrammingLanguagePage(),
    FastDeploymentPage(),
    StatelessWidgetPage(),
    StatefulWidgetPage(),
    WidgetTreePage(),
    PerformancePage(),
    FlutterForWebPage(),
  ];
}
