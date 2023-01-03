import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? constroller;
  final String homeUrl = 'https://blog.codefactory.ai';
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Code Factory'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (constroller == null) {
                return;
              }
              constroller!.loadUrl(homeUrl);
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          constroller = controller;
        },
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
