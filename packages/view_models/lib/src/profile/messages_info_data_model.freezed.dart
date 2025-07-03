// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messages_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessagesInfoDataModel _$MessagesInfoDataModelFromJson(
    Map<String, dynamic> json) {
  return _MessagesInfoDataModel.fromJson(json);
}

/// @nodoc
class _$MessagesInfoDataModelTearOff {
  const _$MessagesInfoDataModelTearOff();

  _MessagesInfoDataModel call({required int code, required String message}) {
    return _MessagesInfoDataModel(
      code: code,
      message: message,
    );
  }

  MessagesInfoDataModel fromJson(Map<String, Object?> json) {
    return MessagesInfoDataModel.fromJson(json);
  }
}

/// @nodoc
const $MessagesInfoDataModel = _$MessagesInfoDataModelTearOff();

/// @nodoc
mixin _$MessagesInfoDataModel {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesInfoDataModelCopyWith<MessagesInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesInfoDataModelCopyWith<$Res> {
  factory $MessagesInfoDataModelCopyWith(MessagesInfoDataModel value,
          $Res Function(MessagesInfoDataModel) then) =
      _$MessagesInfoDataModelCopyWithImpl<$Res>;
  $Res call({int code, String message});
}

/// @nodoc
class _$MessagesInfoDataModelCopyWithImpl<$Res>
    implements $MessagesInfoDataModelCopyWith<$Res> {
  _$MessagesInfoDataModelCopyWithImpl(this._value, this._then);

  final MessagesInfoDataModel _value;
  // ignore: unused_field
  final $Res Function(MessagesInfoDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MessagesInfoDataModelCopyWith<$Res>
    implements $MessagesInfoDataModelCopyWith<$Res> {
  factory _$MessagesInfoDataModelCopyWith(_MessagesInfoDataModel value,
          $Res Function(_MessagesInfoDataModel) then) =
      __$MessagesInfoDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int code, String message});
}

/// @nodoc
class __$MessagesInfoDataModelCopyWithImpl<$Res>
    extends _$MessagesInfoDataModelCopyWithImpl<$Res>
    implements _$MessagesInfoDataModelCopyWith<$Res> {
  __$MessagesInfoDataModelCopyWithImpl(_MessagesInfoDataModel _value,
      $Res Function(_MessagesInfoDataModel) _then)
      : super(_value, (v) => _then(v as _MessagesInfoDataModel));

  @override
  _MessagesInfoDataModel get _value => super._value as _MessagesInfoDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_MessagesInfoDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessagesInfoDataModel implements _MessagesInfoDataModel {
  const _$_MessagesInfoDataModel({required this.code, required this.message});

  factory _$_MessagesInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessagesInfoDataModelFromJson(json);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'MessagesInfoDataModel(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessagesInfoDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$MessagesInfoDataModelCopyWith<_MessagesInfoDataModel> get copyWith =>
      __$MessagesInfoDataModelCopyWithImpl<_MessagesInfoDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessagesInfoDataModelToJson(this);
  }
}

abstract class _MessagesInfoDataModel implements MessagesInfoDataModel {
  const factory _MessagesInfoDataModel(
      {required int code, required String message}) = _$_MessagesInfoDataModel;

  factory _MessagesInfoDataModel.fromJson(Map<String, dynamic> json) =
      _$_MessagesInfoDataModel.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$MessagesInfoDataModelCopyWith<_MessagesInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
