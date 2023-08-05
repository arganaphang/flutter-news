// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsImage _$$_NewsImageFromJson(Map<String, dynamic> json) => _$_NewsImage(
      small: json['small'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$$_NewsImageToJson(_$_NewsImage instance) =>
    <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => _$_News(
      title: json['title'] as String,
      link: json['link'] as String,
      image: NewsImage.fromJson(json['image'] as Map<String, dynamic>),
      isoDate: json['isoDate'] as String,
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'image': instance.image,
      'isoDate': instance.isoDate,
    };
