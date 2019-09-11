import 'package:flutter/material.dart';

import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_page.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_text.dart';

class FastDeploymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CoseePage(
        titleText: 'Fast Deployment',
        // child: _fastDeploymentExample(),
      );


  _fastDeploymentExample() => 
  // Center(
        // child: 
        Container(
          // margin: EdgeInsets.only(left: 200),
          // padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            // color: Colors.green,
            // borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            'Fast! Isn\'t it?',
            style: TextStyle(fontSize: 50),
          ),
        // ),
      );
}
