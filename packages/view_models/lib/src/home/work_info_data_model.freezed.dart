// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkInfoDataModel _$WorkInfoDataModelFromJson(Map<String, dynamic> json) {
  return _WorkInfoDataModel.fromJson(json);
}

/// @nodoc
class _$WorkInfoDataModelTearOff {
  const _$WorkInfoDataModelTearOff();

  _WorkInfoDataModel call(
      {required List<ContentDataModel> content, int? code}) {
    return _WorkInfoDataModel(
      content: content,
      code: code,
    );
  }

  WorkInfoDataModel fromJson(Map<String, Object?> json) {
    return WorkInfoDataModel.fromJson(json);
  }
}

/// @nodoc
const $WorkInfoDataModel = _$WorkInfoDataModelTearOff();

/// @nodoc
mixin _$WorkInfoDataModel {
  List<ContentDataModel> get content => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkInfoDataModelCopyWith<WorkInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkInfoDataModelCopyWith<$Res> {
  factory $WorkInfoDataModelCopyWith(
          WorkInfoDataModel value, $Res Function(WorkInfoDataModel) then) =
      _$WorkInfoDataModelCopyWithImpl<$Res>;
  $Res call({List<ContentDataModel> content, int? code});
}

/// @nodoc
class _$WorkInfoDataModelCopyWithImpl<$Res>
    implements $WorkInfoDataModelCopyWith<$Res> {
  _$WorkInfoDataModelCopyWithImpl(this._value, this._then);

  final WorkInfoDataModel _value;
  // ignore: unused_field
  final $Res Function(WorkInfoDataModel) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ContentDataModel>,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$WorkInfoDataModelCopyWith<$Res>
    implements $WorkInfoDataModelCopyWith<$Res> {
  factory _$WorkInfoDataModelCopyWith(
          _WorkInfoDataModel value, $Res Function(_WorkInfoDataModel) then) =
      __$WorkInfoDataModelCopyWithImpl<$Res>;
  @override
  $Res call({List<ContentDataModel> content, int? code});
}

/// @nodoc
class __$WorkInfoDataModelCopyWithImpl<$Res>
    extends _$WorkInfoDataModelCopyWithImpl<$Res>
    implements _$WorkInfoDataModelCopyWith<$Res> {
  __$WorkInfoDataModelCopyWithImpl(
      _WorkInfoDataModel _value, $Res Function(_WorkInfoDataModel) _then)
      : super(_value, (v) => _then(v as _WorkInfoDataModel));

  @override
  _WorkInfoDataModel get _value => super._value as _WorkInfoDataModel;

  @override
  $Res call({
    Object? content = freezed,
    Object? code = freezed,
  }) {
    return _then(_WorkInfoDataModel(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ContentDataModel>,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkInfoDataModel implements _WorkInfoDataModel {
  const _$_WorkInfoDataModel({required this.content, this.code});

  factory _$_WorkInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorkInfoDataModelFromJson(json);

  @override
  final List<ContentDataModel> content;
  @override
  final int? code;

  @override
  String toString() {
    return 'WorkInfoDataModel(content: $content, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkInfoDataModel &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$WorkInfoDataModelCopyWith<_WorkInfoDataModel> get copyWith =>
      __$WorkInfoDataModelCopyWithImpl<_WorkInfoDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkInfoDataModelToJson(this);
  }
}

abstract class _WorkInfoDataModel implements WorkInfoDataModel {
  const factory _WorkInfoDataModel(
      {required List<ContentDataModel> content,
      int? code}) = _$_WorkInfoDataModel;

  factory _WorkInfoDataModel.fromJson(Map<String, dynamic> json) =
      _$_WorkInfoDataModel.fromJson;

  @override
  List<ContentDataModel> get content;
  @override
  int? get code;
  @override
  @JsonKey(ignore: true)
  _$WorkInfoDataModelCopyWith<_WorkInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
