import 'package:flutter/material.dart';
import 'package:flutterrheinmain/core/resources/colors.dart';
import 'package:flutterrheinmain/web/view/server/http_server.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/steps/stepwise_presentation_page.dart';
import 'package:flutterrheinmain/presentation/view/widgets/presentation_page/text/cosee_text.dart';

class FlutterForWebPage extends StatefulWidget {
  @override
  _FlutterForWebPageState createState() => _FlutterForWebPageState();
}

class _FlutterForWebPageState extends State<FlutterForWebPage> {
  FlutterHttpServer server = FlutterHttpServer();

  WebViewController webViewController;

  @override
  void initState() {
    // server.startWebServer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => StepwisePresentationPage(
      titleText: 'Flutter for web', child: _createContent(context));

  Widget _createContent(BuildContext context) => Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createHeaderRow(),
          _createWebView(context),
        ],
      );

  Widget _createHeaderRow() => Row(
        children: <Widget>[
          CoseeText('Yow Dawg, i heared you like hybrid apps...'),
          IconButton(
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
              ),
              onPressed: () =>
                  webViewController.loadUrl('http://10.0.2.2:8000/')),
        ],
      );

  Widget _createWebView(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: size.height * 0.58,
        width: size.width * 0.9,
      decoration: BoxDecoration(border: Border.all(color: CustomColors.coseeLightGreen)),
        child: WebView(
          // initialUrl: 'http://localhost:8000/',
          initialUrl: 'http://10.0.2.2:8000/',
          debuggingEnabled: true,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) =>
              webViewController = controller,
        ),
      ),
    );
  }
}
