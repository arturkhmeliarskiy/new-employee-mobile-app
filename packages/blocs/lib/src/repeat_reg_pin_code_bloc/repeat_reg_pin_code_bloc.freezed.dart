// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repeat_reg_pin_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepeatRegPinCodeEventTearOff {
  const _$RepeatRegPinCodeEventTearOff();

  RepeatRegPinCodeRequestedEvent repeatRegPinCodeRequest(
      String pinCode, String repeatPinCode) {
    return RepeatRegPinCodeRequestedEvent(
      pinCode,
      repeatPinCode,
    );
  }

  InitRepeatRegPinCodeEvent init() {
    return const InitRepeatRegPinCodeEvent();
  }
}

/// @nodoc
const $RepeatRegPinCodeEvent = _$RepeatRegPinCodeEventTearOff();

/// @nodoc
mixin _$RepeatRegPinCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, String repeatPinCode)
        repeatRegPinCodeRequest,
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode, String repeatPinCode)?
        repeatRegPinCodeRequest,
    TResult Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, String repeatPinCode)?
        repeatRegPinCodeRequest,
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatRegPinCodeRequestedEvent value)
        repeatRegPinCodeRequest,
    required TResult Function(InitRepeatRegPinCodeEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatRegPinCodeRequestedEvent value)?
        repeatRegPinCodeRequest,
    TResult Function(InitRepeatRegPinCodeEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatRegPinCodeRequestedEvent value)?
        repeatRegPinCodeRequest,
    TResult Function(InitRepeatRegPinCodeEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatRegPinCodeEventCopyWith<$Res> {
  factory $RepeatRegPinCodeEventCopyWith(RepeatRegPinCodeEvent value,
          $Res Function(RepeatRegPinCodeEvent) then) =
      _$RepeatRegPinCodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepeatRegPinCodeEventCopyWithImpl<$Res>
    implements $RepeatRegPinCodeEventCopyWith<$Res> {
  _$RepeatRegPinCodeEventCopyWithImpl(this._value, this._then);

  final RepeatRegPinCodeEvent _value;
  // ignore: unused_field
  final $Res Function(RepeatRegPinCodeEvent) _then;
}

/// @nodoc
abstract class $RepeatRegPinCodeRequestedEventCopyWith<$Res> {
  factory $RepeatRegPinCodeRequestedEventCopyWith(
          RepeatRegPinCodeRequestedEvent value,
          $Res Function(RepeatRegPinCodeRequestedEvent) then) =
      _$RepeatRegPinCodeRequestedEventCopyWithImpl<$Res>;
  $Res call({String pinCode, String repeatPinCode});
}

/// @nodoc
class _$RepeatRegPinCodeRequestedEventCopyWithImpl<$Res>
    extends _$RepeatRegPinCodeEventCopyWithImpl<$Res>
    implements $RepeatRegPinCodeRequestedEventCopyWith<$Res> {
  _$RepeatRegPinCodeRequestedEventCopyWithImpl(
      RepeatRegPinCodeRequestedEvent _value,
      $Res Function(RepeatRegPinCodeRequestedEvent) _then)
      : super(_value, (v) => _then(v as RepeatRegPinCodeRequestedEvent));

  @override
  RepeatRegPinCodeRequestedEvent get _value =>
      super._value as RepeatRegPinCodeRequestedEvent;

  @override
  $Res call({
    Object? pinCode = freezed,
    Object? repeatPinCode = freezed,
  }) {
    return _then(RepeatRegPinCodeRequestedEvent(
      pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPinCode == freezed
          ? _value.repeatPinCode
          : repeatPinCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RepeatRegPinCodeRequestedEvent
    implements RepeatRegPinCodeRequestedEvent {
  const _$RepeatRegPinCodeRequestedEvent(this.pinCode, this.repeatPinCode);

  @override
  final String pinCode;
  @override
  final String repeatPinCode;

  @override
  String toString() {
    return 'RepeatRegPinCodeEvent.repeatRegPinCodeRequest(pinCode: $pinCode, repeatPinCode: $repeatPinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RepeatRegPinCodeRequestedEvent &&
            const DeepCollectionEquality().equals(other.pinCode, pinCode) &&
            const DeepCollectionEquality()
                .equals(other.repeatPinCode, repeatPinCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pinCode),
      const DeepCollectionEquality().hash(repeatPinCode));

  @JsonKey(ignore: true)
  @override
  $RepeatRegPinCodeRequestedEventCopyWith<RepeatRegPinCodeRequestedEvent>
      get copyWith => _$RepeatRegPinCodeRequestedEventCopyWithImpl<
          RepeatRegPinCodeRequestedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, String repeatPinCode)
        repeatRegPinCodeRequest,
    required TResult Function() init,
  }) {
    return repeatRegPinCodeRequest(pinCode, repeatPinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode, String repeatPinCode)?
        repeatRegPinCodeRequest,
    TResult Function()? init,
  }) {
    return repeatRegPinCodeRequest?.call(pinCode, repeatPinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, String repeatPinCode)?
        repeatRegPinCodeRequest,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (repeatRegPinCodeRequest != null) {
      return repeatRegPinCodeRequest(pinCode, repeatPinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatRegPinCodeRequestedEvent value)
        repeatRegPinCodeRequest,
    required TResult Function(InitRepeatRegPinCodeEvent value) init,
  }) {
    return repeatRegPinCodeRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatRegPinCodeRequestedEvent value)?
        repeatRegPinCodeRequest,
    TResult Function(InitRepeatRegPinCodeEvent value)? init,
  }) {
    return repeatRegPinCodeRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatRegPinCodeRequestedEvent value)?
        repeatRegPinCodeRequest,
    TResult Function(InitRepeatRegPinCodeEvent value)? init,
    required TResult orElse(),
  }) {
    if (repeatRegPinCodeRequest != null) {
      return repeatRegPinCodeRequest(this);
    }
    return orElse();
  }
}

