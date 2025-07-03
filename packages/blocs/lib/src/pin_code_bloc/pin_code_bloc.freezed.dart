// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pin_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PinCodeEventTearOff {
  const _$PinCodeEventTearOff();

  PinCodeRequestedEvent pinCodeRequest(String pinCode) {
    return PinCodeRequestedEvent(
      pinCode,
    );
  }

  BiometricRequestEvent biometricRequest() {
    return const BiometricRequestEvent();
  }

  ForgotPinCodeEvent forgotPinCode() {
    return const ForgotPinCodeEvent();
  }
}

/// @nodoc
const $PinCodeEvent = _$PinCodeEventTearOff();

/// @nodoc
mixin _$PinCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode) pinCodeRequest,
    required TResult Function() biometricRequest,
    required TResult Function() forgotPinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode)? pinCodeRequest,
    TResult Function()? biometricRequest,
    TResult Function()? forgotPinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode)? pinCodeRequest,
    TResult Function()? biometricRequest,
    TResult Function()? forgotPinCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PinCodeRequestedEvent value) pinCodeRequest,
    required TResult Function(BiometricRequestEvent value) biometricRequest,
    required TResult Function(ForgotPinCodeEvent value) forgotPinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PinCodeRequestedEvent value)? pinCodeRequest,
    TResult Function(BiometricRequestEvent value)? biometricRequest,
    TResult Function(ForgotPinCodeEvent value)? forgotPinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PinCodeRequestedEvent value)? pinCodeRequest,
    TResult Function(BiometricRequestEvent value)? biometricRequest,
    TResult Function(ForgotPinCodeEvent value)? forgotPinCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinCodeEventCopyWith<$Res> {
  factory $PinCodeEventCopyWith(
          PinCodeEvent value, $Res Function(PinCodeEvent) then) =
      _$PinCodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PinCodeEventCopyWithImpl<$Res> implements $PinCodeEventCopyWith<$Res> {
  _$PinCodeEventCopyWithImpl(this._value, this._then);

  final PinCodeEvent _value;
  // ignore: unused_field
  final $Res Function(PinCodeEvent) _then;
}

/// @nodoc
abstract class $PinCodeRequestedEventCopyWith<$Res> {
  factory $PinCodeRequestedEventCopyWith(PinCodeRequestedEvent value,
          $Res Function(PinCodeRequestedEvent) then) =
      _$PinCodeRequestedEventCopyWithImpl<$Res>;
  $Res call({String pinCode});
}

/// @nodoc
class _$PinCodeRequestedEventCopyWithImpl<$Res>
    extends _$PinCodeEventCopyWithImpl<$Res>
    implements $PinCodeRequestedEventCopyWith<$Res> {
  _$PinCodeRequestedEventCopyWithImpl(
      PinCodeRequestedEvent _value, $Res Function(PinCodeRequestedEvent) _then)
      : super(_value, (v) => _then(v as PinCodeRequestedEvent));

  @override
  PinCodeRequestedEvent get _value => super._value as PinCodeRequestedEvent;

  @override
  $Res call({
    Object? pinCode = freezed,
  }) {
    return _then(PinCodeRequestedEvent(
      pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PinCodeRequestedEvent implements PinCodeRequestedEvent {
  const _$PinCodeRequestedEvent(this.pinCode);

  @override
  final String pinCode;

  @override
  String toString() {
    return 'PinCodeEvent.pinCodeRequest(pinCode: $pinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PinCodeRequestedEvent &&
            const DeepCollectionEquality().equals(other.pinCode, pinCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pinCode));

  @JsonKey(ignore: true)
  @override
  $PinCodeRequestedEventCopyWith<PinCodeRequestedEvent> get copyWith =>
      _$PinCodeRequestedEventCopyWithImpl<PinCodeRequestedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode) pinCodeRequest,
    required TResult Function() biometricRequest,
    required TResult Function() forgotPinCode,
  }) {
    return pinCodeRequest(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode)? pinCodeRequest,
    TResult Function()? biometricRequest,
    TResult Function()? forgotPinCode,
  }) {
    return pinCodeRequest?.call(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode)? pinCodeRequest,
    TResult Function()? biometricRequest,
    TResult Function()? forgotPinCode,
    required TResult orElse(),
  }) {
    if (pinCodeRequest != null) {
      return pinCodeRequest(pinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PinCodeRequestedEvent value) pinCodeRequest,
    required TResult Function(BiometricRequestEvent value) biometricRequest,
    required TResult Function(ForgotPinCodeEvent value) forgotPinCode,
  }) {
    return pinCodeRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PinCodeRequestedEvent value)? pinCodeRequest,
    TResult Function(BiometricRequestEvent value)? biometricRequest,
    TResult Function(ForgotPinCodeEvent value)? forgotPinCode,
  }) {
    return pinCodeRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PinCodeRequestedEvent value)? pinCodeRequest,
    TResult Function(BiometricRequestEvent value)? biometricRequest,
    TResult Function(ForgotPinCodeEvent value)? forgotPinCode,
    required TResult orElse(),
  }) {
    if (pinCodeRequest != null) {
      return pinCodeRequest(this);
    }
    return orElse();
  }
}

