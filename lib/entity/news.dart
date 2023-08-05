import 'package:freezed_annotation/freezed_annotation.dart';
part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class NewsImage with _$NewsImage {
  const factory NewsImage({
    required String small,
    required String large,
  }) = _NewsImage;
  factory NewsImage.fromJson(Map<String, dynamic> json) =>
      _$NewsImageFromJson(json);
}

@freezed
class News with _$News {
  const factory News({
    required String title,
    required String link,
    required NewsImage image,
    required String isoDate,
  }) = _News;
  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
