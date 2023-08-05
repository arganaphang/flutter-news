import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/page/home_page.dart';
import 'package:hello/page/news_page.dart';
import 'package:hello/page/search_page.dart';
import 'package:hello/page/web_news_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: HomePage.routeName,
      getPages: [
        GetPage(name: HomePage.routeName, page: () => const HomePage()),
        GetPage(name: NewsPage.routeName, page: () => const NewsPage()),
        GetPage(name: SearchPage.routeName, page: () => const SearchPage()),
        GetPage(name: WebNewsPage.routeName, page: () => const WebNewsPage()),
      ],
    );
  }
}