abstract class PinCodeRequestedEvent implements PinCodeEvent {
  const factory PinCodeRequestedEvent(String pinCode) = _$PinCodeRequestedEvent;

  String get pinCode;
  @JsonKey(ignore: true)
  $PinCodeRequestedEventCopyWith<PinCodeRequestedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricRequestEventCopyWith<$Res> {
  factory $BiometricRequestEventCopyWith(BiometricRequestEvent value,
          $Res Function(BiometricRequestEvent) then) =
      _$BiometricRequestEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BiometricRequestEventCopyWithImpl<$Res>
    extends _$PinCodeEventCopyWithImpl<$Res>
    implements $BiometricRequestEventCopyWith<$Res> {
  _$BiometricRequestEventCopyWithImpl(
      BiometricRequestEvent _value, $Res Function(BiometricRequestEvent) _then)
      : super(_value, (v) => _then(v as BiometricRequestEvent));

  @override
  BiometricRequestEvent get _value => super._value as BiometricRequestEvent;
}

/// @nodoc

class _$BiometricRequestEvent implements BiometricRequestEvent {
  const _$BiometricRequestEvent();

  @override
  String toString() {
    return 'PinCodeEvent.biometricRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BiometricRequestEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode) pinCodeRequest,
    required TResult Function() biometricRequest,
    required TResult Function() forgotPinCode,
  }) {
    return biometricRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode)? pinCodeRequest,
    TResult Function()? biometricRequest,
    TResult Function()? forgotPinCode,
  }) {
    return biometricRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode)? pinCodeRequest,
    TResult Function()? biometricRequest,
    TResult Function()? forgotPinCode,
    required TResult orElse(),
  }) {
    if (biometricRequest != null) {
      return biometricRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PinCodeRequestedEvent value) pinCodeRequest,
    required TResult Function(BiometricRequestEvent value) biometricRequest,
    required TResult Function(ForgotPinCodeEvent value) forgotPinCode,
  }) {
    return biometricRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PinCodeRequestedEvent value)? pinCodeRequest,
    TResult Function(BiometricRequestEvent value)? biometricRequest,
    TResult Function(ForgotPinCodeEvent value)? forgotPinCode,
  }) {
    return biometricRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PinCodeRequestedEvent value)? pinCodeRequest,
    TResult Function(BiometricRequestEvent value)? biometricRequest,
    TResult Function(ForgotPinCodeEvent value)? forgotPinCode,
    required TResult orElse(),
  }) {
    if (biometricRequest != null) {
      return biometricRequest(this);
    }
    return orElse();
  }
}

abstract class BiometricRequestEvent implements PinCodeEvent {
  const factory BiometricRequestEvent() = _$BiometricRequestEvent;
}

/// @nodoc
abstract class $ForgotPinCodeEventCopyWith<$Res> {
  factory $ForgotPinCodeEventCopyWith(
          ForgotPinCodeEvent value, $Res Function(ForgotPinCodeEvent) then) =
      _$ForgotPinCodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPinCodeEventCopyWithImpl<$Res>
    extends _$PinCodeEventCopyWithImpl<$Res>
    implements $ForgotPinCodeEventCopyWith<$Res> {
  _$ForgotPinCodeEventCopyWithImpl(
      ForgotPinCodeEvent _value, $Res Function(ForgotPinCodeEvent) _then)
      : super(_value, (v) => _then(v as ForgotPinCodeEvent));

  @override
  ForgotPinCodeEvent get _value => super._value as ForgotPinCodeEvent;
}

/// @nodoc

class _$ForgotPinCodeEvent implements ForgotPinCodeEvent {
  const _$ForgotPinCodeEvent();

