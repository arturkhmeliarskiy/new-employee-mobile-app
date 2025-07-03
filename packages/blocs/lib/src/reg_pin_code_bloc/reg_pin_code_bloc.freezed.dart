// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reg_pin_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegPinCodeEventTearOff {
  const _$RegPinCodeEventTearOff();

  RegPinCodeRequestedEvent regPinCodeRequest(String pinCode) {
    return RegPinCodeRequestedEvent(
      pinCode,
    );
  }

  InitRegPinCodeEvent init() {
    return const InitRegPinCodeEvent();
  }
}

/// @nodoc
const $RegPinCodeEvent = _$RegPinCodeEventTearOff();

/// @nodoc
mixin _$RegPinCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode) regPinCodeRequest,
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode)? regPinCodeRequest,
    TResult Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode)? regPinCodeRequest,
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegPinCodeRequestedEvent value) regPinCodeRequest,
    required TResult Function(InitRegPinCodeEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegPinCodeRequestedEvent value)? regPinCodeRequest,
    TResult Function(InitRegPinCodeEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegPinCodeRequestedEvent value)? regPinCodeRequest,
    TResult Function(InitRegPinCodeEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegPinCodeEventCopyWith<$Res> {
  factory $RegPinCodeEventCopyWith(
          RegPinCodeEvent value, $Res Function(RegPinCodeEvent) then) =
      _$RegPinCodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegPinCodeEventCopyWithImpl<$Res>
    implements $RegPinCodeEventCopyWith<$Res> {
  _$RegPinCodeEventCopyWithImpl(this._value, this._then);

  final RegPinCodeEvent _value;
  // ignore: unused_field
  final $Res Function(RegPinCodeEvent) _then;
}

/// @nodoc
abstract class $RegPinCodeRequestedEventCopyWith<$Res> {
  factory $RegPinCodeRequestedEventCopyWith(RegPinCodeRequestedEvent value,
          $Res Function(RegPinCodeRequestedEvent) then) =
      _$RegPinCodeRequestedEventCopyWithImpl<$Res>;
  $Res call({String pinCode});
}

/// @nodoc
class _$RegPinCodeRequestedEventCopyWithImpl<$Res>
    extends _$RegPinCodeEventCopyWithImpl<$Res>
    implements $RegPinCodeRequestedEventCopyWith<$Res> {
  _$RegPinCodeRequestedEventCopyWithImpl(RegPinCodeRequestedEvent _value,
      $Res Function(RegPinCodeRequestedEvent) _then)
      : super(_value, (v) => _then(v as RegPinCodeRequestedEvent));

  @override
  RegPinCodeRequestedEvent get _value =>
      super._value as RegPinCodeRequestedEvent;

  @override
  $Res call({
    Object? pinCode = freezed,
  }) {
    return _then(RegPinCodeRequestedEvent(
      pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegPinCodeRequestedEvent implements RegPinCodeRequestedEvent {
  const _$RegPinCodeRequestedEvent(this.pinCode);

  @override
  final String pinCode;

  @override
  String toString() {
    return 'RegPinCodeEvent.regPinCodeRequest(pinCode: $pinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegPinCodeRequestedEvent &&
            const DeepCollectionEquality().equals(other.pinCode, pinCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pinCode));

  @JsonKey(ignore: true)
  @override
  $RegPinCodeRequestedEventCopyWith<RegPinCodeRequestedEvent> get copyWith =>
      _$RegPinCodeRequestedEventCopyWithImpl<RegPinCodeRequestedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode) regPinCodeRequest,
    required TResult Function() init,
  }) {
    return regPinCodeRequest(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode)? regPinCodeRequest,
    TResult Function()? init,
  }) {
    return regPinCodeRequest?.call(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode)? regPinCodeRequest,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (regPinCodeRequest != null) {
      return regPinCodeRequest(pinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegPinCodeRequestedEvent value) regPinCodeRequest,
    required TResult Function(InitRegPinCodeEvent value) init,
  }) {
    return regPinCodeRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegPinCodeRequestedEvent value)? regPinCodeRequest,
    TResult Function(InitRegPinCodeEvent value)? init,
  }) {
    return regPinCodeRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegPinCodeRequestedEvent value)? regPinCodeRequest,
    TResult Function(InitRegPinCodeEvent value)? init,
    required TResult orElse(),
  }) {
    if (regPinCodeRequest != null) {
      return regPinCodeRequest(this);
    }
    return orElse();
  }
}

abstract class RegPinCodeRequestedEvent implements RegPinCodeEvent {
  const factory RegPinCodeRequestedEvent(String pinCode) =
      _$RegPinCodeRequestedEvent;

