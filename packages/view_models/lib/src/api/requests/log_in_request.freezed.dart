// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'log_in_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogInRequest _$LogInRequestFromJson(Map<String, dynamic> json) {
  return _LogInRequest.fromJson(json);
}

/// @nodoc
class _$LogInRequestTearOff {
  const _$LogInRequestTearOff();

  _LogInRequest call({required String username, required String password}) {
    return _LogInRequest(
      username: username,
      password: password,
    );
  }

  LogInRequest fromJson(Map<String, Object?> json) {
    return LogInRequest.fromJson(json);
  }
}

/// @nodoc
const $LogInRequest = _$LogInRequestTearOff();

/// @nodoc
mixin _$LogInRequest {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogInRequestCopyWith<LogInRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInRequestCopyWith<$Res> {
  factory $LogInRequestCopyWith(
          LogInRequest value, $Res Function(LogInRequest) then) =
      _$LogInRequestCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$LogInRequestCopyWithImpl<$Res> implements $LogInRequestCopyWith<$Res> {
  _$LogInRequestCopyWithImpl(this._value, this._then);

  final LogInRequest _value;
  // ignore: unused_field
  final $Res Function(LogInRequest) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LogInRequestCopyWith<$Res>
    implements $LogInRequestCopyWith<$Res> {
  factory _$LogInRequestCopyWith(
          _LogInRequest value, $Res Function(_LogInRequest) then) =
      __$LogInRequestCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$LogInRequestCopyWithImpl<$Res> extends _$LogInRequestCopyWithImpl<$Res>
    implements _$LogInRequestCopyWith<$Res> {
  __$LogInRequestCopyWithImpl(
      _LogInRequest _value, $Res Function(_LogInRequest) _then)
      : super(_value, (v) => _then(v as _LogInRequest));

  @override
  _LogInRequest get _value => super._value as _LogInRequest;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_LogInRequest(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogInRequest implements _LogInRequest {
  const _$_LogInRequest({required this.username, required this.password});

  factory _$_LogInRequest.fromJson(Map<String, dynamic> json) =>
      _$$_LogInRequestFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LogInRequest(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogInRequest &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$LogInRequestCopyWith<_LogInRequest> get copyWith =>
      __$LogInRequestCopyWithImpl<_LogInRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogInRequestToJson(this);
  }
}

abstract class _LogInRequest implements LogInRequest {
  const factory _LogInRequest(
      {required String username, required String password}) = _$_LogInRequest;

  factory _LogInRequest.fromJson(Map<String, dynamic> json) =
      _$_LogInRequest.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$LogInRequestCopyWith<_LogInRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