abstract class RepeatRegPinCodeRequestedEvent implements RepeatRegPinCodeEvent {
  const factory RepeatRegPinCodeRequestedEvent(
      String pinCode, String repeatPinCode) = _$RepeatRegPinCodeRequestedEvent;

  String get pinCode;
  String get repeatPinCode;
  @JsonKey(ignore: true)
  $RepeatRegPinCodeRequestedEventCopyWith<RepeatRegPinCodeRequestedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitRepeatRegPinCodeEventCopyWith<$Res> {
  factory $InitRepeatRegPinCodeEventCopyWith(InitRepeatRegPinCodeEvent value,
          $Res Function(InitRepeatRegPinCodeEvent) then) =
      _$InitRepeatRegPinCodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitRepeatRegPinCodeEventCopyWithImpl<$Res>
    extends _$RepeatRegPinCodeEventCopyWithImpl<$Res>
    implements $InitRepeatRegPinCodeEventCopyWith<$Res> {
  _$InitRepeatRegPinCodeEventCopyWithImpl(InitRepeatRegPinCodeEvent _value,
      $Res Function(InitRepeatRegPinCodeEvent) _then)
      : super(_value, (v) => _then(v as InitRepeatRegPinCodeEvent));

  @override
  InitRepeatRegPinCodeEvent get _value =>
      super._value as InitRepeatRegPinCodeEvent;
}

/// @nodoc

class _$InitRepeatRegPinCodeEvent implements InitRepeatRegPinCodeEvent {
  const _$InitRepeatRegPinCodeEvent();

  @override
  String toString() {
    return 'RepeatRegPinCodeEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitRepeatRegPinCodeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, String repeatPinCode)
        repeatRegPinCodeRequest,
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode, String repeatPinCode)?
        repeatRegPinCodeRequest,
    TResult Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, String repeatPinCode)?
        repeatRegPinCodeRequest,
    TResult Function()? init,
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
    required TResult Function(RepeatRegPinCodeRequestedEvent value)
        repeatRegPinCodeRequest,
    required TResult Function(InitRepeatRegPinCodeEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatRegPinCodeRequestedEvent value)?
        repeatRegPinCodeRequest,
    TResult Function(InitRepeatRegPinCodeEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatRegPinCodeRequestedEvent value)?
        repeatRegPinCodeRequest,
    TResult Function(InitRepeatRegPinCodeEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitRepeatRegPinCodeEvent implements RepeatRegPinCodeEvent {
  const factory InitRepeatRegPinCodeEvent() = _$InitRepeatRegPinCodeEvent;
}

/// @nodoc
class _$RepeatRegPinCodeStateTearOff {
  const _$RepeatRegPinCodeStateTearOff();

  InitRepeatRegPinCodeState repeatRegPinCodeInitial() {
    return InitRepeatRegPinCodeState();
  }

  SuccessRepeatRegPinCodeState successRepeatPinCode() {
    return SuccessRepeatRegPinCodeState();
  }

  FailRepeatRegPinCodeState failRepeatPinCode() {
    return FailRepeatRegPinCodeState();
  }

  LoadingRepeatRegPinCodeState load() {
    return LoadingRepeatRegPinCodeState();
  }
}

/// @nodoc
const $RepeatRegPinCodeState = _$RepeatRegPinCodeStateTearOff();

/// @nodoc
mixin _$RepeatRegPinCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() repeatRegPinCodeInitial,
    required TResult Function() successRepeatPinCode,
    required TResult Function() failRepeatPinCode,
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? repeatRegPinCodeInitial,
    TResult Function()? successRepeatPinCode,
    TResult Function()? failRepeatPinCode,
    TResult Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? repeatRegPinCodeInitial,
    TResult Function()? successRepeatPinCode,
    TResult Function()? failRepeatPinCode,
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRepeatRegPinCodeState value)
        repeatRegPinCodeInitial,
    required TResult Function(SuccessRepeatRegPinCodeState value)
        successRepeatPinCode,
    required TResult Function(FailRepeatRegPinCodeState value)
        failRepeatPinCode,
    required TResult Function(LoadingRepeatRegPinCodeState value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitRepeatRegPinCodeState value)? repeatRegPinCodeInitial,
    TResult Function(SuccessRepeatRegPinCodeState value)? successRepeatPinCode,
    TResult Function(FailRepeatRegPinCodeState value)? failRepeatPinCode,
    TResult Function(LoadingRepeatRegPinCodeState value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRepeatRegPinCodeState value)? repeatRegPinCodeInitial,
    TResult Function(SuccessRepeatRegPinCodeState value)? successRepeatPinCode,
    TResult Function(FailRepeatRegPinCodeState value)? failRepeatPinCode,
    TResult Function(LoadingRepeatRegPinCodeState value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatRegPinCodeStateCopyWith<$Res> {
  factory $RepeatRegPinCodeStateCopyWith(RepeatRegPinCodeState value,
          $Res Function(RepeatRegPinCodeState) then) =
      _$RepeatRegPinCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepeatRegPinCodeStateCopyWithImpl<$Res>
    implements $RepeatRegPinCodeStateCopyWith<$Res> {
  _$RepeatRegPinCodeStateCopyWithImpl(this._value, this._then);

  final RepeatRegPinCodeState _value;
  // ignore: unused_field
  final $Res Function(RepeatRegPinCodeState) _then;
}

/// @nodoc
abstract class $InitRepeatRegPinCodeStateCopyWith<$Res> {
  factory $InitRepeatRegPinCodeStateCopyWith(InitRepeatRegPinCodeState value,
          $Res Function(InitRepeatRegPinCodeState) then) =
      _$InitRepeatRegPinCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitRepeatRegPinCodeStateCopyWithImpl<$Res>
    extends _$RepeatRegPinCodeStateCopyWithImpl<$Res>
    implements $InitRepeatRegPinCodeStateCopyWith<$Res> {
  _$InitRepeatRegPinCodeStateCopyWithImpl(InitRepeatRegPinCodeState _value,
      $Res Function(InitRepeatRegPinCodeState) _then)
      : super(_value, (v) => _then(v as InitRepeatRegPinCodeState));

  @override
  InitRepeatRegPinCodeState get _value =>
      super._value as InitRepeatRegPinCodeState;
}

/// @nodoc

class _$InitRepeatRegPinCodeState implements InitRepeatRegPinCodeState {
  _$InitRepeatRegPinCodeState();

  @override
  String toString() {
    return 'RepeatRegPinCodeState.repeatRegPinCodeInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitRepeatRegPinCodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() repeatRegPinCodeInitial,
    required TResult Function() successRepeatPinCode,
    required TResult Function() failRepeatPinCode,
    required TResult Function() load,
  }) {
    return repeatRegPinCodeInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? repeatRegPinCodeInitial,
    TResult Function()? successRepeatPinCode,
    TResult Function()? failRepeatPinCode,
    TResult Function()? load,
  }) {
    return repeatRegPinCodeInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? repeatRegPinCodeInitial,
    TResult Function()? successRepeatPinCode,
    TResult Function()? failRepeatPinCode,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (repeatRegPinCodeInitial != null) {
      return repeatRegPinCodeInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRepeatRegPinCodeState value)
        repeatRegPinCodeInitial,
    required TResult Function(SuccessRepeatRegPinCodeState value)
        successRepeatPinCode,
    required TResult Function(FailRepeatRegPinCodeState value)
        failRepeatPinCode,
    required TResult Function(LoadingRepeatRegPinCodeState value) load,
  }) {
    return repeatRegPinCodeInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitRepeatRegPinCodeState value)? repeatRegPinCodeInitial,
    TResult Function(SuccessRepeatRegPinCodeState value)? successRepeatPinCode,
    TResult Function(FailRepeatRegPinCodeState value)? failRepeatPinCode,
    TResult Function(LoadingRepeatRegPinCodeState value)? load,
  }) {
    return repeatRegPinCodeInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRepeatRegPinCodeState value)? repeatRegPinCodeInitial,
    TResult Function(SuccessRepeatRegPinCodeState value)? successRepeatPinCode,
    TResult Function(FailRepeatRegPinCodeState value)? failRepeatPinCode,
    TResult Function(LoadingRepeatRegPinCodeState value)? load,
    required TResult orElse(),
  }) {
    if (repeatRegPinCodeInitial != null) {
      return repeatRegPinCodeInitial(this);
    }
    return orElse();
  }
}

