// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResetPasswordEventTearOff {
  const _$ResetPasswordEventTearOff();

  OpenResetPasswordScreenEvent openResetPasswordScreen() {
    return OpenResetPasswordScreenEvent();
  }

  SendRecoveryInstructionsEvent sendRecoveryInstructions(
      {required String email}) {
    return SendRecoveryInstructionsEvent(
      email: email,
    );
  }

  GetPasswordResetLinkEvent getPasswordResetLink() {
    return GetPasswordResetLinkEvent();
  }

  SaveNewPasswordEvent saveNewPassword(
      {required String password, required String repeatPassword}) {
    return SaveNewPasswordEvent(
      password: password,
      repeatPassword: repeatPassword,
    );
  }
}

/// @nodoc
const $ResetPasswordEvent = _$ResetPasswordEventTearOff();

/// @nodoc
mixin _$ResetPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openResetPasswordScreen,
    required TResult Function(String email) sendRecoveryInstructions,
    required TResult Function() getPasswordResetLink,
    required TResult Function(String password, String repeatPassword)
        saveNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openResetPasswordScreen,
    TResult Function(String email)? sendRecoveryInstructions,
    TResult Function()? getPasswordResetLink,
    TResult Function(String password, String repeatPassword)? saveNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openResetPasswordScreen,
    TResult Function(String email)? sendRecoveryInstructions,
    TResult Function()? getPasswordResetLink,
    TResult Function(String password, String repeatPassword)? saveNewPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenResetPasswordScreenEvent value)
        openResetPasswordScreen,
    required TResult Function(SendRecoveryInstructionsEvent value)
        sendRecoveryInstructions,
    required TResult Function(GetPasswordResetLinkEvent value)
        getPasswordResetLink,
    required TResult Function(SaveNewPasswordEvent value) saveNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenResetPasswordScreenEvent value)?
        openResetPasswordScreen,
    TResult Function(SendRecoveryInstructionsEvent value)?
        sendRecoveryInstructions,
    TResult Function(GetPasswordResetLinkEvent value)? getPasswordResetLink,
    TResult Function(SaveNewPasswordEvent value)? saveNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenResetPasswordScreenEvent value)?
        openResetPasswordScreen,
    TResult Function(SendRecoveryInstructionsEvent value)?
        sendRecoveryInstructions,
    TResult Function(GetPasswordResetLinkEvent value)? getPasswordResetLink,
    TResult Function(SaveNewPasswordEvent value)? saveNewPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(
          ResetPasswordEvent value, $Res Function(ResetPasswordEvent) then) =
      _$ResetPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._value, this._then);

  final ResetPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordEvent) _then;
}

