import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/cosee_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/text/cosee_text.dart';

class FlutterForWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      StepwisePresentationPage(titleText: 'Flutter for web', child: _createContent(context));

  Widget _createContent(BuildContext context) => Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CoseeText('Yow Dawg, i heared you like hybrid apps...'),
          Center(child: _createWebView(context)),
        ],
      );

  Widget _createWebView(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.6,
      width: size.width * 0.9,
      child: WebView(
        initialUrl: 'https://www.google.com',
      ),
    );
  }
}