abstract class InitRepeatRegPinCodeState implements RepeatRegPinCodeState {
  factory InitRepeatRegPinCodeState() = _$InitRepeatRegPinCodeState;
}

/// @nodoc
abstract class $SuccessRepeatRegPinCodeStateCopyWith<$Res> {
  factory $SuccessRepeatRegPinCodeStateCopyWith(
          SuccessRepeatRegPinCodeState value,
          $Res Function(SuccessRepeatRegPinCodeState) then) =
      _$SuccessRepeatRegPinCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessRepeatRegPinCodeStateCopyWithImpl<$Res>
    extends _$RepeatRegPinCodeStateCopyWithImpl<$Res>
    implements $SuccessRepeatRegPinCodeStateCopyWith<$Res> {
  _$SuccessRepeatRegPinCodeStateCopyWithImpl(
      SuccessRepeatRegPinCodeState _value,
      $Res Function(SuccessRepeatRegPinCodeState) _then)
      : super(_value, (v) => _then(v as SuccessRepeatRegPinCodeState));

  @override
  SuccessRepeatRegPinCodeState get _value =>
      super._value as SuccessRepeatRegPinCodeState;
}

/// @nodoc

class _$SuccessRepeatRegPinCodeState implements SuccessRepeatRegPinCodeState {
  _$SuccessRepeatRegPinCodeState();