/// @nodoc
abstract class $OpenResetPasswordScreenEventCopyWith<$Res> {
  factory $OpenResetPasswordScreenEventCopyWith(
          OpenResetPasswordScreenEvent value,
          $Res Function(OpenResetPasswordScreenEvent) then) =
      _$OpenResetPasswordScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenResetPasswordScreenEventCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements $OpenResetPasswordScreenEventCopyWith<$Res> {
  _$OpenResetPasswordScreenEventCopyWithImpl(
      OpenResetPasswordScreenEvent _value,
      $Res Function(OpenResetPasswordScreenEvent) _then)
      : super(_value, (v) => _then(v as OpenResetPasswordScreenEvent));

  @override
  OpenResetPasswordScreenEvent get _value =>
      super._value as OpenResetPasswordScreenEvent;
}

/// @nodoc

class _$OpenResetPasswordScreenEvent
    with DiagnosticableTreeMixin
    implements OpenResetPasswordScreenEvent {
  _$OpenResetPasswordScreenEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordEvent.openResetPasswordScreen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'ResetPasswordEvent.openResetPasswordScreen'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenResetPasswordScreenEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openResetPasswordScreen,
    required TResult Function(String email) sendRecoveryInstructions,
    required TResult Function() getPasswordResetLink,
    required TResult Function(String password, String repeatPassword)
        saveNewPassword,
  }) {
    return openResetPasswordScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openResetPasswordScreen,
    TResult Function(String email)? sendRecoveryInstructions,
    TResult Function()? getPasswordResetLink,
    TResult Function(String password, String repeatPassword)? saveNewPassword,
  }) {
    return openResetPasswordScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openResetPasswordScreen,
    TResult Function(String email)? sendRecoveryInstructions,
    TResult Function()? getPasswordResetLink,
    TResult Function(String password, String repeatPassword)? saveNewPassword,
    required TResult orElse(),
  }) {
    if (openResetPasswordScreen != null) {
      return openResetPasswordScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenResetPasswordScreenEvent value)
        openResetPasswordScreen,
    required TResult Function(SendRecoveryInstructionsEvent value)
        sendRecoveryInstructions,
    required TResult Function(GetPasswordResetLinkEvent value)
        getPasswordResetLink,
    required TResult Function(SaveNewPasswordEvent value) saveNewPassword,
  }) {
    return openResetPasswordScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenResetPasswordScreenEvent value)?
        openResetPasswordScreen,
    TResult Function(SendRecoveryInstructionsEvent value)?
        sendRecoveryInstructions,
    TResult Function(GetPasswordResetLinkEvent value)? getPasswordResetLink,
    TResult Function(SaveNewPasswordEvent value)? saveNewPassword,
  }) {
    return openResetPasswordScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenResetPasswordScreenEvent value)?
        openResetPasswordScreen,
    TResult Function(SendRecoveryInstructionsEvent value)?
        sendRecoveryInstructions,
    TResult Function(GetPasswordResetLinkEvent value)? getPasswordResetLink,
    TResult Function(SaveNewPasswordEvent value)? saveNewPassword,
    required TResult orElse(),
  }) {
    if (openResetPasswordScreen != null) {
      return openResetPasswordScreen(this);
    }
    return orElse();
  }
}

abstract class OpenResetPasswordScreenEvent implements ResetPasswordEvent {
  factory OpenResetPasswordScreenEvent() = _$OpenResetPasswordScreenEvent;
}

/// @nodoc
abstract class $SendRecoveryInstructionsEventCopyWith<$Res> {
  factory $SendRecoveryInstructionsEventCopyWith(
          SendRecoveryInstructionsEvent value,
          $Res Function(SendRecoveryInstructionsEvent) then) =
      _$SendRecoveryInstructionsEventCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$SendRecoveryInstructionsEventCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements $SendRecoveryInstructionsEventCopyWith<$Res> {
  _$SendRecoveryInstructionsEventCopyWithImpl(
      SendRecoveryInstructionsEvent _value,
      $Res Function(SendRecoveryInstructionsEvent) _then)
      : super(_value, (v) => _then(v as SendRecoveryInstructionsEvent));

  @override
  SendRecoveryInstructionsEvent get _value =>
      super._value as SendRecoveryInstructionsEvent;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(SendRecoveryInstructionsEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendRecoveryInstructionsEvent
    with DiagnosticableTreeMixin
    implements SendRecoveryInstructionsEvent {
  _$SendRecoveryInstructionsEvent({required this.email});

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordEvent.sendRecoveryInstructions(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ResetPasswordEvent.sendRecoveryInstructions'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendRecoveryInstructionsEvent &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $SendRecoveryInstructionsEventCopyWith<SendRecoveryInstructionsEvent>
      get copyWith => _$SendRecoveryInstructionsEventCopyWithImpl<
          SendRecoveryInstructionsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openResetPasswordScreen,
    required TResult Function(String email) sendRecoveryInstructions,
    required TResult Function() getPasswordResetLink,
    required TResult Function(String password, String repeatPassword)
        saveNewPassword,
  }) {
    return sendRecoveryInstructions(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openResetPasswordScreen,
    TResult Function(String email)? sendRecoveryInstructions,
    TResult Function()? getPasswordResetLink,
    TResult Function(String password, String repeatPassword)? saveNewPassword,
  }) {
    return sendRecoveryInstructions?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openResetPasswordScreen,
    TResult Function(String email)? sendRecoveryInstructions,
    TResult Function()? getPasswordResetLink,
    TResult Function(String password, String repeatPassword)? saveNewPassword,
    required TResult orElse(),
  }) {
    if (sendRecoveryInstructions != null) {
      return sendRecoveryInstructions(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenResetPasswordScreenEvent value)
        openResetPasswordScreen,
    required TResult Function(SendRecoveryInstructionsEvent value)
        sendRecoveryInstructions,
    required TResult Function(GetPasswordResetLinkEvent value)
        getPasswordResetLink,
    required TResult Function(SaveNewPasswordEvent value) saveNewPassword,
  }) {
    return sendRecoveryInstructions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenResetPasswordScreenEvent value)?
        openResetPasswordScreen,
    TResult Function(SendRecoveryInstructionsEvent value)?
        sendRecoveryInstructions,
    TResult Function(GetPasswordResetLinkEvent value)? getPasswordResetLink,
    TResult Function(SaveNewPasswordEvent value)? saveNewPassword,
  }) {
    return sendRecoveryInstructions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenResetPasswordScreenEvent value)?
        openResetPasswordScreen,
    TResult Function(SendRecoveryInstructionsEvent value)?
        sendRecoveryInstructions,
    TResult Function(GetPasswordResetLinkEvent value)? getPasswordResetLink,
    TResult Function(SaveNewPasswordEvent value)? saveNewPassword,
    required TResult orElse(),
  }) {
    if (sendRecoveryInstructions != null) {
      return sendRecoveryInstructions(this);
    }
    return orElse();
  }
}

