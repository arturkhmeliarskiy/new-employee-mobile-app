// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messages_file_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessagesFileInfoDataModel _$MessagesFileInfoDataModelFromJson(
    Map<String, dynamic> json) {
  return _MessagesFileInfoDataModel.fromJson(json);
}

/// @nodoc
class _$MessagesFileInfoDataModelTearOff {
  const _$MessagesFileInfoDataModelTearOff();

  _MessagesFileInfoDataModel call(
      {required int code, required String result, required String fileName}) {
    return _MessagesFileInfoDataModel(
      code: code,
      result: result,
      fileName: fileName,
    );
  }

  MessagesFileInfoDataModel fromJson(Map<String, Object?> json) {
    return MessagesFileInfoDataModel.fromJson(json);
  }
}

/// @nodoc
const $MessagesFileInfoDataModel = _$MessagesFileInfoDataModelTearOff();

/// @nodoc
mixin _$MessagesFileInfoDataModel {
  int get code => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesFileInfoDataModelCopyWith<MessagesFileInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesFileInfoDataModelCopyWith<$Res> {
  factory $MessagesFileInfoDataModelCopyWith(MessagesFileInfoDataModel value,
          $Res Function(MessagesFileInfoDataModel) then) =
      _$MessagesFileInfoDataModelCopyWithImpl<$Res>;
  $Res call({int code, String result, String fileName});
}

/// @nodoc
class _$MessagesFileInfoDataModelCopyWithImpl<$Res>
    implements $MessagesFileInfoDataModelCopyWith<$Res> {
  _$MessagesFileInfoDataModelCopyWithImpl(this._value, this._then);

  final MessagesFileInfoDataModel _value;
  // ignore: unused_field
  final $Res Function(MessagesFileInfoDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? result = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MessagesFileInfoDataModelCopyWith<$Res>
    implements $MessagesFileInfoDataModelCopyWith<$Res> {
  factory _$MessagesFileInfoDataModelCopyWith(_MessagesFileInfoDataModel value,
          $Res Function(_MessagesFileInfoDataModel) then) =
      __$MessagesFileInfoDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int code, String result, String fileName});
}

/// @nodoc
class __$MessagesFileInfoDataModelCopyWithImpl<$Res>
    extends _$MessagesFileInfoDataModelCopyWithImpl<$Res>
    implements _$MessagesFileInfoDataModelCopyWith<$Res> {
  __$MessagesFileInfoDataModelCopyWithImpl(_MessagesFileInfoDataModel _value,
      $Res Function(_MessagesFileInfoDataModel) _then)
      : super(_value, (v) => _then(v as _MessagesFileInfoDataModel));

  @override
  _MessagesFileInfoDataModel get _value =>
      super._value as _MessagesFileInfoDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? result = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_MessagesFileInfoDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessagesFileInfoDataModel implements _MessagesFileInfoDataModel {
  const _$_MessagesFileInfoDataModel(
      {required this.code, required this.result, required this.fileName});

  factory _$_MessagesFileInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessagesFileInfoDataModelFromJson(json);

  @override
  final int code;
  @override
  final String result;
  @override
  final String fileName;

  @override
  String toString() {
    return 'MessagesFileInfoDataModel(code: $code, result: $result, fileName: $fileName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessagesFileInfoDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other.fileName, fileName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(fileName));

  @JsonKey(ignore: true)
  @override
  _$MessagesFileInfoDataModelCopyWith<_MessagesFileInfoDataModel>
      get copyWith =>
          __$MessagesFileInfoDataModelCopyWithImpl<_MessagesFileInfoDataModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessagesFileInfoDataModelToJson(this);
  }
}

abstract class _MessagesFileInfoDataModel implements MessagesFileInfoDataModel {
  const factory _MessagesFileInfoDataModel(
      {required int code,
      required String result,
      required String fileName}) = _$_MessagesFileInfoDataModel;

  factory _MessagesFileInfoDataModel.fromJson(Map<String, dynamic> json) =
      _$_MessagesFileInfoDataModel.fromJson;

  @override
  int get code;
  @override
  String get result;
  @override
  String get fileName;
  @override
  @JsonKey(ignore: true)
  _$MessagesFileInfoDataModelCopyWith<_MessagesFileInfoDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
