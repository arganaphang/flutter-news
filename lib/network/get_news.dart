import 'package:dio/dio.dart';
import 'package:hello/constant/config.dart';
import 'package:hello/entity/news.dart';

Future<List<News>> getnews(String category) async {
  final response = await Dio().get("$apiurl/$category");
  return (response.data['data'] as List<dynamic>)
      .map((e) => News.fromJson(e))
      .toList();
}
