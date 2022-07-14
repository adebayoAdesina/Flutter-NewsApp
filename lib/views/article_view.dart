import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/Util/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String blogUrl;
  const ArticleView({Key? key, required this.blogUrl}) : super(key: key);

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  final Completer<WebViewController> _completer =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'App',
              style: TextStyle(color: appBarColor),
            )
          ],
        ),
      ),
      body: WebView(
        initialUrl: widget.blogUrl,
        onWebViewCreated: (WebViewController webViewController) {
          _completer.complete(webViewController);
        },
      ),
    );
  }
}