  @override
  String toString() {
    return 'PinCodeEvent.forgotPinCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ForgotPinCodeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode) pinCodeRequest,
    required TResult Function() biometricRequest,
    required TResult Function() forgotPinCode,
  }) {
    return forgotPinCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode)? pinCodeRequest,
    TResult Function()? biometricRequest,
    TResult Function()? forgotPinCode,
  }) {
    return forgotPinCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode)? pinCodeRequest,
    TResult Function()? biometricRequest,
    TResult Function()? forgotPinCode,
    required TResult orElse(),
  }) {
    if (forgotPinCode != null) {
      return forgotPinCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PinCodeRequestedEvent value) pinCodeRequest,
    required TResult Function(BiometricRequestEvent value) biometricRequest,
    required TResult Function(ForgotPinCodeEvent value) forgotPinCode,
  }) {
    return forgotPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PinCodeRequestedEvent value)? pinCodeRequest,
    TResult Function(BiometricRequestEvent value)? biometricRequest,
    TResult Function(ForgotPinCodeEvent value)? forgotPinCode,
  }) {
    return forgotPinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PinCodeRequestedEvent value)? pinCodeRequest,
    TResult Function(BiometricRequestEvent value)? biometricRequest,
    TResult Function(ForgotPinCodeEvent value)? forgotPinCode,
    required TResult orElse(),
  }) {
    if (forgotPinCode != null) {
      return forgotPinCode(this);
    }
    return orElse();
  }
}

abstract class ForgotPinCodeEvent implements PinCodeEvent {
  const factory ForgotPinCodeEvent() = _$ForgotPinCodeEvent;
}

/// @nodoc
class _$PinCodeStateTearOff {
  const _$PinCodeStateTearOff();

  InitPinCodeState init() {
    return const InitPinCodeState();
  }

  SuccessPinCode successPinCode() {
    return const SuccessPinCode();
  }

  FailPinCode failPinCode() {
    return const FailPinCode();
  }

  LoadingPinCodeState loading() {
    return const LoadingPinCodeState();
  }

  ForgotPinCodeState forgotPinCode() {
    return const ForgotPinCodeState();
  }
}

/// @nodoc
const $PinCodeState = _$PinCodeStateTearOff();

