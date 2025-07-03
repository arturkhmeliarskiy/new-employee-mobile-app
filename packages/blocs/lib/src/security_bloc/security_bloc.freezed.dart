// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'security_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SecurityEventTearOff {
  const _$SecurityEventTearOff();

  UpdateUserPasswordSecurityEvent updateUserPassword(
      String oldPassword, String newPassword, String confirmPassword) {
    return UpdateUserPasswordSecurityEvent(
      oldPassword,
      newPassword,
      confirmPassword,
    );
  }

  UpdateIsPinCodeSecurityEvent updateIsPinCode(bool isPinCode) {
    return UpdateIsPinCodeSecurityEvent(
      isPinCode,
    );
  }
}

/// @nodoc
const $SecurityEvent = _$SecurityEventTearOff();

/// @nodoc
mixin _$SecurityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        updateUserPassword,
    required TResult Function(bool isPinCode) updateIsPinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        updateUserPassword,
    TResult Function(bool isPinCode)? updateIsPinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        updateUserPassword,
    TResult Function(bool isPinCode)? updateIsPinCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserPasswordSecurityEvent value)
        updateUserPassword,
    required TResult Function(UpdateIsPinCodeSecurityEvent value)
        updateIsPinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserPasswordSecurityEvent value)? updateUserPassword,
    TResult Function(UpdateIsPinCodeSecurityEvent value)? updateIsPinCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserPasswordSecurityEvent value)? updateUserPassword,
    TResult Function(UpdateIsPinCodeSecurityEvent value)? updateIsPinCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityEventCopyWith<$Res> {
  factory $SecurityEventCopyWith(
          SecurityEvent value, $Res Function(SecurityEvent) then) =
      _$SecurityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SecurityEventCopyWithImpl<$Res>
    implements $SecurityEventCopyWith<$Res> {
  _$SecurityEventCopyWithImpl(this._value, this._then);

  final SecurityEvent _value;
  // ignore: unused_field
  final $Res Function(SecurityEvent) _then;
}

/// @nodoc
abstract class $UpdateUserPasswordSecurityEventCopyWith<$Res> {
  factory $UpdateUserPasswordSecurityEventCopyWith(
          UpdateUserPasswordSecurityEvent value,
          $Res Function(UpdateUserPasswordSecurityEvent) then) =
      _$UpdateUserPasswordSecurityEventCopyWithImpl<$Res>;
  $Res call({String oldPassword, String newPassword, String confirmPassword});
}

/// @nodoc
class _$UpdateUserPasswordSecurityEventCopyWithImpl<$Res>
    extends _$SecurityEventCopyWithImpl<$Res>
    implements $UpdateUserPasswordSecurityEventCopyWith<$Res> {
  _$UpdateUserPasswordSecurityEventCopyWithImpl(
      UpdateUserPasswordSecurityEvent _value,
      $Res Function(UpdateUserPasswordSecurityEvent) _then)
      : super(_value, (v) => _then(v as UpdateUserPasswordSecurityEvent));

  @override
  UpdateUserPasswordSecurityEvent get _value =>
      super._value as UpdateUserPasswordSecurityEvent;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(UpdateUserPasswordSecurityEvent(
      oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserPasswordSecurityEvent
    implements UpdateUserPasswordSecurityEvent {
  const _$UpdateUserPasswordSecurityEvent(
      this.oldPassword, this.newPassword, this.confirmPassword);

  @override
  final String oldPassword;
  @override
  final String newPassword;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'SecurityEvent.updateUserPassword(oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateUserPasswordSecurityEvent &&
            const DeepCollectionEquality()
                .equals(other.oldPassword, oldPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldPassword),
      const DeepCollectionEquality().hash(newPassword),
      const DeepCollectionEquality().hash(confirmPassword));

  @JsonKey(ignore: true)
  @override
  $UpdateUserPasswordSecurityEventCopyWith<UpdateUserPasswordSecurityEvent>
      get copyWith => _$UpdateUserPasswordSecurityEventCopyWithImpl<
          UpdateUserPasswordSecurityEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        updateUserPassword,
    required TResult Function(bool isPinCode) updateIsPinCode,
  }) {
    return updateUserPassword(oldPassword, newPassword, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        updateUserPassword,
    TResult Function(bool isPinCode)? updateIsPinCode,
  }) {
    return updateUserPassword?.call(oldPassword, newPassword, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        updateUserPassword,
    TResult Function(bool isPinCode)? updateIsPinCode,
    required TResult orElse(),
  }) {
    if (updateUserPassword != null) {
      return updateUserPassword(oldPassword, newPassword, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserPasswordSecurityEvent value)
        updateUserPassword,
    required TResult Function(UpdateIsPinCodeSecurityEvent value)
        updateIsPinCode,
  }) {
    return updateUserPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserPasswordSecurityEvent value)? updateUserPassword,
    TResult Function(UpdateIsPinCodeSecurityEvent value)? updateIsPinCode,
  }) {
    return updateUserPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserPasswordSecurityEvent value)? updateUserPassword,
    TResult Function(UpdateIsPinCodeSecurityEvent value)? updateIsPinCode,
    required TResult orElse(),
  }) {
    if (updateUserPassword != null) {
      return updateUserPassword(this);
    }
    return orElse();
  }
}

