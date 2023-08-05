import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:hello/widget/top_bar.dart';

class WebNewsPage extends StatelessWidget {
  static const routeName = "/web-news";
  const WebNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri(Get.arguments),
            ),
          ),
          const TopBar()
        ],
      ),
    );
  }
}