/// @nodoc
mixin _$PinCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() successPinCode,
    required TResult Function() failPinCode,
    required TResult Function() loading,
    required TResult Function() forgotPinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? successPinCode,
    TResult Function()? failPinCode,
    TResult Function()? loading,
    TResult Function()? forgotPinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? successPinCode,
    TResult Function()? failPinCode,
    TResult Function()? loading,
    TResult Function()? forgotPinCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitPinCodeState value) init,
    required TResult Function(SuccessPinCode value) successPinCode,
    required TResult Function(FailPinCode value) failPinCode,
    required TResult Function(LoadingPinCodeState value) loading,
    required TResult Function(ForgotPinCodeState value) forgotPinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitPinCodeState value)? init,
    TResult Function(SuccessPinCode value)? successPinCode,
    TResult Function(FailPinCode value)? failPinCode,
    TResult Function(LoadingPinCodeState value)? loading,
    TResult Function(ForgotPinCodeState value)? forgotPinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitPinCodeState value)? init,
    TResult Function(SuccessPinCode value)? successPinCode,
    TResult Function(FailPinCode value)? failPinCode,
    TResult Function(LoadingPinCodeState value)? loading,
    TResult Function(ForgotPinCodeState value)? forgotPinCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinCodeStateCopyWith<$Res> {
  factory $PinCodeStateCopyWith(
          PinCodeState value, $Res Function(PinCodeState) then) =
      _$PinCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PinCodeStateCopyWithImpl<$Res> implements $PinCodeStateCopyWith<$Res> {
  _$PinCodeStateCopyWithImpl(this._value, this._then);

  final PinCodeState _value;
  // ignore: unused_field
  final $Res Function(PinCodeState) _then;
}

/// @nodoc
abstract class $InitPinCodeStateCopyWith<$Res> {
  factory $InitPinCodeStateCopyWith(
          InitPinCodeState value, $Res Function(InitPinCodeState) then) =
      _$InitPinCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitPinCodeStateCopyWithImpl<$Res>
    extends _$PinCodeStateCopyWithImpl<$Res>
    implements $InitPinCodeStateCopyWith<$Res> {
  _$InitPinCodeStateCopyWithImpl(
      InitPinCodeState _value, $Res Function(InitPinCodeState) _then)
      : super(_value, (v) => _then(v as InitPinCodeState));

  @override
  InitPinCodeState get _value => super._value as InitPinCodeState;
}

/// @nodoc

class _$InitPinCodeState implements InitPinCodeState {
  const _$InitPinCodeState();

  @override
  String toString() {
    return 'PinCodeState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitPinCodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() successPinCode,
    required TResult Function() failPinCode,
    required TResult Function() loading,
    required TResult Function() forgotPinCode,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? successPinCode,
    TResult Function()? failPinCode,
    TResult Function()? loading,
    TResult Function()? forgotPinCode,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? successPinCode,
    TResult Function()? failPinCode,
    TResult Function()? loading,
    TResult Function()? forgotPinCode,
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
    required TResult Function(InitPinCodeState value) init,
    required TResult Function(SuccessPinCode value) successPinCode,
    required TResult Function(FailPinCode value) failPinCode,
    required TResult Function(LoadingPinCodeState value) loading,
    required TResult Function(ForgotPinCodeState value) forgotPinCode,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitPinCodeState value)? init,
    TResult Function(SuccessPinCode value)? successPinCode,
    TResult Function(FailPinCode value)? failPinCode,
    TResult Function(LoadingPinCodeState value)? loading,
    TResult Function(ForgotPinCodeState value)? forgotPinCode,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitPinCodeState value)? init,
    TResult Function(SuccessPinCode value)? successPinCode,
    TResult Function(FailPinCode value)? failPinCode,
    TResult Function(LoadingPinCodeState value)? loading,
    TResult Function(ForgotPinCodeState value)? forgotPinCode,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitPinCodeState implements PinCodeState {
  const factory InitPinCodeState() = _$InitPinCodeState;
}

/// @nodoc
abstract class $SuccessPinCodeCopyWith<$Res> {
  factory $SuccessPinCodeCopyWith(
          SuccessPinCode value, $Res Function(SuccessPinCode) then) =
      _$SuccessPinCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessPinCodeCopyWithImpl<$Res>
    extends _$PinCodeStateCopyWithImpl<$Res>
    implements $SuccessPinCodeCopyWith<$Res> {
  _$SuccessPinCodeCopyWithImpl(
      SuccessPinCode _value, $Res Function(SuccessPinCode) _then)
      : super(_value, (v) => _then(v as SuccessPinCode));

  @override
  SuccessPinCode get _value => super._value as SuccessPinCode;
}

/// @nodoc

class _$SuccessPinCode implements SuccessPinCode {
  const _$SuccessPinCode();

  @override
  String toString() {
    return 'PinCodeState.successPinCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuccessPinCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() successPinCode,
    required TResult Function() failPinCode,
    required TResult Function() loading,
    required TResult Function() forgotPinCode,
  }) {
    return successPinCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? successPinCode,
    TResult Function()? failPinCode,
    TResult Function()? loading,
    TResult Function()? forgotPinCode,
  }) {
    return successPinCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? successPinCode,
    TResult Function()? failPinCode,
    TResult Function()? loading,
    TResult Function()? forgotPinCode,
    required TResult orElse(),
  }) {
    if (successPinCode != null) {
      return successPinCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitPinCodeState value) init,
    required TResult Function(SuccessPinCode value) successPinCode,
    required TResult Function(FailPinCode value) failPinCode,
    required TResult Function(LoadingPinCodeState value) loading,
    required TResult Function(ForgotPinCodeState value) forgotPinCode,
  }) {
    return successPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitPinCodeState value)? init,
    TResult Function(SuccessPinCode value)? successPinCode,
    TResult Function(FailPinCode value)? failPinCode,
    TResult Function(LoadingPinCodeState value)? loading,
    TResult Function(ForgotPinCodeState value)? forgotPinCode,
  }) {
    return successPinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitPinCodeState value)? init,
    TResult Function(SuccessPinCode value)? successPinCode,
    TResult Function(FailPinCode value)? failPinCode,
    TResult Function(LoadingPinCodeState value)? loading,
    TResult Function(ForgotPinCodeState value)? forgotPinCode,
    required TResult orElse(),
  }) {
    if (successPinCode != null) {
      return successPinCode(this);
    }
    return orElse();
  }
}

