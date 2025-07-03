// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agency_files_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgencyFilesDataModel _$AgencyFilesDataModelFromJson(Map<String, dynamic> json) {
  return _AgencyFilesDataModel.fromJson(json);
}

/// @nodoc
class _$AgencyFilesDataModelTearOff {
  const _$AgencyFilesDataModelTearOff();

  _AgencyFilesDataModel call(
      {required List<AgencyFilesInfoDataModel> files, int? code}) {
    return _AgencyFilesDataModel(
      files: files,
      code: code,
    );
  }

  AgencyFilesDataModel fromJson(Map<String, Object?> json) {
    return AgencyFilesDataModel.fromJson(json);
  }
}

/// @nodoc
const $AgencyFilesDataModel = _$AgencyFilesDataModelTearOff();

/// @nodoc
mixin _$AgencyFilesDataModel {
  List<AgencyFilesInfoDataModel> get files =>
      throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgencyFilesDataModelCopyWith<AgencyFilesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgencyFilesDataModelCopyWith<$Res> {
  factory $AgencyFilesDataModelCopyWith(AgencyFilesDataModel value,
          $Res Function(AgencyFilesDataModel) then) =
      _$AgencyFilesDataModelCopyWithImpl<$Res>;
  $Res call({List<AgencyFilesInfoDataModel> files, int? code});
}

/// @nodoc
class _$AgencyFilesDataModelCopyWithImpl<$Res>
    implements $AgencyFilesDataModelCopyWith<$Res> {
  _$AgencyFilesDataModelCopyWithImpl(this._value, this._then);

  final AgencyFilesDataModel _value;
  // ignore: unused_field
  final $Res Function(AgencyFilesDataModel) _then;

  @override
  $Res call({
    Object? files = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<AgencyFilesInfoDataModel>,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AgencyFilesDataModelCopyWith<$Res>
    implements $AgencyFilesDataModelCopyWith<$Res> {
  factory _$AgencyFilesDataModelCopyWith(_AgencyFilesDataModel value,
          $Res Function(_AgencyFilesDataModel) then) =
      __$AgencyFilesDataModelCopyWithImpl<$Res>;
  @override
  $Res call({List<AgencyFilesInfoDataModel> files, int? code});
}

/// @nodoc
class __$AgencyFilesDataModelCopyWithImpl<$Res>
    extends _$AgencyFilesDataModelCopyWithImpl<$Res>
    implements _$AgencyFilesDataModelCopyWith<$Res> {
  __$AgencyFilesDataModelCopyWithImpl(
      _AgencyFilesDataModel _value, $Res Function(_AgencyFilesDataModel) _then)
      : super(_value, (v) => _then(v as _AgencyFilesDataModel));

  @override
  _AgencyFilesDataModel get _value => super._value as _AgencyFilesDataModel;

  @override
  $Res call({
    Object? files = freezed,
    Object? code = freezed,
  }) {
    return _then(_AgencyFilesDataModel(
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<AgencyFilesInfoDataModel>,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AgencyFilesDataModel implements _AgencyFilesDataModel {
  const _$_AgencyFilesDataModel({required this.files, this.code});

  factory _$_AgencyFilesDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_AgencyFilesDataModelFromJson(json);

  @override
  final List<AgencyFilesInfoDataModel> files;
  @override
  final int? code;

  @override
  String toString() {
    return 'AgencyFilesDataModel(files: $files, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AgencyFilesDataModel &&
            const DeepCollectionEquality().equals(other.files, files) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(files),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$AgencyFilesDataModelCopyWith<_AgencyFilesDataModel> get copyWith =>
      __$AgencyFilesDataModelCopyWithImpl<_AgencyFilesDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgencyFilesDataModelToJson(this);
  }
}

abstract class _AgencyFilesDataModel implements AgencyFilesDataModel {
  const factory _AgencyFilesDataModel(
      {required List<AgencyFilesInfoDataModel> files,
      int? code}) = _$_AgencyFilesDataModel;

  factory _AgencyFilesDataModel.fromJson(Map<String, dynamic> json) =
      _$_AgencyFilesDataModel.fromJson;

  @override
  List<AgencyFilesInfoDataModel> get files;
  @override
  int? get code;
  @override
  @JsonKey(ignore: true)
  _$AgencyFilesDataModelCopyWith<_AgencyFilesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
