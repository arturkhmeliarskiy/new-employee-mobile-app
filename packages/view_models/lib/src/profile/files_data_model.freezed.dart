// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'files_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilesDataModel _$FilesDataModelFromJson(Map<String, dynamic> json) {
  return _FilesDataModel.fromJson(json);
}

/// @nodoc
class _$FilesDataModelTearOff {
  const _$FilesDataModelTearOff();

  _FilesDataModel call(
      {required int code, required List<FilesInfoDataModel> files}) {
    return _FilesDataModel(
      code: code,
      files: files,
    );
  }

  FilesDataModel fromJson(Map<String, Object?> json) {
    return FilesDataModel.fromJson(json);
  }
}

/// @nodoc
const $FilesDataModel = _$FilesDataModelTearOff();

/// @nodoc
mixin _$FilesDataModel {
  int get code => throw _privateConstructorUsedError;
  List<FilesInfoDataModel> get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilesDataModelCopyWith<FilesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesDataModelCopyWith<$Res> {
  factory $FilesDataModelCopyWith(
          FilesDataModel value, $Res Function(FilesDataModel) then) =
      _$FilesDataModelCopyWithImpl<$Res>;
  $Res call({int code, List<FilesInfoDataModel> files});
}

/// @nodoc
class _$FilesDataModelCopyWithImpl<$Res>
    implements $FilesDataModelCopyWith<$Res> {
  _$FilesDataModelCopyWithImpl(this._value, this._then);

  final FilesDataModel _value;
  // ignore: unused_field
  final $Res Function(FilesDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesInfoDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$FilesDataModelCopyWith<$Res>
    implements $FilesDataModelCopyWith<$Res> {
  factory _$FilesDataModelCopyWith(
          _FilesDataModel value, $Res Function(_FilesDataModel) then) =
      __$FilesDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int code, List<FilesInfoDataModel> files});
}

/// @nodoc
class __$FilesDataModelCopyWithImpl<$Res>
    extends _$FilesDataModelCopyWithImpl<$Res>
    implements _$FilesDataModelCopyWith<$Res> {
  __$FilesDataModelCopyWithImpl(
      _FilesDataModel _value, $Res Function(_FilesDataModel) _then)
      : super(_value, (v) => _then(v as _FilesDataModel));

  @override
  _FilesDataModel get _value => super._value as _FilesDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? files = freezed,
  }) {
    return _then(_FilesDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesInfoDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilesDataModel implements _FilesDataModel {
  const _$_FilesDataModel({required this.code, required this.files});

  factory _$_FilesDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_FilesDataModelFromJson(json);

  @override
  final int code;
  @override
  final List<FilesInfoDataModel> files;

  @override
  String toString() {
    return 'FilesDataModel(code: $code, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilesDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.files, files));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(files));

  @JsonKey(ignore: true)
  @override
  _$FilesDataModelCopyWith<_FilesDataModel> get copyWith =>
      __$FilesDataModelCopyWithImpl<_FilesDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilesDataModelToJson(this);
  }
}

abstract class _FilesDataModel implements FilesDataModel {
  const factory _FilesDataModel(
      {required int code,
      required List<FilesInfoDataModel> files}) = _$_FilesDataModel;

  factory _FilesDataModel.fromJson(Map<String, dynamic> json) =
      _$_FilesDataModel.fromJson;

  @override
  int get code;
  @override
  List<FilesInfoDataModel> get files;
  @override
  @JsonKey(ignore: true)
  _$FilesDataModelCopyWith<_FilesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