  @override
  String toString() {
    return 'RepeatRegPinCodeState.successRepeatPinCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessRepeatRegPinCodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() repeatRegPinCodeInitial,
    required TResult Function() successRepeatPinCode,
    required TResult Function() failRepeatPinCode,
    required TResult Function() load,
  }) {
    return successRepeatPinCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? repeatRegPinCodeInitial,
    TResult Function()? successRepeatPinCode,
    TResult Function()? failRepeatPinCode,
    TResult Function()? load,
  }) {
    return successRepeatPinCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? repeatRegPinCodeInitial,
    TResult Function()? successRepeatPinCode,
    TResult Function()? failRepeatPinCode,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (successRepeatPinCode != null) {
      return successRepeatPinCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRepeatRegPinCodeState value)
        repeatRegPinCodeInitial,
    required TResult Function(SuccessRepeatRegPinCodeState value)
        successRepeatPinCode,
    required TResult Function(FailRepeatRegPinCodeState value)
        failRepeatPinCode,
    required TResult Function(LoadingRepeatRegPinCodeState value) load,
  }) {
    return successRepeatPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitRepeatRegPinCodeState value)? repeatRegPinCodeInitial,
    TResult Function(SuccessRepeatRegPinCodeState value)? successRepeatPinCode,
    TResult Function(FailRepeatRegPinCodeState value)? failRepeatPinCode,
    TResult Function(LoadingRepeatRegPinCodeState value)? load,
  }) {
    return successRepeatPinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRepeatRegPinCodeState value)? repeatRegPinCodeInitial,
    TResult Function(SuccessRepeatRegPinCodeState value)? successRepeatPinCode,
    TResult Function(FailRepeatRegPinCodeState value)? failRepeatPinCode,
    TResult Function(LoadingRepeatRegPinCodeState value)? load,
    required TResult orElse(),
  }) {
    if (successRepeatPinCode != null) {
      return successRepeatPinCode(this);
    }
    return orElse();
  }
}

