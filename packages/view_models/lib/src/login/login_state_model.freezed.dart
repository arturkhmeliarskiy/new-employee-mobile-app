// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginStateDataModel _$LoginStateDataModelFromJson(Map<String, dynamic> json) {
  return _LoginStateDataModel.fromJson(json);
}

/// @nodoc
class _$LoginStateDataModelTearOff {
  const _$LoginStateDataModelTearOff();

  _LoginStateDataModel call(
      {required int code,
      required String message,
      UserDataModel? userDataModel}) {
    return _LoginStateDataModel(
      code: code,
      message: message,
      userDataModel: userDataModel,
    );
  }

  LoginStateDataModel fromJson(Map<String, Object?> json) {
    return LoginStateDataModel.fromJson(json);
  }
}

/// @nodoc
const $LoginStateDataModel = _$LoginStateDataModelTearOff();

/// @nodoc
mixin _$LoginStateDataModel {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UserDataModel? get userDataModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginStateDataModelCopyWith<LoginStateDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateDataModelCopyWith<$Res> {
  factory $LoginStateDataModelCopyWith(
          LoginStateDataModel value, $Res Function(LoginStateDataModel) then) =
      _$LoginStateDataModelCopyWithImpl<$Res>;
  $Res call({int code, String message, UserDataModel? userDataModel});

  $UserDataModelCopyWith<$Res>? get userDataModel;
}

/// @nodoc
class _$LoginStateDataModelCopyWithImpl<$Res>
    implements $LoginStateDataModelCopyWith<$Res> {
  _$LoginStateDataModelCopyWithImpl(this._value, this._then);

  final LoginStateDataModel _value;
  // ignore: unused_field
  final $Res Function(LoginStateDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? userDataModel = freezed,
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
      userDataModel: userDataModel == freezed
          ? _value.userDataModel
          : userDataModel // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
    ));
  }

  @override
  $UserDataModelCopyWith<$Res>? get userDataModel {
    if (_value.userDataModel == null) {
      return null;
    }

    return $UserDataModelCopyWith<$Res>(_value.userDataModel!, (value) {
      return _then(_value.copyWith(userDataModel: value));
    });
  }
}

/// @nodoc
abstract class _$LoginStateDataModelCopyWith<$Res>
    implements $LoginStateDataModelCopyWith<$Res> {
  factory _$LoginStateDataModelCopyWith(_LoginStateDataModel value,
          $Res Function(_LoginStateDataModel) then) =
      __$LoginStateDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int code, String message, UserDataModel? userDataModel});

  @override
  $UserDataModelCopyWith<$Res>? get userDataModel;
}

/// @nodoc
class __$LoginStateDataModelCopyWithImpl<$Res>
    extends _$LoginStateDataModelCopyWithImpl<$Res>
    implements _$LoginStateDataModelCopyWith<$Res> {
  __$LoginStateDataModelCopyWithImpl(
      _LoginStateDataModel _value, $Res Function(_LoginStateDataModel) _then)
      : super(_value, (v) => _then(v as _LoginStateDataModel));

  @override
  _LoginStateDataModel get _value => super._value as _LoginStateDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? userDataModel = freezed,
  }) {
    return _then(_LoginStateDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userDataModel: userDataModel == freezed
          ? _value.userDataModel
          : userDataModel // ignore: cast_nullable_to_non_nullable
              as UserDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginStateDataModel implements _LoginStateDataModel {
  const _$_LoginStateDataModel(
      {required this.code, required this.message, this.userDataModel});

  factory _$_LoginStateDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginStateDataModelFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final UserDataModel? userDataModel;

  @override
  String toString() {
    return 'LoginStateDataModel(code: $code, message: $message, userDataModel: $userDataModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginStateDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.userDataModel, userDataModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(userDataModel));

  @JsonKey(ignore: true)
  @override
  _$LoginStateDataModelCopyWith<_LoginStateDataModel> get copyWith =>
      __$LoginStateDataModelCopyWithImpl<_LoginStateDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginStateDataModelToJson(this);
  }
}

abstract class _LoginStateDataModel implements LoginStateDataModel {
  const factory _LoginStateDataModel(
      {required int code,
      required String message,
      UserDataModel? userDataModel}) = _$_LoginStateDataModel;

  factory _LoginStateDataModel.fromJson(Map<String, dynamic> json) =
      _$_LoginStateDataModel.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  UserDataModel? get userDataModel;
  @override
  @JsonKey(ignore: true)
  _$LoginStateDataModelCopyWith<_LoginStateDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