abstract class SendRecoveryInstructionsEvent implements ResetPasswordEvent {
  factory SendRecoveryInstructionsEvent({required String email}) =
      _$SendRecoveryInstructionsEvent;

  String get email;
  @JsonKey(ignore: true)
  $SendRecoveryInstructionsEventCopyWith<SendRecoveryInstructionsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPasswordResetLinkEventCopyWith<$Res> {
  factory $GetPasswordResetLinkEventCopyWith(GetPasswordResetLinkEvent value,
          $Res Function(GetPasswordResetLinkEvent) then) =
      _$GetPasswordResetLinkEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPasswordResetLinkEventCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements $GetPasswordResetLinkEventCopyWith<$Res> {
  _$GetPasswordResetLinkEventCopyWithImpl(GetPasswordResetLinkEvent _value,
      $Res Function(GetPasswordResetLinkEvent) _then)
      : super(_value, (v) => _then(v as GetPasswordResetLinkEvent));

  @override
  GetPasswordResetLinkEvent get _value =>
      super._value as GetPasswordResetLinkEvent;
}

/// @nodoc

class _$GetPasswordResetLinkEvent
    with DiagnosticableTreeMixin
    implements GetPasswordResetLinkEvent {
  _$GetPasswordResetLinkEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordEvent.getPasswordResetLink()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ResetPasswordEvent.getPasswordResetLink'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPasswordResetLinkEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openResetPasswordScreen,
    required TResult Function(String email) sendRecoveryInstructions,
    required TResult Function() getPasswordResetLink,
    required TResult Function(String password, String repeatPassword)
        saveNewPassword,
  }) {
    return getPasswordResetLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openResetPasswordScreen,
    TResult Function(String email)? sendRecoveryInstructions,
    TResult Function()? getPasswordResetLink,
    TResult Function(String password, String repeatPassword)? saveNewPassword,
  }) {
    return getPasswordResetLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openResetPasswordScreen,
    TResult Function(String email)? sendRecoveryInstructions,
    TResult Function()? getPasswordResetLink,
    TResult Function(String password, String repeatPassword)? saveNewPassword,
    required TResult orElse(),
  }) {
    if (getPasswordResetLink != null) {
      return getPasswordResetLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenResetPasswordScreenEvent value)
        openResetPasswordScreen,
    required TResult Function(SendRecoveryInstructionsEvent value)
        sendRecoveryInstructions,
    required TResult Function(GetPasswordResetLinkEvent value)
        getPasswordResetLink,
    required TResult Function(SaveNewPasswordEvent value) saveNewPassword,
  }) {
    return getPasswordResetLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenResetPasswordScreenEvent value)?
        openResetPasswordScreen,
    TResult Function(SendRecoveryInstructionsEvent value)?
        sendRecoveryInstructions,
    TResult Function(GetPasswordResetLinkEvent value)? getPasswordResetLink,
    TResult Function(SaveNewPasswordEvent value)? saveNewPassword,
  }) {
    return getPasswordResetLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenResetPasswordScreenEvent value)?
        openResetPasswordScreen,
    TResult Function(SendRecoveryInstructionsEvent value)?
        sendRecoveryInstructions,
    TResult Function(GetPasswordResetLinkEvent value)? getPasswordResetLink,
    TResult Function(SaveNewPasswordEvent value)? saveNewPassword,
    required TResult orElse(),
  }) {
    if (getPasswordResetLink != null) {
      return getPasswordResetLink(this);
    }
    return orElse();
  }
}

