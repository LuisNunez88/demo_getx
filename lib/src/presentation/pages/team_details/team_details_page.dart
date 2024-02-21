import 'package:flutter/material.dart';
import 'package:webview_all/webview_all.dart';

class TeamDetailsPage extends StatelessWidget {
  final String url;
  const TeamDetailsPage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TeamDetailsPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Webview(
          url: url,
        ),
      ),
    );
  }
}
