import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebViewPage extends StatefulWidget {
  final String name;
  final String link;

  WebViewPage(this.name, this.link);

  @override
  WebViewPageState createState() =>
      WebViewPageState(this.name, this.link);
}

class WebViewPageState extends State<WebViewPage> {
  final String name;
  final String link;

  WebViewPageState(this.name, this.link);

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.name),
        ),
        body: Column(children: [
          Expanded(
              child: WebView(
                
                  initialUrl: this.link,
                  javascriptMode: JavascriptMode.unrestricted
              )
          )
        ])
    );
  }
}