abstract class GetPasswordResetLinkEvent implements ResetPasswordEvent {
  factory GetPasswordResetLinkEvent() = _$GetPasswordResetLinkEvent;
}

/// @nodoc
abstract class $SaveNewPasswordEventCopyWith<$Res> {
  factory $SaveNewPasswordEventCopyWith(SaveNewPasswordEvent value,
          $Res Function(SaveNewPasswordEvent) then) =
      _$SaveNewPasswordEventCopyWithImpl<$Res>;
  $Res call({String password, String repeatPassword});
}

/// @nodoc
class _$SaveNewPasswordEventCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements $SaveNewPasswordEventCopyWith<$Res> {
  _$SaveNewPasswordEventCopyWithImpl(
      SaveNewPasswordEvent _value, $Res Function(SaveNewPasswordEvent) _then)
      : super(_value, (v) => _then(v as SaveNewPasswordEvent));

  @override
  SaveNewPasswordEvent get _value => super._value as SaveNewPasswordEvent;

  @override
  $Res call({
    Object? password = freezed,
    Object? repeatPassword = freezed,
  }) {
    return _then(SaveNewPasswordEvent(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveNewPasswordEvent
    with DiagnosticableTreeMixin
    implements SaveNewPasswordEvent {
  _$SaveNewPasswordEvent(
      {required this.password, required this.repeatPassword});

  @override
  final String password;
  @override
  final String repeatPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordEvent.saveNewPassword(password: $password, repeatPassword: $repeatPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResetPasswordEvent.saveNewPassword'))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('repeatPassword', repeatPassword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveNewPasswordEvent &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatPassword));

  @JsonKey(ignore: true)
  @override
  $SaveNewPasswordEventCopyWith<SaveNewPasswordEvent> get copyWith =>
      _$SaveNewPasswordEventCopyWithImpl<SaveNewPasswordEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openResetPasswordScreen,
    required TResult Function(String email) sendRecoveryInstructions,
    required TResult Function() getPasswordResetLink,
    required TResult Function(String password, String repeatPassword)
        saveNewPassword,
  }) {
    return saveNewPassword(password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openResetPasswordScreen,
    TResult Function(String email)? sendRecoveryInstructions,
    TResult Function()? getPasswordResetLink,
    TResult Function(String password, String repeatPassword)? saveNewPassword,
  }) {
    return saveNewPassword?.call(password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openResetPasswordScreen,
    TResult Function(String email)? sendRecoveryInstructions,
    TResult Function()? getPasswordResetLink,
    TResult Function(String password, String repeatPassword)? saveNewPassword,
    required TResult orElse(),
  }) {
    if (saveNewPassword != null) {
      return saveNewPassword(password, repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenResetPasswordScreenEvent value)
        openResetPasswordScreen,
    required TResult Function(SendRecoveryInstructionsEvent value)
        sendRecoveryInstructions,
    required TResult Function(GetPasswordResetLinkEvent value)
        getPasswordResetLink,
    required TResult Function(SaveNewPasswordEvent value) saveNewPassword,
  }) {
    return saveNewPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenResetPasswordScreenEvent value)?
        openResetPasswordScreen,
    TResult Function(SendRecoveryInstructionsEvent value)?
        sendRecoveryInstructions,
    TResult Function(GetPasswordResetLinkEvent value)? getPasswordResetLink,
    TResult Function(SaveNewPasswordEvent value)? saveNewPassword,
  }) {
    return saveNewPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenResetPasswordScreenEvent value)?
        openResetPasswordScreen,
    TResult Function(SendRecoveryInstructionsEvent value)?
        sendRecoveryInstructions,
    TResult Function(GetPasswordResetLinkEvent value)? getPasswordResetLink,
    TResult Function(SaveNewPasswordEvent value)? saveNewPassword,
    required TResult orElse(),
  }) {
    if (saveNewPassword != null) {
      return saveNewPassword(this);
    }
    return orElse();
  }
}

