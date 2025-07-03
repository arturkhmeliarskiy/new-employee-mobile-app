// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsDataModel _$NewsDataModelFromJson(Map<String, dynamic> json) {
  return _NewsDataModel.fromJson(json);
}

/// @nodoc
class _$NewsDataModelTearOff {
  const _$NewsDataModelTearOff();

  _NewsDataModel call(
      {required String title,
      required String content,
      required String logo,
      required bool active,
      required String agencyId,
      required String createdAt,
      required String updatedAt,
      required String color}) {
    return _NewsDataModel(
      title: title,
      content: content,
      logo: logo,
      active: active,
      agencyId: agencyId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      color: color,
    );
  }

  NewsDataModel fromJson(Map<String, Object?> json) {
    return NewsDataModel.fromJson(json);
  }
}

/// @nodoc
const $NewsDataModel = _$NewsDataModelTearOff();

/// @nodoc
mixin _$NewsDataModel {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  String get agencyId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDataModelCopyWith<NewsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDataModelCopyWith<$Res> {
  factory $NewsDataModelCopyWith(
          NewsDataModel value, $Res Function(NewsDataModel) then) =
      _$NewsDataModelCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String content,
      String logo,
      bool active,
      String agencyId,
      String createdAt,
      String updatedAt,
      String color});
}

/// @nodoc
class _$NewsDataModelCopyWithImpl<$Res>
    implements $NewsDataModelCopyWith<$Res> {
  _$NewsDataModelCopyWithImpl(this._value, this._then);

  final NewsDataModel _value;
  // ignore: unused_field
  final $Res Function(NewsDataModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? logo = freezed,
    Object? active = freezed,
    Object? agencyId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      agencyId: agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NewsDataModelCopyWith<$Res>
    implements $NewsDataModelCopyWith<$Res> {
  factory _$NewsDataModelCopyWith(
          _NewsDataModel value, $Res Function(_NewsDataModel) then) =
      __$NewsDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String content,
      String logo,
      bool active,
      String agencyId,
      String createdAt,
      String updatedAt,
      String color});
}

/// @nodoc
class __$NewsDataModelCopyWithImpl<$Res>
    extends _$NewsDataModelCopyWithImpl<$Res>
    implements _$NewsDataModelCopyWith<$Res> {
  __$NewsDataModelCopyWithImpl(
      _NewsDataModel _value, $Res Function(_NewsDataModel) _then)
      : super(_value, (v) => _then(v as _NewsDataModel));

  @override
  _NewsDataModel get _value => super._value as _NewsDataModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? logo = freezed,
    Object? active = freezed,
    Object? agencyId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? color = freezed,
  }) {
    return _then(_NewsDataModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      agencyId: agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsDataModel implements _NewsDataModel {
  const _$_NewsDataModel(
      {required this.title,
      required this.content,
      required this.logo,
      required this.active,
      required this.agencyId,
      required this.createdAt,
      required this.updatedAt,
      required this.color});

  factory _$_NewsDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsDataModelFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final String logo;
  @override
  final bool active;
  @override
  final String agencyId;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String color;

  @override
  String toString() {
    return 'NewsDataModel(title: $title, content: $content, logo: $logo, active: $active, agencyId: $agencyId, createdAt: $createdAt, updatedAt: $updatedAt, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewsDataModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.agencyId, agencyId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(agencyId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$NewsDataModelCopyWith<_NewsDataModel> get copyWith =>
      __$NewsDataModelCopyWithImpl<_NewsDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsDataModelToJson(this);
  }
}

abstract class _NewsDataModel implements NewsDataModel {
  const factory _NewsDataModel(
      {required String title,
      required String content,
      required String logo,
      required bool active,
      required String agencyId,
      required String createdAt,
      required String updatedAt,
      required String color}) = _$_NewsDataModel;

  factory _NewsDataModel.fromJson(Map<String, dynamic> json) =
      _$_NewsDataModel.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  String get logo;
  @override
  bool get active;
  @override
  String get agencyId;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$NewsDataModelCopyWith<_NewsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