abstract class SuccessRepeatRegPinCodeState implements RepeatRegPinCodeState {
  factory SuccessRepeatRegPinCodeState() = _$SuccessRepeatRegPinCodeState;
}

/// @nodoc
abstract class $FailRepeatRegPinCodeStateCopyWith<$Res> {
  factory $FailRepeatRegPinCodeStateCopyWith(FailRepeatRegPinCodeState value,
          $Res Function(FailRepeatRegPinCodeState) then) =
      _$FailRepeatRegPinCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailRepeatRegPinCodeStateCopyWithImpl<$Res>
    extends _$RepeatRegPinCodeStateCopyWithImpl<$Res>
    implements $FailRepeatRegPinCodeStateCopyWith<$Res> {
  _$FailRepeatRegPinCodeStateCopyWithImpl(FailRepeatRegPinCodeState _value,
      $Res Function(FailRepeatRegPinCodeState) _then)
      : super(_value, (v) => _then(v as FailRepeatRegPinCodeState));

  @override
  FailRepeatRegPinCodeState get _value =>
      super._value as FailRepeatRegPinCodeState;
}

/// @nodoc

class _$FailRepeatRegPinCodeState implements FailRepeatRegPinCodeState {
  _$FailRepeatRegPinCodeState();

  @override
  String toString() {
    return 'RepeatRegPinCodeState.failRepeatPinCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FailRepeatRegPinCodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() repeatRegPinCodeInitial,
    required TResult Function() successRepeatPinCode,
    required TResult Function() failRepeatPinCode,
    required TResult Function() load,
  }) {
    return failRepeatPinCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? repeatRegPinCodeInitial,
    TResult Function()? successRepeatPinCode,
    TResult Function()? failRepeatPinCode,
    TResult Function()? load,
  }) {
    return failRepeatPinCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? repeatRegPinCodeInitial,
    TResult Function()? successRepeatPinCode,
    TResult Function()? failRepeatPinCode,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (failRepeatPinCode != null) {
      return failRepeatPinCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRepeatRegPinCodeState value)
        repeatRegPinCodeInitial,
    required TResult Function(SuccessRepeatRegPinCodeState value)
        successRepeatPinCode,
    required TResult Function(FailRepeatRegPinCodeState value)
        failRepeatPinCode,
    required TResult Function(LoadingRepeatRegPinCodeState value) load,
  }) {
    return failRepeatPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitRepeatRegPinCodeState value)? repeatRegPinCodeInitial,
    TResult Function(SuccessRepeatRegPinCodeState value)? successRepeatPinCode,
    TResult Function(FailRepeatRegPinCodeState value)? failRepeatPinCode,
    TResult Function(LoadingRepeatRegPinCodeState value)? load,
  }) {
    return failRepeatPinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRepeatRegPinCodeState value)? repeatRegPinCodeInitial,
    TResult Function(SuccessRepeatRegPinCodeState value)? successRepeatPinCode,
    TResult Function(FailRepeatRegPinCodeState value)? failRepeatPinCode,
    TResult Function(LoadingRepeatRegPinCodeState value)? load,
    required TResult orElse(),
  }) {
    if (failRepeatPinCode != null) {
      return failRepeatPinCode(this);
    }
    return orElse();
  }
}

