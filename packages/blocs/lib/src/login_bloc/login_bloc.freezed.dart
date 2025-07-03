// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  LogInEvent logIn(String email, String password) {
    return LogInEvent(
      email,
      password,
    );
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInEvent value) logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogInEvent value)? logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInEvent value)? logIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $LogInEventCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LogInEventCopyWith(
          LogInEvent value, $Res Function(LogInEvent) then) =
      _$LogInEventCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class _$LogInEventCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $LogInEventCopyWith<$Res> {
  _$LogInEventCopyWithImpl(LogInEvent _value, $Res Function(LogInEvent) _then)
      : super(_value, (v) => _then(v as LogInEvent));

  @override
  LogInEvent get _value => super._value as LogInEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(LogInEvent(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogInEvent implements LogInEvent {
  const _$LogInEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.logIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogInEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $LogInEventCopyWith<LogInEvent> get copyWith =>
      _$LogInEventCopyWithImpl<LogInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logIn,
  }) {
    return logIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
  }) {
    return logIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logIn,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInEvent value) logIn,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogInEvent value)? logIn,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInEvent value)? logIn,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class LogInEvent implements LoginEvent {
  const factory LogInEvent(String email, String password) = _$LogInEvent;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  $LogInEventCopyWith<LogInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  InitLogInState init() {
    return const InitLogInState();
  }

  LogInSuccessState logInSuccess(
      {required LoginStateDataModel model, required String message}) {
    return LogInSuccessState(
      model: model,
      message: message,
    );
  }

  LogInFailureState logInFailure({required LoginStateDataModel model}) {
    return LogInFailureState(
      model: model,
    );
  }

  LogInInProgressState logInInProgress() {
    return const LogInInProgressState();
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(LoginStateDataModel model, String message)
        logInSuccess,
    required TResult Function(LoginStateDataModel model) logInFailure,
    required TResult Function() logInInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(LoginStateDataModel model, String message)? logInSuccess,
    TResult Function(LoginStateDataModel model)? logInFailure,
    TResult Function()? logInInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(LoginStateDataModel model, String message)? logInSuccess,
    TResult Function(LoginStateDataModel model)? logInFailure,
    TResult Function()? logInInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLogInState value) init,
    required TResult Function(LogInSuccessState value) logInSuccess,
    required TResult Function(LogInFailureState value) logInFailure,
    required TResult Function(LogInInProgressState value) logInInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgressState value)? logInInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgressState value)? logInInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class $InitLogInStateCopyWith<$Res> {
  factory $InitLogInStateCopyWith(
          InitLogInState value, $Res Function(InitLogInState) then) =
      _$InitLogInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitLogInStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $InitLogInStateCopyWith<$Res> {
  _$InitLogInStateCopyWithImpl(
      InitLogInState _value, $Res Function(InitLogInState) _then)
      : super(_value, (v) => _then(v as InitLogInState));

  @override
  InitLogInState get _value => super._value as InitLogInState;
}

/// @nodoc

class _$InitLogInState implements InitLogInState {
  const _$InitLogInState();

  @override
  String toString() {
    return 'LoginState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitLogInState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(LoginStateDataModel model, String message)
        logInSuccess,
    required TResult Function(LoginStateDataModel model) logInFailure,
    required TResult Function() logInInProgress,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(LoginStateDataModel model, String message)? logInSuccess,
    TResult Function(LoginStateDataModel model)? logInFailure,
    TResult Function()? logInInProgress,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(LoginStateDataModel model, String message)? logInSuccess,
    TResult Function(LoginStateDataModel model)? logInFailure,
    TResult Function()? logInInProgress,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLogInState value) init,
    required TResult Function(LogInSuccessState value) logInSuccess,
    required TResult Function(LogInFailureState value) logInFailure,
    required TResult Function(LogInInProgressState value) logInInProgress,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgressState value)? logInInProgress,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgressState value)? logInInProgress,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitLogInState implements LoginState {
  const factory InitLogInState() = _$InitLogInState;
}

