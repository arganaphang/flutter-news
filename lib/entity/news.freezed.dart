// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsImage _$NewsImageFromJson(Map<String, dynamic> json) {
  return _NewsImage.fromJson(json);
}

/// @nodoc
mixin _$NewsImage {
  String get small => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsImageCopyWith<NewsImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsImageCopyWith<$Res> {
  factory $NewsImageCopyWith(NewsImage value, $Res Function(NewsImage) then) =
      _$NewsImageCopyWithImpl<$Res, NewsImage>;
  @useResult
  $Res call({String small, String large});
}

/// @nodoc
class _$NewsImageCopyWithImpl<$Res, $Val extends NewsImage>
    implements $NewsImageCopyWith<$Res> {
  _$NewsImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsImageCopyWith<$Res> implements $NewsImageCopyWith<$Res> {
  factory _$$_NewsImageCopyWith(
          _$_NewsImage value, $Res Function(_$_NewsImage) then) =
      __$$_NewsImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String small, String large});
}

/// @nodoc
class __$$_NewsImageCopyWithImpl<$Res>
    extends _$NewsImageCopyWithImpl<$Res, _$_NewsImage>
    implements _$$_NewsImageCopyWith<$Res> {
  __$$_NewsImageCopyWithImpl(
      _$_NewsImage _value, $Res Function(_$_NewsImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? large = null,
  }) {
    return _then(_$_NewsImage(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsImage implements _NewsImage {
  const _$_NewsImage({required this.small, required this.large});

  factory _$_NewsImage.fromJson(Map<String, dynamic> json) =>
      _$$_NewsImageFromJson(json);

  @override
  final String small;
  @override
  final String large;

  @override
  String toString() {
    return 'NewsImage(small: $small, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsImage &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsImageCopyWith<_$_NewsImage> get copyWith =>
      __$$_NewsImageCopyWithImpl<_$_NewsImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsImageToJson(
      this,
    );
  }
}

abstract class _NewsImage implements NewsImage {
  const factory _NewsImage(
      {required final String small,
      required final String large}) = _$_NewsImage;

  factory _NewsImage.fromJson(Map<String, dynamic> json) =
      _$_NewsImage.fromJson;

  @override
  String get small;
  @override
  String get large;
  @override
  @JsonKey(ignore: true)
  _$$_NewsImageCopyWith<_$_NewsImage> get copyWith =>
      throw _privateConstructorUsedError;
}

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
mixin _$News {
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  NewsImage get image => throw _privateConstructorUsedError;
  String get isoDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res, News>;
  @useResult
  $Res call({String title, String link, NewsImage image, String isoDate});

  $NewsImageCopyWith<$Res> get image;
}

/// @nodoc
class _$NewsCopyWithImpl<$Res, $Val extends News>
    implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? image = null,
    Object? isoDate = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as NewsImage,
      isoDate: null == isoDate
          ? _value.isoDate
          : isoDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsImageCopyWith<$Res> get image {
    return $NewsImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$$_NewsCopyWith(_$_News value, $Res Function(_$_News) then) =
      __$$_NewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String link, NewsImage image, String isoDate});

  @override
  $NewsImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$_NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res, _$_News>
    implements _$$_NewsCopyWith<$Res> {
  __$$_NewsCopyWithImpl(_$_News _value, $Res Function(_$_News) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? image = null,
    Object? isoDate = null,
  }) {
    return _then(_$_News(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as NewsImage,
      isoDate: null == isoDate
          ? _value.isoDate
          : isoDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_News implements _News {
  const _$_News(
      {required this.title,
      required this.link,
      required this.image,
      required this.isoDate});

  factory _$_News.fromJson(Map<String, dynamic> json) => _$$_NewsFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final NewsImage image;
  @override
  final String isoDate;

  @override
  String toString() {
    return 'News(title: $title, link: $link, image: $image, isoDate: $isoDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_News &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isoDate, isoDate) || other.isoDate == isoDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, image, isoDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsCopyWith<_$_News> get copyWith =>
      __$$_NewsCopyWithImpl<_$_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsToJson(
      this,
    );
  }
}

abstract class _News implements News {
  const factory _News(
      {required final String title,
      required final String link,
      required final NewsImage image,
      required final String isoDate}) = _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override
  String get title;
  @override
  String get link;
  @override
  NewsImage get image;
  @override
  String get isoDate;
  @override
  @JsonKey(ignore: true)
  _$$_NewsCopyWith<_$_News> get copyWith => throw _privateConstructorUsedError;
}