  String get pinCode;
  @JsonKey(ignore: true)
  $RegPinCodeRequestedEventCopyWith<RegPinCodeRequestedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitRegPinCodeEventCopyWith<$Res> {
  factory $InitRegPinCodeEventCopyWith(
          InitRegPinCodeEvent value, $Res Function(InitRegPinCodeEvent) then) =
      _$InitRegPinCodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitRegPinCodeEventCopyWithImpl<$Res>
    extends _$RegPinCodeEventCopyWithImpl<$Res>
    implements $InitRegPinCodeEventCopyWith<$Res> {
  _$InitRegPinCodeEventCopyWithImpl(
      InitRegPinCodeEvent _value, $Res Function(InitRegPinCodeEvent) _then)
      : super(_value, (v) => _then(v as InitRegPinCodeEvent));

  @override
  InitRegPinCodeEvent get _value => super._value as InitRegPinCodeEvent;
}

/// @nodoc

class _$InitRegPinCodeEvent implements InitRegPinCodeEvent {
  const _$InitRegPinCodeEvent();

  @override
  String toString() {
    return 'RegPinCodeEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitRegPinCodeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode) regPinCodeRequest,
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pinCode)? regPinCodeRequest,
    TResult Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode)? regPinCodeRequest,
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
    required TResult Function(RegPinCodeRequestedEvent value) regPinCodeRequest,
    required TResult Function(InitRegPinCodeEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegPinCodeRequestedEvent value)? regPinCodeRequest,
    TResult Function(InitRegPinCodeEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegPinCodeRequestedEvent value)? regPinCodeRequest,
    TResult Function(InitRegPinCodeEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitRegPinCodeEvent implements RegPinCodeEvent {
  const factory InitRegPinCodeEvent() = _$InitRegPinCodeEvent;
}

/// @nodoc
class _$RegPinCodeStateTearOff {
  const _$RegPinCodeStateTearOff();

  InitRegPinCodeState init() {
    return InitRegPinCodeState();
  }

  SuccessRegPinCodeState successRegPinCode({required String pinCode}) {
    return SuccessRegPinCodeState(
      pinCode: pinCode,
    );
  }

  LoadingRegPinCodeState loading() {
    return LoadingRegPinCodeState();
  }
}

/// @nodoc
const $RegPinCodeState = _$RegPinCodeStateTearOff();

/// @nodoc
mixin _$RegPinCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String pinCode) successRegPinCode,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String pinCode)? successRegPinCode,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String pinCode)? successRegPinCode,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRegPinCodeState value) init,
    required TResult Function(SuccessRegPinCodeState value) successRegPinCode,
    required TResult Function(LoadingRegPinCodeState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitRegPinCodeState value)? init,
    TResult Function(SuccessRegPinCodeState value)? successRegPinCode,
    TResult Function(LoadingRegPinCodeState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRegPinCodeState value)? init,
    TResult Function(SuccessRegPinCodeState value)? successRegPinCode,
    TResult Function(LoadingRegPinCodeState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegPinCodeStateCopyWith<$Res> {
  factory $RegPinCodeStateCopyWith(
          RegPinCodeState value, $Res Function(RegPinCodeState) then) =
      _$RegPinCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegPinCodeStateCopyWithImpl<$Res>
    implements $RegPinCodeStateCopyWith<$Res> {
  _$RegPinCodeStateCopyWithImpl(this._value, this._then);

  final RegPinCodeState _value;
  // ignore: unused_field
  final $Res Function(RegPinCodeState) _then;
}

/// @nodoc
abstract class $InitRegPinCodeStateCopyWith<$Res> {
  factory $InitRegPinCodeStateCopyWith(
          InitRegPinCodeState value, $Res Function(InitRegPinCodeState) then) =
      _$InitRegPinCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitRegPinCodeStateCopyWithImpl<$Res>
    extends _$RegPinCodeStateCopyWithImpl<$Res>
    implements $InitRegPinCodeStateCopyWith<$Res> {
  _$InitRegPinCodeStateCopyWithImpl(
      InitRegPinCodeState _value, $Res Function(InitRegPinCodeState) _then)
      : super(_value, (v) => _then(v as InitRegPinCodeState));

  @override
  InitRegPinCodeState get _value => super._value as InitRegPinCodeState;
}

/// @nodoc

class _$InitRegPinCodeState implements InitRegPinCodeState {
  _$InitRegPinCodeState();

  @override
  String toString() {
    return 'RegPinCodeState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitRegPinCodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String pinCode) successRegPinCode,
    required TResult Function() loading,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String pinCode)? successRegPinCode,
    TResult Function()? loading,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String pinCode)? successRegPinCode,
    TResult Function()? loading,
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
    required TResult Function(InitRegPinCodeState value) init,
    required TResult Function(SuccessRegPinCodeState value) successRegPinCode,
    required TResult Function(LoadingRegPinCodeState value) loading,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitRegPinCodeState value)? init,
    TResult Function(SuccessRegPinCodeState value)? successRegPinCode,
    TResult Function(LoadingRegPinCodeState value)? loading,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRegPinCodeState value)? init,
    TResult Function(SuccessRegPinCodeState value)? successRegPinCode,
    TResult Function(LoadingRegPinCodeState value)? loading,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitRegPinCodeState implements RegPinCodeState {
  factory InitRegPinCodeState() = _$InitRegPinCodeState;
}

/// @nodoc
abstract class $SuccessRegPinCodeStateCopyWith<$Res> {
  factory $SuccessRegPinCodeStateCopyWith(SuccessRegPinCodeState value,
          $Res Function(SuccessRegPinCodeState) then) =
      _$SuccessRegPinCodeStateCopyWithImpl<$Res>;
  $Res call({String pinCode});
}

/// @nodoc
class _$SuccessRegPinCodeStateCopyWithImpl<$Res>
    extends _$RegPinCodeStateCopyWithImpl<$Res>
    implements $SuccessRegPinCodeStateCopyWith<$Res> {
  _$SuccessRegPinCodeStateCopyWithImpl(SuccessRegPinCodeState _value,
      $Res Function(SuccessRegPinCodeState) _then)
      : super(_value, (v) => _then(v as SuccessRegPinCodeState));

  @override
  SuccessRegPinCodeState get _value => super._value as SuccessRegPinCodeState;

  @override
  $Res call({
    Object? pinCode = freezed,
  }) {
    return _then(SuccessRegPinCodeState(
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessRegPinCodeState implements SuccessRegPinCodeState {
  _$SuccessRegPinCodeState({required this.pinCode});

  @override
  final String pinCode;

  @override
  String toString() {
    return 'RegPinCodeState.successRegPinCode(pinCode: $pinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessRegPinCodeState &&
            const DeepCollectionEquality().equals(other.pinCode, pinCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pinCode));

  @JsonKey(ignore: true)
  @override
  $SuccessRegPinCodeStateCopyWith<SuccessRegPinCodeState> get copyWith =>
      _$SuccessRegPinCodeStateCopyWithImpl<SuccessRegPinCodeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String pinCode) successRegPinCode,
    required TResult Function() loading,
  }) {
    return successRegPinCode(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String pinCode)? successRegPinCode,
    TResult Function()? loading,
  }) {
    return successRegPinCode?.call(pinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String pinCode)? successRegPinCode,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (successRegPinCode != null) {
      return successRegPinCode(pinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRegPinCodeState value) init,
    required TResult Function(SuccessRegPinCodeState value) successRegPinCode,
    required TResult Function(LoadingRegPinCodeState value) loading,
  }) {
    return successRegPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitRegPinCodeState value)? init,
    TResult Function(SuccessRegPinCodeState value)? successRegPinCode,
    TResult Function(LoadingRegPinCodeState value)? loading,
  }) {
    return successRegPinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRegPinCodeState value)? init,
    TResult Function(SuccessRegPinCodeState value)? successRegPinCode,
    TResult Function(LoadingRegPinCodeState value)? loading,
    required TResult orElse(),
  }) {
    if (successRegPinCode != null) {
      return successRegPinCode(this);
    }
    return orElse();
  }
}