/// @nodoc
abstract class $LogInSuccessStateCopyWith<$Res> {
  factory $LogInSuccessStateCopyWith(
          LogInSuccessState value, $Res Function(LogInSuccessState) then) =
      _$LogInSuccessStateCopyWithImpl<$Res>;
  $Res call({LoginStateDataModel model, String message});

  $LoginStateDataModelCopyWith<$Res> get model;
}

/// @nodoc
class _$LogInSuccessStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LogInSuccessStateCopyWith<$Res> {
  _$LogInSuccessStateCopyWithImpl(
      LogInSuccessState _value, $Res Function(LogInSuccessState) _then)
      : super(_value, (v) => _then(v as LogInSuccessState));

  @override
  LogInSuccessState get _value => super._value as LogInSuccessState;

  @override
  $Res call({
    Object? model = freezed,
    Object? message = freezed,
  }) {
    return _then(LogInSuccessState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LoginStateDataModel,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $LoginStateDataModelCopyWith<$Res> get model {
    return $LoginStateDataModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$LogInSuccessState implements LogInSuccessState {
  const _$LogInSuccessState({required this.model, required this.message});

  @override
  final LoginStateDataModel model;
  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.logInSuccess(model: $model, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogInSuccessState &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $LogInSuccessStateCopyWith<LogInSuccessState> get copyWith =>
      _$LogInSuccessStateCopyWithImpl<LogInSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(LoginStateDataModel model, String message)
        logInSuccess,
    required TResult Function(LoginStateDataModel model) logInFailure,
    required TResult Function() logInInProgress,
  }) {
    return logInSuccess(model, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(LoginStateDataModel model, String message)? logInSuccess,
    TResult Function(LoginStateDataModel model)? logInFailure,
    TResult Function()? logInInProgress,
  }) {
    return logInSuccess?.call(model, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(LoginStateDataModel model, String message)? logInSuccess,
    TResult Function(LoginStateDataModel model)? logInFailure,
    TResult Function()? logInInProgress,
    required TResult orElse(),
  }) {
    if (logInSuccess != null) {
      return logInSuccess(model, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLogInState value) init,
    required TResult Function(LogInSuccessState value) logInSuccess,
    required TResult Function(LogInFailureState value) logInFailure,
    required TResult Function(LogInInProgressState value) logInInProgress,
  }) {
    return logInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgressState value)? logInInProgress,
  }) {
    return logInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgressState value)? logInInProgress,
    required TResult orElse(),
  }) {
    if (logInSuccess != null) {
      return logInSuccess(this);
    }
    return orElse();
  }
}

abstract class LogInSuccessState implements LoginState {
  const factory LogInSuccessState(
      {required LoginStateDataModel model,
      required String message}) = _$LogInSuccessState;

  LoginStateDataModel get model;
  String get message;
  @JsonKey(ignore: true)
  $LogInSuccessStateCopyWith<LogInSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInFailureStateCopyWith<$Res> {
  factory $LogInFailureStateCopyWith(
          LogInFailureState value, $Res Function(LogInFailureState) then) =
      _$LogInFailureStateCopyWithImpl<$Res>;
  $Res call({LoginStateDataModel model});

  $LoginStateDataModelCopyWith<$Res> get model;
}

/// @nodoc
class _$LogInFailureStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LogInFailureStateCopyWith<$Res> {
  _$LogInFailureStateCopyWithImpl(
      LogInFailureState _value, $Res Function(LogInFailureState) _then)
      : super(_value, (v) => _then(v as LogInFailureState));