abstract class SuccessPinCode implements PinCodeState {
  const factory SuccessPinCode() = _$SuccessPinCode;
}

/// @nodoc
abstract class $FailPinCodeCopyWith<$Res> {
  factory $FailPinCodeCopyWith(
          FailPinCode value, $Res Function(FailPinCode) then) =
      _$FailPinCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailPinCodeCopyWithImpl<$Res> extends _$PinCodeStateCopyWithImpl<$Res>
    implements $FailPinCodeCopyWith<$Res> {
  _$FailPinCodeCopyWithImpl(
      FailPinCode _value, $Res Function(FailPinCode) _then)
      : super(_value, (v) => _then(v as FailPinCode));

  @override
  FailPinCode get _value => super._value as FailPinCode;
}

/// @nodoc

class _$FailPinCode implements FailPinCode {
  const _$FailPinCode();

  @override
  String toString() {
    return 'PinCodeState.failPinCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FailPinCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() successPinCode,
    required TResult Function() failPinCode,
    required TResult Function() loading,
    required TResult Function() forgotPinCode,
  }) {
    return failPinCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? successPinCode,
    TResult Function()? failPinCode,
    TResult Function()? loading,
    TResult Function()? forgotPinCode,
  }) {
    return failPinCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? successPinCode,
    TResult Function()? failPinCode,
    TResult Function()? loading,
    TResult Function()? forgotPinCode,
    required TResult orElse(),
  }) {
    if (failPinCode != null) {
      return failPinCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitPinCodeState value) init,
    required TResult Function(SuccessPinCode value) successPinCode,
    required TResult Function(FailPinCode value) failPinCode,
    required TResult Function(LoadingPinCodeState value) loading,
    required TResult Function(ForgotPinCodeState value) forgotPinCode,
  }) {
    return failPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitPinCodeState value)? init,
    TResult Function(SuccessPinCode value)? successPinCode,
    TResult Function(FailPinCode value)? failPinCode,
    TResult Function(LoadingPinCodeState value)? loading,
    TResult Function(ForgotPinCodeState value)? forgotPinCode,
  }) {
    return failPinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitPinCodeState value)? init,
    TResult Function(SuccessPinCode value)? successPinCode,
    TResult Function(FailPinCode value)? failPinCode,
    TResult Function(LoadingPinCodeState value)? loading,
    TResult Function(ForgotPinCodeState value)? forgotPinCode,
    required TResult orElse(),
  }) {
    if (failPinCode != null) {
      return failPinCode(this);
    }
    return orElse();
  }
}

abstract class FailPinCode implements PinCodeState {
  const factory FailPinCode() = _$FailPinCode;
}

/// @nodoc
abstract class $LoadingPinCodeStateCopyWith<$Res> {
  factory $LoadingPinCodeStateCopyWith(
          LoadingPinCodeState value, $Res Function(LoadingPinCodeState) then) =
      _$LoadingPinCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingPinCodeStateCopyWithImpl<$Res>
    extends _$PinCodeStateCopyWithImpl<$Res>
    implements $LoadingPinCodeStateCopyWith<$Res> {
  _$LoadingPinCodeStateCopyWithImpl(
      LoadingPinCodeState _value, $Res Function(LoadingPinCodeState) _then)
      : super(_value, (v) => _then(v as LoadingPinCodeState));

  @override
  LoadingPinCodeState get _value => super._value as LoadingPinCodeState;
}

/// @nodoc

class _$LoadingPinCodeState implements LoadingPinCodeState {
  const _$LoadingPinCodeState();