abstract class UpdateUserPasswordSecurityEvent implements SecurityEvent {
  const factory UpdateUserPasswordSecurityEvent(
          String oldPassword, String newPassword, String confirmPassword) =
      _$UpdateUserPasswordSecurityEvent;

  String get oldPassword;
  String get newPassword;
  String get confirmPassword;
  @JsonKey(ignore: true)
  $UpdateUserPasswordSecurityEventCopyWith<UpdateUserPasswordSecurityEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateIsPinCodeSecurityEventCopyWith<$Res> {
  factory $UpdateIsPinCodeSecurityEventCopyWith(
          UpdateIsPinCodeSecurityEvent value,
          $Res Function(UpdateIsPinCodeSecurityEvent) then) =
      _$UpdateIsPinCodeSecurityEventCopyWithImpl<$Res>;
  $Res call({bool isPinCode});
}

/// @nodoc
class _$UpdateIsPinCodeSecurityEventCopyWithImpl<$Res>
    extends _$SecurityEventCopyWithImpl<$Res>
    implements $UpdateIsPinCodeSecurityEventCopyWith<$Res> {
  _$UpdateIsPinCodeSecurityEventCopyWithImpl(
      UpdateIsPinCodeSecurityEvent _value,
      $Res Function(UpdateIsPinCodeSecurityEvent) _then)
      : super(_value, (v) => _then(v as UpdateIsPinCodeSecurityEvent));

  @override
  UpdateIsPinCodeSecurityEvent get _value =>
      super._value as UpdateIsPinCodeSecurityEvent;

  @override
  $Res call({
    Object? isPinCode = freezed,
  }) {
    return _then(UpdateIsPinCodeSecurityEvent(
      isPinCode == freezed
          ? _value.isPinCode
          : isPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateIsPinCodeSecurityEvent implements UpdateIsPinCodeSecurityEvent {
  const _$UpdateIsPinCodeSecurityEvent(this.isPinCode);

  @override
  final bool isPinCode;

  @override
  String toString() {
    return 'SecurityEvent.updateIsPinCode(isPinCode: $isPinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateIsPinCodeSecurityEvent &&
            const DeepCollectionEquality().equals(other.isPinCode, isPinCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isPinCode));

  @JsonKey(ignore: true)
  @override
  $UpdateIsPinCodeSecurityEventCopyWith<UpdateIsPinCodeSecurityEvent>
      get copyWith => _$UpdateIsPinCodeSecurityEventCopyWithImpl<
          UpdateIsPinCodeSecurityEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        updateUserPassword,
    required TResult Function(bool isPinCode) updateIsPinCode,
  }) {
    return updateIsPinCode(isPinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        updateUserPassword,
    TResult Function(bool isPinCode)? updateIsPinCode,
  }) {
    return updateIsPinCode?.call(isPinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        updateUserPassword,
    TResult Function(bool isPinCode)? updateIsPinCode,
    required TResult orElse(),
  }) {
    if (updateIsPinCode != null) {
      return updateIsPinCode(isPinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserPasswordSecurityEvent value)
        updateUserPassword,
    required TResult Function(UpdateIsPinCodeSecurityEvent value)
        updateIsPinCode,
  }) {
    return updateIsPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserPasswordSecurityEvent value)? updateUserPassword,
    TResult Function(UpdateIsPinCodeSecurityEvent value)? updateIsPinCode,
  }) {
    return updateIsPinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserPasswordSecurityEvent value)? updateUserPassword,
    TResult Function(UpdateIsPinCodeSecurityEvent value)? updateIsPinCode,
    required TResult orElse(),
  }) {
    if (updateIsPinCode != null) {
      return updateIsPinCode(this);
    }
    return orElse();
  }
}