abstract class FailRepeatRegPinCodeState implements RepeatRegPinCodeState {
  factory FailRepeatRegPinCodeState() = _$FailRepeatRegPinCodeState;
}

/// @nodoc
abstract class $LoadingRepeatRegPinCodeStateCopyWith<$Res> {
  factory $LoadingRepeatRegPinCodeStateCopyWith(
          LoadingRepeatRegPinCodeState value,
          $Res Function(LoadingRepeatRegPinCodeState) then) =
      _$LoadingRepeatRegPinCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingRepeatRegPinCodeStateCopyWithImpl<$Res>
    extends _$RepeatRegPinCodeStateCopyWithImpl<$Res>
    implements $LoadingRepeatRegPinCodeStateCopyWith<$Res> {
  _$LoadingRepeatRegPinCodeStateCopyWithImpl(
      LoadingRepeatRegPinCodeState _value,
      $Res Function(LoadingRepeatRegPinCodeState) _then)
      : super(_value, (v) => _then(v as LoadingRepeatRegPinCodeState));

  @override
  LoadingRepeatRegPinCodeState get _value =>
      super._value as LoadingRepeatRegPinCodeState;
}

/// @nodoc

class _$LoadingRepeatRegPinCodeState implements LoadingRepeatRegPinCodeState {
  _$LoadingRepeatRegPinCodeState();

  @override
  String toString() {
    return 'RepeatRegPinCodeState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingRepeatRegPinCodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() repeatRegPinCodeInitial,
    required TResult Function() successRepeatPinCode,
    required TResult Function() failRepeatPinCode,
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? repeatRegPinCodeInitial,
    TResult Function()? successRepeatPinCode,
    TResult Function()? failRepeatPinCode,
    TResult Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? repeatRegPinCodeInitial,
    TResult Function()? successRepeatPinCode,
    TResult Function()? failRepeatPinCode,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRepeatRegPinCodeState value)
        repeatRegPinCodeInitial,
    required TResult Function(SuccessRepeatRegPinCodeState value)
        successRepeatPinCode,
    required TResult Function(FailRepeatRegPinCodeState value)
        failRepeatPinCode,
    required TResult Function(LoadingRepeatRegPinCodeState value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitRepeatRegPinCodeState value)? repeatRegPinCodeInitial,
    TResult Function(SuccessRepeatRegPinCodeState value)? successRepeatPinCode,
    TResult Function(FailRepeatRegPinCodeState value)? failRepeatPinCode,
    TResult Function(LoadingRepeatRegPinCodeState value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRepeatRegPinCodeState value)? repeatRegPinCodeInitial,
    TResult Function(SuccessRepeatRegPinCodeState value)? successRepeatPinCode,
    TResult Function(FailRepeatRegPinCodeState value)? failRepeatPinCode,
    TResult Function(LoadingRepeatRegPinCodeState value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingRepeatRegPinCodeState implements RepeatRegPinCodeState {
  factory LoadingRepeatRegPinCodeState() = _$LoadingRepeatRegPinCodeState;
}
