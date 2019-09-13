import 'package:flutter/material.dart';
import 'package:flutterrheinmain/web/view/server/http_server.dart';

class FlutterForWebPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FlutterForWebPageState();
}

class _FlutterForWebPageState extends State<FlutterForWebPage> {
  FlutterHttpServer server = FlutterHttpServer();

  @override
  void initState() {
    server.startWebServer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container();
}