  @override
  String toString() {
    return 'PinCodeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingPinCodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() successPinCode,
    required TResult Function() failPinCode,
    required TResult Function() loading,
    required TResult Function() forgotPinCode,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? successPinCode,
    TResult Function()? failPinCode,
    TResult Function()? loading,
    TResult Function()? forgotPinCode,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? successPinCode,
    TResult Function()? failPinCode,
    TResult Function()? loading,
    TResult Function()? forgotPinCode,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitPinCodeState value) init,
    required TResult Function(SuccessPinCode value) successPinCode,
    required TResult Function(FailPinCode value) failPinCode,
    required TResult Function(LoadingPinCodeState value) loading,
    required TResult Function(ForgotPinCodeState value) forgotPinCode,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitPinCodeState value)? init,
    TResult Function(SuccessPinCode value)? successPinCode,
    TResult Function(FailPinCode value)? failPinCode,
    TResult Function(LoadingPinCodeState value)? loading,
    TResult Function(ForgotPinCodeState value)? forgotPinCode,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitPinCodeState value)? init,
    TResult Function(SuccessPinCode value)? successPinCode,
    TResult Function(FailPinCode value)? failPinCode,
    TResult Function(LoadingPinCodeState value)? loading,
    TResult Function(ForgotPinCodeState value)? forgotPinCode,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingPinCodeState implements PinCodeState {
  const factory LoadingPinCodeState() = _$LoadingPinCodeState;
}

/// @nodoc
abstract class $ForgotPinCodeStateCopyWith<$Res> {
  factory $ForgotPinCodeStateCopyWith(
          ForgotPinCodeState value, $Res Function(ForgotPinCodeState) then) =
      _$ForgotPinCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPinCodeStateCopyWithImpl<$Res>
    extends _$PinCodeStateCopyWithImpl<$Res>
    implements $ForgotPinCodeStateCopyWith<$Res> {
  _$ForgotPinCodeStateCopyWithImpl(
      ForgotPinCodeState _value, $Res Function(ForgotPinCodeState) _then)
      : super(_value, (v) => _then(v as ForgotPinCodeState));

  @override
  ForgotPinCodeState get _value => super._value as ForgotPinCodeState;
}

/// @nodoc

class _$ForgotPinCodeState implements ForgotPinCodeState {
  const _$ForgotPinCodeState();

  @override
  String toString() {
    return 'PinCodeState.forgotPinCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ForgotPinCodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() successPinCode,
    required TResult Function() failPinCode,
    required TResult Function() loading,
    required TResult Function() forgotPinCode,
  }) {
    return forgotPinCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? successPinCode,
    TResult Function()? failPinCode,
    TResult Function()? loading,
    TResult Function()? forgotPinCode,
  }) {
    return forgotPinCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? successPinCode,
    TResult Function()? failPinCode,
    TResult Function()? loading,
    TResult Function()? forgotPinCode,
    required TResult orElse(),
  }) {
    if (forgotPinCode != null) {
      return forgotPinCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitPinCodeState value) init,
    required TResult Function(SuccessPinCode value) successPinCode,
    required TResult Function(FailPinCode value) failPinCode,
    required TResult Function(LoadingPinCodeState value) loading,
    required TResult Function(ForgotPinCodeState value) forgotPinCode,
  }) {
    return forgotPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitPinCodeState value)? init,
    TResult Function(SuccessPinCode value)? successPinCode,
    TResult Function(FailPinCode value)? failPinCode,
    TResult Function(LoadingPinCodeState value)? loading,
    TResult Function(ForgotPinCodeState value)? forgotPinCode,
  }) {
    return forgotPinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitPinCodeState value)? init,
    TResult Function(SuccessPinCode value)? successPinCode,
    TResult Function(FailPinCode value)? failPinCode,
    TResult Function(LoadingPinCodeState value)? loading,
    TResult Function(ForgotPinCodeState value)? forgotPinCode,
    required TResult orElse(),
  }) {
    if (forgotPinCode != null) {
      return forgotPinCode(this);
    }
    return orElse();
  }
}

abstract class ForgotPinCodeState implements PinCodeState {
  const factory ForgotPinCodeState() = _$ForgotPinCodeState;
}
