import 'dart:io';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http_server/http_server.dart';

class FlutterHttpServer {
  Future startWebServer() async {
    runZoned(() {
      HttpServer.bind('0.0.0.0', 8000).then((server) {
        print('Server running at: ${server.address.address}');
        server
            .transform(HttpBodyHandler())
            .listen((HttpRequestBody body) async {
          print('Request URI');
          print('YOOOOOOOOOO');

          switch (body.request.uri.toString()) {
            case '/':
              {
                print('YOOOOOOOOOO');

                String _content = await getFileData('index.html');
                body.request.response.statusCode = 200;
                body.request.response.headers
                    .set("Content-Type", "text/html; charset=utf-8");
                body.request.response.write(_content);
                body.request.response.close();
                break;
              }
            default:
              {
                body.request.response.statusCode = 404;
                body.request.response.write('Not found');
                body.request.response.close();
              }
          }
        });
      });
    }, onError: (e, stackTrace) => print('Oh noes! $e $stackTrace'));
  }

  Future<String> getFileData(String fileName) async {
    return await rootBundle.loadString('assets/web/$fileName');
  }
}
