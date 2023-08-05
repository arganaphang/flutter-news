import 'package:flutter/material.dart';
import 'package:hello/entity/news.dart';
import 'package:hello/widget/news_card.dart';

class ListScreen extends StatelessWidget {
  final List<News> lists;
  const ListScreen({
    super.key,
    required this.lists,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, idx) {
        return NewsCard(news: lists[idx]);
      },
      separatorBuilder: (ctx, idx) {
        return const SizedBox(height: 18);
      },
      itemCount: lists.length,
    );
  }
}
