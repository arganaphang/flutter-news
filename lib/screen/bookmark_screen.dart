import 'package:flutter/material.dart';
import 'package:hello/dummy.dart';
import 'package:hello/widget/news_card.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, idx) {
        return NewsCard(news: news);
      },
      separatorBuilder: (ctx, idx) {
        return const SizedBox(height: 18);
      },
      itemCount: 100,
    );
  }
}