abstract class UpdateIsPinCodeSecurityEvent implements SecurityEvent {
  const factory UpdateIsPinCodeSecurityEvent(bool isPinCode) =
      _$UpdateIsPinCodeSecurityEvent;

  bool get isPinCode;
  @JsonKey(ignore: true)
  $UpdateIsPinCodeSecurityEventCopyWith<UpdateIsPinCodeSecurityEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SecurityStateTearOff {
  const _$SecurityStateTearOff();

  InitSecurityState init({required bool isPinCode}) {
    return InitSecurityState(
      isPinCode: isPinCode,
    );
  }

  SavePasswordSecuritySuccessState savePasswordSuccess(
      {required MessagesInfoDataModel model}) {
    return SavePasswordSecuritySuccessState(
      model: model,
    );
  }

  SavePasswordSecurityFailureState savePasswordFailure(
      {required MessagesInfoDataModel model}) {
    return SavePasswordSecurityFailureState(
      model: model,
    );
  }

  SavePasswordSecurityInProgressState savePasswordInProgress() {
    return const SavePasswordSecurityInProgressState();
  }
}

/// @nodoc
const $SecurityState = _$SecurityStateTearOff();

/// @nodoc
mixin _$SecurityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPinCode) init,
    required TResult Function(MessagesInfoDataModel model) savePasswordSuccess,
    required TResult Function(MessagesInfoDataModel model) savePasswordFailure,
    required TResult Function() savePasswordInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isPinCode)? init,
    TResult Function(MessagesInfoDataModel model)? savePasswordSuccess,
    TResult Function(MessagesInfoDataModel model)? savePasswordFailure,
    TResult Function()? savePasswordInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPinCode)? init,
    TResult Function(MessagesInfoDataModel model)? savePasswordSuccess,
    TResult Function(MessagesInfoDataModel model)? savePasswordFailure,
    TResult Function()? savePasswordInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSecurityState value) init,
    required TResult Function(SavePasswordSecuritySuccessState value)
        savePasswordSuccess,
    required TResult Function(SavePasswordSecurityFailureState value)
        savePasswordFailure,
    required TResult Function(SavePasswordSecurityInProgressState value)
        savePasswordInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitSecurityState value)? init,
    TResult Function(SavePasswordSecuritySuccessState value)?
        savePasswordSuccess,
    TResult Function(SavePasswordSecurityFailureState value)?
        savePasswordFailure,
    TResult Function(SavePasswordSecurityInProgressState value)?
        savePasswordInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSecurityState value)? init,
    TResult Function(SavePasswordSecuritySuccessState value)?
        savePasswordSuccess,
    TResult Function(SavePasswordSecurityFailureState value)?
        savePasswordFailure,
    TResult Function(SavePasswordSecurityInProgressState value)?
        savePasswordInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityStateCopyWith<$Res> {
  factory $SecurityStateCopyWith(
          SecurityState value, $Res Function(SecurityState) then) =
      _$SecurityStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SecurityStateCopyWithImpl<$Res>
    implements $SecurityStateCopyWith<$Res> {
  _$SecurityStateCopyWithImpl(this._value, this._then);

  final SecurityState _value;
  // ignore: unused_field
  final $Res Function(SecurityState) _then;
}

/// @nodoc
abstract class $InitSecurityStateCopyWith<$Res> {
  factory $InitSecurityStateCopyWith(
          InitSecurityState value, $Res Function(InitSecurityState) then) =
      _$InitSecurityStateCopyWithImpl<$Res>;
  $Res call({bool isPinCode});
}

/// @nodoc
class _$InitSecurityStateCopyWithImpl<$Res>
    extends _$SecurityStateCopyWithImpl<$Res>
    implements $InitSecurityStateCopyWith<$Res> {
  _$InitSecurityStateCopyWithImpl(
      InitSecurityState _value, $Res Function(InitSecurityState) _then)
      : super(_value, (v) => _then(v as InitSecurityState));

  @override
  InitSecurityState get _value => super._value as InitSecurityState;

  @override
  $Res call({
    Object? isPinCode = freezed,
  }) {
    return _then(InitSecurityState(
      isPinCode: isPinCode == freezed
          ? _value.isPinCode
          : isPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitSecurityState implements InitSecurityState {
  const _$InitSecurityState({required this.isPinCode});

  @override
  final bool isPinCode;

  @override
  String toString() {
    return 'SecurityState.init(isPinCode: $isPinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitSecurityState &&
            const DeepCollectionEquality().equals(other.isPinCode, isPinCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isPinCode));

  @JsonKey(ignore: true)
  @override
  $InitSecurityStateCopyWith<InitSecurityState> get copyWith =>
      _$InitSecurityStateCopyWithImpl<InitSecurityState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPinCode) init,
    required TResult Function(MessagesInfoDataModel model) savePasswordSuccess,
    required TResult Function(MessagesInfoDataModel model) savePasswordFailure,
    required TResult Function() savePasswordInProgress,
  }) {
    return init(isPinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isPinCode)? init,
    TResult Function(MessagesInfoDataModel model)? savePasswordSuccess,
    TResult Function(MessagesInfoDataModel model)? savePasswordFailure,
    TResult Function()? savePasswordInProgress,
  }) {
    return init?.call(isPinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPinCode)? init,
    TResult Function(MessagesInfoDataModel model)? savePasswordSuccess,
    TResult Function(MessagesInfoDataModel model)? savePasswordFailure,
    TResult Function()? savePasswordInProgress,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(isPinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSecurityState value) init,
    required TResult Function(SavePasswordSecuritySuccessState value)
        savePasswordSuccess,
    required TResult Function(SavePasswordSecurityFailureState value)
        savePasswordFailure,
    required TResult Function(SavePasswordSecurityInProgressState value)
        savePasswordInProgress,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitSecurityState value)? init,
    TResult Function(SavePasswordSecuritySuccessState value)?
        savePasswordSuccess,
    TResult Function(SavePasswordSecurityFailureState value)?
        savePasswordFailure,
    TResult Function(SavePasswordSecurityInProgressState value)?
        savePasswordInProgress,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSecurityState value)? init,
    TResult Function(SavePasswordSecuritySuccessState value)?
        savePasswordSuccess,
    TResult Function(SavePasswordSecurityFailureState value)?
        savePasswordFailure,
    TResult Function(SavePasswordSecurityInProgressState value)?
        savePasswordInProgress,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitSecurityState implements SecurityState {
  const factory InitSecurityState({required bool isPinCode}) =
      _$InitSecurityState;

  bool get isPinCode;
  @JsonKey(ignore: true)
  $InitSecurityStateCopyWith<InitSecurityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePasswordSecuritySuccessStateCopyWith<$Res> {
  factory $SavePasswordSecuritySuccessStateCopyWith(
          SavePasswordSecuritySuccessState value,
          $Res Function(SavePasswordSecuritySuccessState) then) =
      _$SavePasswordSecuritySuccessStateCopyWithImpl<$Res>;
  $Res call({MessagesInfoDataModel model});

  $MessagesInfoDataModelCopyWith<$Res> get model;
}

/// @nodoc
class _$SavePasswordSecuritySuccessStateCopyWithImpl<$Res>
    extends _$SecurityStateCopyWithImpl<$Res>
    implements $SavePasswordSecuritySuccessStateCopyWith<$Res> {
  _$SavePasswordSecuritySuccessStateCopyWithImpl(
      SavePasswordSecuritySuccessState _value,
      $Res Function(SavePasswordSecuritySuccessState) _then)
      : super(_value, (v) => _then(v as SavePasswordSecuritySuccessState));

  @override
  SavePasswordSecuritySuccessState get _value =>
      super._value as SavePasswordSecuritySuccessState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(SavePasswordSecuritySuccessState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as MessagesInfoDataModel,
    ));
  }

  @override
  $MessagesInfoDataModelCopyWith<$Res> get model {
    return $MessagesInfoDataModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$SavePasswordSecuritySuccessState
    implements SavePasswordSecuritySuccessState {
  const _$SavePasswordSecuritySuccessState({required this.model});

  @override
  final MessagesInfoDataModel model;

  @override
  String toString() {
    return 'SecurityState.savePasswordSuccess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SavePasswordSecuritySuccessState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  $SavePasswordSecuritySuccessStateCopyWith<SavePasswordSecuritySuccessState>
      get copyWith => _$SavePasswordSecuritySuccessStateCopyWithImpl<
          SavePasswordSecuritySuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPinCode) init,
    required TResult Function(MessagesInfoDataModel model) savePasswordSuccess,
    required TResult Function(MessagesInfoDataModel model) savePasswordFailure,
    required TResult Function() savePasswordInProgress,
  }) {
    return savePasswordSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isPinCode)? init,
    TResult Function(MessagesInfoDataModel model)? savePasswordSuccess,
    TResult Function(MessagesInfoDataModel model)? savePasswordFailure,
    TResult Function()? savePasswordInProgress,
  }) {
    return savePasswordSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPinCode)? init,
    TResult Function(MessagesInfoDataModel model)? savePasswordSuccess,
    TResult Function(MessagesInfoDataModel model)? savePasswordFailure,
    TResult Function()? savePasswordInProgress,
    required TResult orElse(),
  }) {
    if (savePasswordSuccess != null) {
      return savePasswordSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSecurityState value) init,
    required TResult Function(SavePasswordSecuritySuccessState value)
        savePasswordSuccess,
    required TResult Function(SavePasswordSecurityFailureState value)
        savePasswordFailure,
    required TResult Function(SavePasswordSecurityInProgressState value)
        savePasswordInProgress,
  }) {
    return savePasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitSecurityState value)? init,
    TResult Function(SavePasswordSecuritySuccessState value)?
        savePasswordSuccess,
    TResult Function(SavePasswordSecurityFailureState value)?
        savePasswordFailure,
    TResult Function(SavePasswordSecurityInProgressState value)?
        savePasswordInProgress,
  }) {
    return savePasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSecurityState value)? init,
    TResult Function(SavePasswordSecuritySuccessState value)?
        savePasswordSuccess,
    TResult Function(SavePasswordSecurityFailureState value)?
        savePasswordFailure,
    TResult Function(SavePasswordSecurityInProgressState value)?
        savePasswordInProgress,
    required TResult orElse(),
  }) {
    if (savePasswordSuccess != null) {
      return savePasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class SavePasswordSecuritySuccessState implements SecurityState {
  const factory SavePasswordSecuritySuccessState(
          {required MessagesInfoDataModel model}) =
      _$SavePasswordSecuritySuccessState;

  MessagesInfoDataModel get model;
  @JsonKey(ignore: true)
  $SavePasswordSecuritySuccessStateCopyWith<SavePasswordSecuritySuccessState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePasswordSecurityFailureStateCopyWith<$Res> {
  factory $SavePasswordSecurityFailureStateCopyWith(
          SavePasswordSecurityFailureState value,
          $Res Function(SavePasswordSecurityFailureState) then) =
      _$SavePasswordSecurityFailureStateCopyWithImpl<$Res>;
  $Res call({MessagesInfoDataModel model});

  $MessagesInfoDataModelCopyWith<$Res> get model;
}

/// @nodoc
class _$SavePasswordSecurityFailureStateCopyWithImpl<$Res>
    extends _$SecurityStateCopyWithImpl<$Res>
    implements $SavePasswordSecurityFailureStateCopyWith<$Res> {
  _$SavePasswordSecurityFailureStateCopyWithImpl(
      SavePasswordSecurityFailureState _value,
      $Res Function(SavePasswordSecurityFailureState) _then)
      : super(_value, (v) => _then(v as SavePasswordSecurityFailureState));

  @override
  SavePasswordSecurityFailureState get _value =>
      super._value as SavePasswordSecurityFailureState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(SavePasswordSecurityFailureState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as MessagesInfoDataModel,
    ));
  }

  @override
  $MessagesInfoDataModelCopyWith<$Res> get model {
    return $MessagesInfoDataModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$SavePasswordSecurityFailureState
    implements SavePasswordSecurityFailureState {
  const _$SavePasswordSecurityFailureState({required this.model});

  @override
  final MessagesInfoDataModel model;

  @override
  String toString() {
    return 'SecurityState.savePasswordFailure(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SavePasswordSecurityFailureState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  $SavePasswordSecurityFailureStateCopyWith<SavePasswordSecurityFailureState>
      get copyWith => _$SavePasswordSecurityFailureStateCopyWithImpl<
          SavePasswordSecurityFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPinCode) init,
    required TResult Function(MessagesInfoDataModel model) savePasswordSuccess,
    required TResult Function(MessagesInfoDataModel model) savePasswordFailure,
    required TResult Function() savePasswordInProgress,
  }) {
    return savePasswordFailure(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isPinCode)? init,
    TResult Function(MessagesInfoDataModel model)? savePasswordSuccess,
    TResult Function(MessagesInfoDataModel model)? savePasswordFailure,
    TResult Function()? savePasswordInProgress,
  }) {
    return savePasswordFailure?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPinCode)? init,
    TResult Function(MessagesInfoDataModel model)? savePasswordSuccess,
    TResult Function(MessagesInfoDataModel model)? savePasswordFailure,
    TResult Function()? savePasswordInProgress,
    required TResult orElse(),
  }) {
    if (savePasswordFailure != null) {
      return savePasswordFailure(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSecurityState value) init,
    required TResult Function(SavePasswordSecuritySuccessState value)
        savePasswordSuccess,
    required TResult Function(SavePasswordSecurityFailureState value)
        savePasswordFailure,
    required TResult Function(SavePasswordSecurityInProgressState value)
        savePasswordInProgress,
  }) {
    return savePasswordFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitSecurityState value)? init,
    TResult Function(SavePasswordSecuritySuccessState value)?
        savePasswordSuccess,
    TResult Function(SavePasswordSecurityFailureState value)?
        savePasswordFailure,
    TResult Function(SavePasswordSecurityInProgressState value)?
        savePasswordInProgress,
  }) {
    return savePasswordFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSecurityState value)? init,
    TResult Function(SavePasswordSecuritySuccessState value)?
        savePasswordSuccess,
    TResult Function(SavePasswordSecurityFailureState value)?
        savePasswordFailure,
    TResult Function(SavePasswordSecurityInProgressState value)?
        savePasswordInProgress,
    required TResult orElse(),
  }) {
    if (savePasswordFailure != null) {
      return savePasswordFailure(this);
    }
    return orElse();
  }
}