abstract class SuccessRegPinCodeState implements RegPinCodeState {
  factory SuccessRegPinCodeState({required String pinCode}) =
      _$SuccessRegPinCodeState;

  String get pinCode;
  @JsonKey(ignore: true)
  $SuccessRegPinCodeStateCopyWith<SuccessRegPinCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingRegPinCodeStateCopyWith<$Res> {
  factory $LoadingRegPinCodeStateCopyWith(LoadingRegPinCodeState value,
          $Res Function(LoadingRegPinCodeState) then) =
      _$LoadingRegPinCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingRegPinCodeStateCopyWithImpl<$Res>
    extends _$RegPinCodeStateCopyWithImpl<$Res>
    implements $LoadingRegPinCodeStateCopyWith<$Res> {
  _$LoadingRegPinCodeStateCopyWithImpl(LoadingRegPinCodeState _value,
      $Res Function(LoadingRegPinCodeState) _then)
      : super(_value, (v) => _then(v as LoadingRegPinCodeState));

  @override
  LoadingRegPinCodeState get _value => super._value as LoadingRegPinCodeState;
}

/// @nodoc

class _$LoadingRegPinCodeState implements LoadingRegPinCodeState {
  _$LoadingRegPinCodeState();

  @override
  String toString() {
    return 'RegPinCodeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingRegPinCodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String pinCode) successRegPinCode,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String pinCode)? successRegPinCode,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String pinCode)? successRegPinCode,
    TResult Function()? loading,
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
    required TResult Function(InitRegPinCodeState value) init,
    required TResult Function(SuccessRegPinCodeState value) successRegPinCode,
    required TResult Function(LoadingRegPinCodeState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitRegPinCodeState value)? init,
    TResult Function(SuccessRegPinCodeState value)? successRegPinCode,
    TResult Function(LoadingRegPinCodeState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRegPinCodeState value)? init,
    TResult Function(SuccessRegPinCodeState value)? successRegPinCode,
    TResult Function(LoadingRegPinCodeState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingRegPinCodeState implements RegPinCodeState {
  factory LoadingRegPinCodeState() = _$LoadingRegPinCodeState;
}
