// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsInfoDataModel _$NewsInfoDataModelFromJson(Map<String, dynamic> json) {
  return _NewsInfoDataModel.fromJson(json);
}

/// @nodoc
class _$NewsInfoDataModelTearOff {
  const _$NewsInfoDataModelTearOff();

  _NewsInfoDataModel call(
      {required List<NewsDataModel> news,
      required int totalCount,
      required int code}) {
    return _NewsInfoDataModel(
      news: news,
      totalCount: totalCount,
      code: code,
    );
  }

  NewsInfoDataModel fromJson(Map<String, Object?> json) {
    return NewsInfoDataModel.fromJson(json);
  }
}

/// @nodoc
const $NewsInfoDataModel = _$NewsInfoDataModelTearOff();

/// @nodoc
mixin _$NewsInfoDataModel {
  List<NewsDataModel> get news => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsInfoDataModelCopyWith<NewsInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsInfoDataModelCopyWith<$Res> {
  factory $NewsInfoDataModelCopyWith(
          NewsInfoDataModel value, $Res Function(NewsInfoDataModel) then) =
      _$NewsInfoDataModelCopyWithImpl<$Res>;
  $Res call({List<NewsDataModel> news, int totalCount, int code});
}

/// @nodoc
class _$NewsInfoDataModelCopyWithImpl<$Res>
    implements $NewsInfoDataModelCopyWith<$Res> {
  _$NewsInfoDataModelCopyWithImpl(this._value, this._then);

  final NewsInfoDataModel _value;
  // ignore: unused_field
  final $Res Function(NewsInfoDataModel) _then;

  @override
  $Res call({
    Object? news = freezed,
    Object? totalCount = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsDataModel>,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$NewsInfoDataModelCopyWith<$Res>
    implements $NewsInfoDataModelCopyWith<$Res> {
  factory _$NewsInfoDataModelCopyWith(
          _NewsInfoDataModel value, $Res Function(_NewsInfoDataModel) then) =
      __$NewsInfoDataModelCopyWithImpl<$Res>;
  @override
  $Res call({List<NewsDataModel> news, int totalCount, int code});
}

/// @nodoc
class __$NewsInfoDataModelCopyWithImpl<$Res>
    extends _$NewsInfoDataModelCopyWithImpl<$Res>
    implements _$NewsInfoDataModelCopyWith<$Res> {
  __$NewsInfoDataModelCopyWithImpl(
      _NewsInfoDataModel _value, $Res Function(_NewsInfoDataModel) _then)
      : super(_value, (v) => _then(v as _NewsInfoDataModel));

  @override
  _NewsInfoDataModel get _value => super._value as _NewsInfoDataModel;

  @override
  $Res call({
    Object? news = freezed,
    Object? totalCount = freezed,
    Object? code = freezed,
  }) {
    return _then(_NewsInfoDataModel(
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsDataModel>,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsInfoDataModel implements _NewsInfoDataModel {
  const _$_NewsInfoDataModel(
      {required this.news, required this.totalCount, required this.code});

  factory _$_NewsInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsInfoDataModelFromJson(json);

  @override
  final List<NewsDataModel> news;
  @override
  final int totalCount;
  @override
  final int code;

  @override
  String toString() {
    return 'NewsInfoDataModel(news: $news, totalCount: $totalCount, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewsInfoDataModel &&
            const DeepCollectionEquality().equals(other.news, news) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(news),
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$NewsInfoDataModelCopyWith<_NewsInfoDataModel> get copyWith =>
      __$NewsInfoDataModelCopyWithImpl<_NewsInfoDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsInfoDataModelToJson(this);
  }
}

abstract class _NewsInfoDataModel implements NewsInfoDataModel {
  const factory _NewsInfoDataModel(
      {required List<NewsDataModel> news,
      required int totalCount,
      required int code}) = _$_NewsInfoDataModel;

  factory _NewsInfoDataModel.fromJson(Map<String, dynamic> json) =
      _$_NewsInfoDataModel.fromJson;

  @override
  List<NewsDataModel> get news;
  @override
  int get totalCount;
  @override
  int get code;
  @override
  @JsonKey(ignore: true)
  _$NewsInfoDataModelCopyWith<_NewsInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