abstract class SavePasswordSecurityFailureState implements SecurityState {
  const factory SavePasswordSecurityFailureState(
          {required MessagesInfoDataModel model}) =
      _$SavePasswordSecurityFailureState;

  MessagesInfoDataModel get model;
  @JsonKey(ignore: true)
  $SavePasswordSecurityFailureStateCopyWith<SavePasswordSecurityFailureState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePasswordSecurityInProgressStateCopyWith<$Res> {
  factory $SavePasswordSecurityInProgressStateCopyWith(
          SavePasswordSecurityInProgressState value,
          $Res Function(SavePasswordSecurityInProgressState) then) =
      _$SavePasswordSecurityInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavePasswordSecurityInProgressStateCopyWithImpl<$Res>
    extends _$SecurityStateCopyWithImpl<$Res>
    implements $SavePasswordSecurityInProgressStateCopyWith<$Res> {
  _$SavePasswordSecurityInProgressStateCopyWithImpl(
      SavePasswordSecurityInProgressState _value,
      $Res Function(SavePasswordSecurityInProgressState) _then)
      : super(_value, (v) => _then(v as SavePasswordSecurityInProgressState));

  @override
  SavePasswordSecurityInProgressState get _value =>
      super._value as SavePasswordSecurityInProgressState;
}

/// @nodoc

class _$SavePasswordSecurityInProgressState
    implements SavePasswordSecurityInProgressState {
  const _$SavePasswordSecurityInProgressState();

  @override
  String toString() {
    return 'SecurityState.savePasswordInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SavePasswordSecurityInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPinCode) init,
    required TResult Function(MessagesInfoDataModel model) savePasswordSuccess,
    required TResult Function(MessagesInfoDataModel model) savePasswordFailure,
    required TResult Function() savePasswordInProgress,
  }) {
    return savePasswordInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isPinCode)? init,
    TResult Function(MessagesInfoDataModel model)? savePasswordSuccess,
    TResult Function(MessagesInfoDataModel model)? savePasswordFailure,
    TResult Function()? savePasswordInProgress,
  }) {
    return savePasswordInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPinCode)? init,
    TResult Function(MessagesInfoDataModel model)? savePasswordSuccess,
    TResult Function(MessagesInfoDataModel model)? savePasswordFailure,
    TResult Function()? savePasswordInProgress,
    required TResult orElse(),
  }) {
    if (savePasswordInProgress != null) {
      return savePasswordInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSecurityState value) init,
    required TResult Function(SavePasswordSecuritySuccessState value)
        savePasswordSuccess,
    required TResult Function(SavePasswordSecurityFailureState value)
        savePasswordFailure,
    required TResult Function(SavePasswordSecurityInProgressState value)
        savePasswordInProgress,
  }) {
    return savePasswordInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitSecurityState value)? init,
    TResult Function(SavePasswordSecuritySuccessState value)?
        savePasswordSuccess,
    TResult Function(SavePasswordSecurityFailureState value)?
        savePasswordFailure,
    TResult Function(SavePasswordSecurityInProgressState value)?
        savePasswordInProgress,
  }) {
    return savePasswordInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSecurityState value)? init,
    TResult Function(SavePasswordSecuritySuccessState value)?
        savePasswordSuccess,
    TResult Function(SavePasswordSecurityFailureState value)?
        savePasswordFailure,
    TResult Function(SavePasswordSecurityInProgressState value)?
        savePasswordInProgress,
    required TResult orElse(),
  }) {
    if (savePasswordInProgress != null) {
      return savePasswordInProgress(this);
    }
    return orElse();
  }
}

abstract class SavePasswordSecurityInProgressState implements SecurityState {
  const factory SavePasswordSecurityInProgressState() =
      _$SavePasswordSecurityInProgressState;
}
