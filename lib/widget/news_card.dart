import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/entity/news.dart';
import 'package:hello/page/web_news_page.dart';
import 'package:timeago/timeago.dart' as timeago;

class NewsCard extends StatelessWidget {
  final News news;
  const NewsCard({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed(NewsPage.routeName); // TODO: Update this into app render Page
        Get.toNamed(WebNewsPage.routeName, arguments: news.link);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              width: 120,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.15),
              ),
              child: Image.network(
                news.image.small,
                width: 120,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    news.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    timeago.format(DateTime.parse(news.isoDate)),
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
