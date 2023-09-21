import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class GithubWebView extends StatefulWidget {
  const GithubWebView({super.key});

  static String id ='Github Screen';



  @override
  _GithubWebViewState createState() => _GithubWebViewState();
}

class _GithubWebViewState extends State<GithubWebView> {
  final String url = 'https://github.com/ammar74'; // Replace with your website URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('My Github'),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}