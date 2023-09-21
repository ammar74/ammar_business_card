import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class LinkedInWebView extends StatefulWidget {
  const LinkedInWebView({super.key});

  static String id ='LinkedIn Screen';


  @override
  _LinkedInWebViewState createState() => _LinkedInWebViewState();
}

class _LinkedInWebViewState extends State<LinkedInWebView> {
  final String url = 'https://www.linkedin.com/in/ammar-yasser-014'; // Replace with your website URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('My LinkedIn'),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}