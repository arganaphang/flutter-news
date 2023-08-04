import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  static const routeName = "/news";
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Detail News Page"),
      ),
    );
  }
}