abstract class SaveNewPasswordEvent implements ResetPasswordEvent {
  factory SaveNewPasswordEvent(
      {required String password,
      required String repeatPassword}) = _$SaveNewPasswordEvent;

  String get password;
  String get repeatPassword;
  @JsonKey(ignore: true)
  $SaveNewPasswordEventCopyWith<SaveNewPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResetPasswordStateTearOff {
  const _$ResetPasswordStateTearOff();

  ResetPasswordLoadingSentState loading() {
    return const ResetPasswordLoadingSentState();
  }

  ResetPasswordOpenResetPasswordScreenState openResetPasswordScreen() {
    return const ResetPasswordOpenResetPasswordScreenState();
  }

  ResetPasswordMessageSentState messageSend() {
    return const ResetPasswordMessageSentState();
  }

  ResetPasswordErrorState error({String? message}) {
    return ResetPasswordErrorState(
      message: message,
    );
  }

  ResetPasswordGetPasswordResetLinkState getPasswordResetLink({String? email}) {
    return ResetPasswordGetPasswordResetLinkState(
      email: email,
    );
  }

  ResetPasswordSuceessState success({String? email, String? password}) {
    return ResetPasswordSuceessState(
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $ResetPasswordState = _$ResetPasswordStateTearOff();

/// @nodoc
mixin _$ResetPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() openResetPasswordScreen,
    required TResult Function() messageSend,
    required TResult Function(String? message) error,
    required TResult Function(String? email) getPasswordResetLink,
    required TResult Function(String? email, String? password) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResetPasswordLoadingSentState value) loading,
    required TResult Function(ResetPasswordOpenResetPasswordScreenState value)
        openResetPasswordScreen,
    required TResult Function(ResetPasswordMessageSentState value) messageSend,
    required TResult Function(ResetPasswordErrorState value) error,
    required TResult Function(ResetPasswordGetPasswordResetLinkState value)
        getPasswordResetLink,
    required TResult Function(ResetPasswordSuceessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  final ResetPasswordState _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordState) _then;
}

/// @nodoc
abstract class $ResetPasswordLoadingSentStateCopyWith<$Res> {
  factory $ResetPasswordLoadingSentStateCopyWith(
          ResetPasswordLoadingSentState value,
          $Res Function(ResetPasswordLoadingSentState) then) =
      _$ResetPasswordLoadingSentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordLoadingSentStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordLoadingSentStateCopyWith<$Res> {
  _$ResetPasswordLoadingSentStateCopyWithImpl(
      ResetPasswordLoadingSentState _value,
      $Res Function(ResetPasswordLoadingSentState) _then)
      : super(_value, (v) => _then(v as ResetPasswordLoadingSentState));

  @override
  ResetPasswordLoadingSentState get _value =>
      super._value as ResetPasswordLoadingSentState;
}

/// @nodoc

class _$ResetPasswordLoadingSentState
    with DiagnosticableTreeMixin
    implements ResetPasswordLoadingSentState {
  const _$ResetPasswordLoadingSentState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ResetPasswordState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordLoadingSentState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() openResetPasswordScreen,
    required TResult Function() messageSend,
    required TResult Function(String? message) error,
    required TResult Function(String? email) getPasswordResetLink,
    required TResult Function(String? email, String? password) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
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
    required TResult Function(ResetPasswordLoadingSentState value) loading,
    required TResult Function(ResetPasswordOpenResetPasswordScreenState value)
        openResetPasswordScreen,
    required TResult Function(ResetPasswordMessageSentState value) messageSend,
    required TResult Function(ResetPasswordErrorState value) error,
    required TResult Function(ResetPasswordGetPasswordResetLinkState value)
        getPasswordResetLink,
    required TResult Function(ResetPasswordSuceessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordLoadingSentState implements ResetPasswordState {
  const factory ResetPasswordLoadingSentState() =
      _$ResetPasswordLoadingSentState;
}

/// @nodoc
abstract class $ResetPasswordOpenResetPasswordScreenStateCopyWith<$Res> {
  factory $ResetPasswordOpenResetPasswordScreenStateCopyWith(
          ResetPasswordOpenResetPasswordScreenState value,
          $Res Function(ResetPasswordOpenResetPasswordScreenState) then) =
      _$ResetPasswordOpenResetPasswordScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordOpenResetPasswordScreenStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordOpenResetPasswordScreenStateCopyWith<$Res> {
  _$ResetPasswordOpenResetPasswordScreenStateCopyWithImpl(
      ResetPasswordOpenResetPasswordScreenState _value,
      $Res Function(ResetPasswordOpenResetPasswordScreenState) _then)
      : super(_value,
            (v) => _then(v as ResetPasswordOpenResetPasswordScreenState));

  @override
  ResetPasswordOpenResetPasswordScreenState get _value =>
      super._value as ResetPasswordOpenResetPasswordScreenState;
}

/// @nodoc

class _$ResetPasswordOpenResetPasswordScreenState
    with DiagnosticableTreeMixin
    implements ResetPasswordOpenResetPasswordScreenState {
  const _$ResetPasswordOpenResetPasswordScreenState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordState.openResetPasswordScreen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'ResetPasswordState.openResetPasswordScreen'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordOpenResetPasswordScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() openResetPasswordScreen,
    required TResult Function() messageSend,
    required TResult Function(String? message) error,
    required TResult Function(String? email) getPasswordResetLink,
    required TResult Function(String? email, String? password) success,
  }) {
    return openResetPasswordScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
  }) {
    return openResetPasswordScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
    required TResult orElse(),
  }) {
    if (openResetPasswordScreen != null) {
      return openResetPasswordScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResetPasswordLoadingSentState value) loading,
    required TResult Function(ResetPasswordOpenResetPasswordScreenState value)
        openResetPasswordScreen,
    required TResult Function(ResetPasswordMessageSentState value) messageSend,
    required TResult Function(ResetPasswordErrorState value) error,
    required TResult Function(ResetPasswordGetPasswordResetLinkState value)
        getPasswordResetLink,
    required TResult Function(ResetPasswordSuceessState value) success,
  }) {
    return openResetPasswordScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
  }) {
    return openResetPasswordScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
    required TResult orElse(),
  }) {
    if (openResetPasswordScreen != null) {
      return openResetPasswordScreen(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordOpenResetPasswordScreenState
    implements ResetPasswordState {
  const factory ResetPasswordOpenResetPasswordScreenState() =
      _$ResetPasswordOpenResetPasswordScreenState;
}

/// @nodoc
abstract class $ResetPasswordMessageSentStateCopyWith<$Res> {
  factory $ResetPasswordMessageSentStateCopyWith(
          ResetPasswordMessageSentState value,
          $Res Function(ResetPasswordMessageSentState) then) =
      _$ResetPasswordMessageSentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordMessageSentStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordMessageSentStateCopyWith<$Res> {
  _$ResetPasswordMessageSentStateCopyWithImpl(
      ResetPasswordMessageSentState _value,
      $Res Function(ResetPasswordMessageSentState) _then)
      : super(_value, (v) => _then(v as ResetPasswordMessageSentState));

  @override
  ResetPasswordMessageSentState get _value =>
      super._value as ResetPasswordMessageSentState;
}

/// @nodoc

class _$ResetPasswordMessageSentState
    with DiagnosticableTreeMixin
    implements ResetPasswordMessageSentState {
  const _$ResetPasswordMessageSentState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordState.messageSend()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ResetPasswordState.messageSend'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordMessageSentState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() openResetPasswordScreen,
    required TResult Function() messageSend,
    required TResult Function(String? message) error,
    required TResult Function(String? email) getPasswordResetLink,
    required TResult Function(String? email, String? password) success,
  }) {
    return messageSend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
  }) {
    return messageSend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
    required TResult orElse(),
  }) {
    if (messageSend != null) {
      return messageSend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResetPasswordLoadingSentState value) loading,
    required TResult Function(ResetPasswordOpenResetPasswordScreenState value)
        openResetPasswordScreen,
    required TResult Function(ResetPasswordMessageSentState value) messageSend,
    required TResult Function(ResetPasswordErrorState value) error,
    required TResult Function(ResetPasswordGetPasswordResetLinkState value)
        getPasswordResetLink,
    required TResult Function(ResetPasswordSuceessState value) success,
  }) {
    return messageSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
  }) {
    return messageSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
    required TResult orElse(),
  }) {
    if (messageSend != null) {
      return messageSend(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordMessageSentState implements ResetPasswordState {
  const factory ResetPasswordMessageSentState() =
      _$ResetPasswordMessageSentState;
}

/// @nodoc
abstract class $ResetPasswordErrorStateCopyWith<$Res> {
  factory $ResetPasswordErrorStateCopyWith(ResetPasswordErrorState value,
          $Res Function(ResetPasswordErrorState) then) =
      _$ResetPasswordErrorStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$ResetPasswordErrorStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordErrorStateCopyWith<$Res> {
  _$ResetPasswordErrorStateCopyWithImpl(ResetPasswordErrorState _value,
      $Res Function(ResetPasswordErrorState) _then)
      : super(_value, (v) => _then(v as ResetPasswordErrorState));

  @override
  ResetPasswordErrorState get _value => super._value as ResetPasswordErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ResetPasswordErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ResetPasswordErrorState
    with DiagnosticableTreeMixin
    implements ResetPasswordErrorState {
  const _$ResetPasswordErrorState({this.message});

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResetPasswordState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ResetPasswordErrorStateCopyWith<ResetPasswordErrorState> get copyWith =>
      _$ResetPasswordErrorStateCopyWithImpl<ResetPasswordErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() openResetPasswordScreen,
    required TResult Function() messageSend,
    required TResult Function(String? message) error,
    required TResult Function(String? email) getPasswordResetLink,
    required TResult Function(String? email, String? password) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResetPasswordLoadingSentState value) loading,
    required TResult Function(ResetPasswordOpenResetPasswordScreenState value)
        openResetPasswordScreen,
    required TResult Function(ResetPasswordMessageSentState value) messageSend,
    required TResult Function(ResetPasswordErrorState value) error,
    required TResult Function(ResetPasswordGetPasswordResetLinkState value)
        getPasswordResetLink,
    required TResult Function(ResetPasswordSuceessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordErrorState implements ResetPasswordState {
  const factory ResetPasswordErrorState({String? message}) =
      _$ResetPasswordErrorState;

  String? get message;
  @JsonKey(ignore: true)
  $ResetPasswordErrorStateCopyWith<ResetPasswordErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordGetPasswordResetLinkStateCopyWith<$Res> {
  factory $ResetPasswordGetPasswordResetLinkStateCopyWith(
          ResetPasswordGetPasswordResetLinkState value,
          $Res Function(ResetPasswordGetPasswordResetLinkState) then) =
      _$ResetPasswordGetPasswordResetLinkStateCopyWithImpl<$Res>;
  $Res call({String? email});
}

/// @nodoc
class _$ResetPasswordGetPasswordResetLinkStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordGetPasswordResetLinkStateCopyWith<$Res> {
  _$ResetPasswordGetPasswordResetLinkStateCopyWithImpl(
      ResetPasswordGetPasswordResetLinkState _value,
      $Res Function(ResetPasswordGetPasswordResetLinkState) _then)
      : super(
            _value, (v) => _then(v as ResetPasswordGetPasswordResetLinkState));

  @override
  ResetPasswordGetPasswordResetLinkState get _value =>
      super._value as ResetPasswordGetPasswordResetLinkState;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(ResetPasswordGetPasswordResetLinkState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ResetPasswordGetPasswordResetLinkState
    with DiagnosticableTreeMixin
    implements ResetPasswordGetPasswordResetLinkState {
  const _$ResetPasswordGetPasswordResetLinkState({this.email});

  @override
  final String? email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordState.getPasswordResetLink(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ResetPasswordState.getPasswordResetLink'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordGetPasswordResetLinkState &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $ResetPasswordGetPasswordResetLinkStateCopyWith<
          ResetPasswordGetPasswordResetLinkState>
      get copyWith => _$ResetPasswordGetPasswordResetLinkStateCopyWithImpl<
          ResetPasswordGetPasswordResetLinkState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() openResetPasswordScreen,
    required TResult Function() messageSend,
    required TResult Function(String? message) error,
    required TResult Function(String? email) getPasswordResetLink,
    required TResult Function(String? email, String? password) success,
  }) {
    return getPasswordResetLink(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
  }) {
    return getPasswordResetLink?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
    required TResult orElse(),
  }) {
    if (getPasswordResetLink != null) {
      return getPasswordResetLink(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResetPasswordLoadingSentState value) loading,
    required TResult Function(ResetPasswordOpenResetPasswordScreenState value)
        openResetPasswordScreen,
    required TResult Function(ResetPasswordMessageSentState value) messageSend,
    required TResult Function(ResetPasswordErrorState value) error,
    required TResult Function(ResetPasswordGetPasswordResetLinkState value)
        getPasswordResetLink,
    required TResult Function(ResetPasswordSuceessState value) success,
  }) {
    return getPasswordResetLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
  }) {
    return getPasswordResetLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
    required TResult orElse(),
  }) {
    if (getPasswordResetLink != null) {
      return getPasswordResetLink(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordGetPasswordResetLinkState
    implements ResetPasswordState {
  const factory ResetPasswordGetPasswordResetLinkState({String? email}) =
      _$ResetPasswordGetPasswordResetLinkState;

  String? get email;
  @JsonKey(ignore: true)
  $ResetPasswordGetPasswordResetLinkStateCopyWith<
          ResetPasswordGetPasswordResetLinkState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordSuceessStateCopyWith<$Res> {
  factory $ResetPasswordSuceessStateCopyWith(ResetPasswordSuceessState value,
          $Res Function(ResetPasswordSuceessState) then) =
      _$ResetPasswordSuceessStateCopyWithImpl<$Res>;
  $Res call({String? email, String? password});
}

/// @nodoc
class _$ResetPasswordSuceessStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordSuceessStateCopyWith<$Res> {
  _$ResetPasswordSuceessStateCopyWithImpl(ResetPasswordSuceessState _value,
      $Res Function(ResetPasswordSuceessState) _then)
      : super(_value, (v) => _then(v as ResetPasswordSuceessState));

  @override
  ResetPasswordSuceessState get _value =>
      super._value as ResetPasswordSuceessState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(ResetPasswordSuceessState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ResetPasswordSuceessState
    with DiagnosticableTreeMixin
    implements ResetPasswordSuceessState {
  const _$ResetPasswordSuceessState({this.email, this.password});

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordState.success(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResetPasswordState.success'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordSuceessState &&
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
  $ResetPasswordSuceessStateCopyWith<ResetPasswordSuceessState> get copyWith =>
      _$ResetPasswordSuceessStateCopyWithImpl<ResetPasswordSuceessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() openResetPasswordScreen,
    required TResult Function() messageSend,
    required TResult Function(String? message) error,
    required TResult Function(String? email) getPasswordResetLink,
    required TResult Function(String? email, String? password) success,
  }) {
    return success(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
  }) {
    return success?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? openResetPasswordScreen,
    TResult Function()? messageSend,
    TResult Function(String? message)? error,
    TResult Function(String? email)? getPasswordResetLink,
    TResult Function(String? email, String? password)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResetPasswordLoadingSentState value) loading,
    required TResult Function(ResetPasswordOpenResetPasswordScreenState value)
        openResetPasswordScreen,
    required TResult Function(ResetPasswordMessageSentState value) messageSend,
    required TResult Function(ResetPasswordErrorState value) error,
    required TResult Function(ResetPasswordGetPasswordResetLinkState value)
        getPasswordResetLink,
    required TResult Function(ResetPasswordSuceessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetPasswordLoadingSentState value)? loading,
    TResult Function(ResetPasswordOpenResetPasswordScreenState value)?
        openResetPasswordScreen,
    TResult Function(ResetPasswordMessageSentState value)? messageSend,
    TResult Function(ResetPasswordErrorState value)? error,
    TResult Function(ResetPasswordGetPasswordResetLinkState value)?
        getPasswordResetLink,
    TResult Function(ResetPasswordSuceessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordSuceessState implements ResetPasswordState {
  const factory ResetPasswordSuceessState({String? email, String? password}) =
      _$ResetPasswordSuceessState;

  String? get email;
  String? get password;
  @JsonKey(ignore: true)
  $ResetPasswordSuceessStateCopyWith<ResetPasswordSuceessState> get copyWith =>
      throw _privateConstructorUsedError;
}
