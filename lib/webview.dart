import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(AboutElection());

class AboutElection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'About Maval Election 2019';
    return MaterialApp(
      title:title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: WebViewInFlutter(),
    );
  }
}

class WebViewInFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'https://www.firstpost.com/lok-sabha-elections-2019/maharashtra/maval-election-result-2019-s13p33',
      hidden: true,
      appBar: AppBar(title: Text("Maharashtra Maval Election-2019")),
    );
  }
}