import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wdm_card/screens/nointernet_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewStack extends StatefulWidget {
  const WebViewStack({required this.controller, Key? key}) : super(key: key);

  final Completer<WebViewController> controller;

  @override
  State<WebViewStack> createState() => _WebViewStackState();
}

class _WebViewStackState extends State<WebViewStack> {
  var loadingPercentage = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 30),
      child: WebView(
        initialUrl: 'https://wdm.market-syria.com/',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (webViewController) {
          widget.controller.complete(webViewController);
          webViewController.runJavascript(
              "document.getElementsByClassName('header-bg')[0].style.display='none';");
          webViewController.runJavascript(
              "document.getElementsByTagName('id=footer')[0].style.display='none'");
        },

        // ... to here.
        onPageStarted: (url) {
          setState(() async {
            loadingPercentage = 0;
          });
        },
        onWebResourceError: (ErrorWidget) {
          setState(() {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const NoInternet()),
            );
          });
        },
        onProgress: (progress) {
          setState(() {
            loadingPercentage = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
          });
        },
      ),
    );
  }
}
