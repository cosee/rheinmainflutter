import 'package:flutter/widgets.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_page.dart';
import 'package:flutterrheinmain/core/view/widgets/presentation_page/cosee_text.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FlutterForWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      CoseePage(titleText: 'Flutter for web', child: _createContent());

  Widget _createContent() => Column(
    
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CoseeText('TODO: change URL to flutter for web host'),
          _createWebView(),
        ],
      );

  Widget _createWebView() => Expanded(child:
   WebView(
        initialUrl: 'https://www.google.com',
      ),);
}