  @override
  LogInFailureState get _value => super._value as LogInFailureState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(LogInFailureState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LoginStateDataModel,
    ));
  }

  @override
  $LoginStateDataModelCopyWith<$Res> get model {
    return $LoginStateDataModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$LogInFailureState implements LogInFailureState {
  const _$LogInFailureState({required this.model});

  @override
  final LoginStateDataModel model;

  @override
  String toString() {
    return 'LoginState.logInFailure(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogInFailureState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  $LogInFailureStateCopyWith<LogInFailureState> get copyWith =>
      _$LogInFailureStateCopyWithImpl<LogInFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(LoginStateDataModel model, String message)
        logInSuccess,
    required TResult Function(LoginStateDataModel model) logInFailure,
    required TResult Function() logInInProgress,
  }) {
    return logInFailure(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(LoginStateDataModel model, String message)? logInSuccess,
    TResult Function(LoginStateDataModel model)? logInFailure,
    TResult Function()? logInInProgress,
  }) {
    return logInFailure?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(LoginStateDataModel model, String message)? logInSuccess,
    TResult Function(LoginStateDataModel model)? logInFailure,
    TResult Function()? logInInProgress,
    required TResult orElse(),
  }) {
    if (logInFailure != null) {
      return logInFailure(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLogInState value) init,
    required TResult Function(LogInSuccessState value) logInSuccess,
    required TResult Function(LogInFailureState value) logInFailure,
    required TResult Function(LogInInProgressState value) logInInProgress,
  }) {
    return logInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgressState value)? logInInProgress,
  }) {
    return logInFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgressState value)? logInInProgress,
    required TResult orElse(),
  }) {
    if (logInFailure != null) {
      return logInFailure(this);
    }
    return orElse();
  }
}

abstract class LogInFailureState implements LoginState {
  const factory LogInFailureState({required LoginStateDataModel model}) =
      _$LogInFailureState;

  LoginStateDataModel get model;
  @JsonKey(ignore: true)
  $LogInFailureStateCopyWith<LogInFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInInProgressStateCopyWith<$Res> {
  factory $LogInInProgressStateCopyWith(LogInInProgressState value,
          $Res Function(LogInInProgressState) then) =
      _$LogInInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInInProgressStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LogInInProgressStateCopyWith<$Res> {
  _$LogInInProgressStateCopyWithImpl(
      LogInInProgressState _value, $Res Function(LogInInProgressState) _then)
      : super(_value, (v) => _then(v as LogInInProgressState));

  @override
  LogInInProgressState get _value => super._value as LogInInProgressState;
}

/// @nodoc

class _$LogInInProgressState implements LogInInProgressState {
  const _$LogInInProgressState();

  @override
  String toString() {
    return 'LoginState.logInInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogInInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(LoginStateDataModel model, String message)
        logInSuccess,
    required TResult Function(LoginStateDataModel model) logInFailure,
    required TResult Function() logInInProgress,
  }) {
    return logInInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(LoginStateDataModel model, String message)? logInSuccess,
    TResult Function(LoginStateDataModel model)? logInFailure,
    TResult Function()? logInInProgress,
  }) {
    return logInInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(LoginStateDataModel model, String message)? logInSuccess,
    TResult Function(LoginStateDataModel model)? logInFailure,
    TResult Function()? logInInProgress,
    required TResult orElse(),
  }) {
    if (logInInProgress != null) {
      return logInInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLogInState value) init,
    required TResult Function(LogInSuccessState value) logInSuccess,
    required TResult Function(LogInFailureState value) logInFailure,
    required TResult Function(LogInInProgressState value) logInInProgress,
  }) {
    return logInInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgressState value)? logInInProgress,
  }) {
    return logInInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLogInState value)? init,
    TResult Function(LogInSuccessState value)? logInSuccess,
    TResult Function(LogInFailureState value)? logInFailure,
    TResult Function(LogInInProgressState value)? logInInProgress,
    required TResult orElse(),
  }) {
    if (logInInProgress != null) {
      return logInInProgress(this);
    }
    return orElse();
  }
}

abstract class LogInInProgressState implements LoginState {
  const factory LogInInProgressState() = _$LogInInProgressState;
}
