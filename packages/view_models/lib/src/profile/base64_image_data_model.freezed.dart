// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base64_image_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Base64ImageDataModel _$Base64ImageDataModelFromJson(Map<String, dynamic> json) {
  return _Base64ImageDataModel.fromJson(json);
}

/// @nodoc
class _$Base64ImageDataModelTearOff {
  const _$Base64ImageDataModelTearOff();

  _Base64ImageDataModel call({int? code, String? file}) {
    return _Base64ImageDataModel(
      code: code,
      file: file,
    );
  }

  Base64ImageDataModel fromJson(Map<String, Object?> json) {
    return Base64ImageDataModel.fromJson(json);
  }
}

/// @nodoc
const $Base64ImageDataModel = _$Base64ImageDataModelTearOff();

/// @nodoc
mixin _$Base64ImageDataModel {
  int? get code => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Base64ImageDataModelCopyWith<Base64ImageDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Base64ImageDataModelCopyWith<$Res> {
  factory $Base64ImageDataModelCopyWith(Base64ImageDataModel value,
          $Res Function(Base64ImageDataModel) then) =
      _$Base64ImageDataModelCopyWithImpl<$Res>;
  $Res call({int? code, String? file});
}

/// @nodoc
class _$Base64ImageDataModelCopyWithImpl<$Res>
    implements $Base64ImageDataModelCopyWith<$Res> {
  _$Base64ImageDataModelCopyWithImpl(this._value, this._then);

  final Base64ImageDataModel _value;
  // ignore: unused_field
  final $Res Function(Base64ImageDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$Base64ImageDataModelCopyWith<$Res>
    implements $Base64ImageDataModelCopyWith<$Res> {
  factory _$Base64ImageDataModelCopyWith(_Base64ImageDataModel value,
          $Res Function(_Base64ImageDataModel) then) =
      __$Base64ImageDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int? code, String? file});
}

/// @nodoc
class __$Base64ImageDataModelCopyWithImpl<$Res>
    extends _$Base64ImageDataModelCopyWithImpl<$Res>
    implements _$Base64ImageDataModelCopyWith<$Res> {
  __$Base64ImageDataModelCopyWithImpl(
      _Base64ImageDataModel _value, $Res Function(_Base64ImageDataModel) _then)
      : super(_value, (v) => _then(v as _Base64ImageDataModel));

  @override
  _Base64ImageDataModel get _value => super._value as _Base64ImageDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? file = freezed,
  }) {
    return _then(_Base64ImageDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Base64ImageDataModel implements _Base64ImageDataModel {
  const _$_Base64ImageDataModel({this.code, this.file});

  factory _$_Base64ImageDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_Base64ImageDataModelFromJson(json);

  @override
  final int? code;
  @override
  final String? file;

  @override
  String toString() {
    return 'Base64ImageDataModel(code: $code, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Base64ImageDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$Base64ImageDataModelCopyWith<_Base64ImageDataModel> get copyWith =>
      __$Base64ImageDataModelCopyWithImpl<_Base64ImageDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_Base64ImageDataModelToJson(this);
  }
}

abstract class _Base64ImageDataModel implements Base64ImageDataModel {
  const factory _Base64ImageDataModel({int? code, String? file}) =
      _$_Base64ImageDataModel;

  factory _Base64ImageDataModel.fromJson(Map<String, dynamic> json) =
      _$_Base64ImageDataModel.fromJson;

  @override
  int? get code;
  @override
  String? get file;
  @override
  @JsonKey(ignore: true)
  _$Base64ImageDataModelCopyWith<_Base64ImageDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
