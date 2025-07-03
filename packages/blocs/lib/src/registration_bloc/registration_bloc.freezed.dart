// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegistrationEventTearOff {
  const _$RegistrationEventTearOff();

  EnteredEmailEvent enteredEmail({required String email}) {
    return EnteredEmailEvent(
      email: email,
    );
  }

  EnteredUserInfoEvent enteredUserInfo(
      {required String firstName,
      required String lastName,
      required String phoneNamber}) {
    return EnteredUserInfoEvent(
      firstName: firstName,
      lastName: lastName,
      phoneNamber: phoneNamber,
    );
  }

  EnteredPasswordEvent enteredPassword(
      {required String password, required String confirmedPassword}) {
    return EnteredPasswordEvent(
      password: password,
      confirmedPassword: confirmedPassword,
    );
  }

  UpdateInformationEvent updateInformation() {
    return UpdateInformationEvent();
  }
}

/// @nodoc
const $RegistrationEvent = _$RegistrationEventTearOff();

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) enteredEmail,
    required TResult Function(
            String firstName, String lastName, String phoneNamber)
        enteredUserInfo,
    required TResult Function(String password, String confirmedPassword)
        enteredPassword,
    required TResult Function() updateInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? enteredEmail,
    TResult Function(String firstName, String lastName, String phoneNamber)?
        enteredUserInfo,
    TResult Function(String password, String confirmedPassword)?
        enteredPassword,
    TResult Function()? updateInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? enteredEmail,
    TResult Function(String firstName, String lastName, String phoneNamber)?
        enteredUserInfo,
    TResult Function(String password, String confirmedPassword)?
        enteredPassword,
    TResult Function()? updateInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredEmailEvent value) enteredEmail,
    required TResult Function(EnteredUserInfoEvent value) enteredUserInfo,
    required TResult Function(EnteredPasswordEvent value) enteredPassword,
    required TResult Function(UpdateInformationEvent value) updateInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnteredEmailEvent value)? enteredEmail,
    TResult Function(EnteredUserInfoEvent value)? enteredUserInfo,
    TResult Function(EnteredPasswordEvent value)? enteredPassword,
    TResult Function(UpdateInformationEvent value)? updateInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredEmailEvent value)? enteredEmail,
    TResult Function(EnteredUserInfoEvent value)? enteredUserInfo,
    TResult Function(EnteredPasswordEvent value)? enteredPassword,
    TResult Function(UpdateInformationEvent value)? updateInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  final RegistrationEvent _value;
  // ignore: unused_field
  final $Res Function(RegistrationEvent) _then;
}

/// @nodoc
abstract class $EnteredEmailEventCopyWith<$Res> {
  factory $EnteredEmailEventCopyWith(
          EnteredEmailEvent value, $Res Function(EnteredEmailEvent) then) =
      _$EnteredEmailEventCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EnteredEmailEventCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements $EnteredEmailEventCopyWith<$Res> {
  _$EnteredEmailEventCopyWithImpl(
      EnteredEmailEvent _value, $Res Function(EnteredEmailEvent) _then)
      : super(_value, (v) => _then(v as EnteredEmailEvent));

  @override
  EnteredEmailEvent get _value => super._value as EnteredEmailEvent;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(EnteredEmailEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnteredEmailEvent implements EnteredEmailEvent {
  _$EnteredEmailEvent({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'RegistrationEvent.enteredEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EnteredEmailEvent &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $EnteredEmailEventCopyWith<EnteredEmailEvent> get copyWith =>
      _$EnteredEmailEventCopyWithImpl<EnteredEmailEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) enteredEmail,
    required TResult Function(
            String firstName, String lastName, String phoneNamber)
        enteredUserInfo,
    required TResult Function(String password, String confirmedPassword)
        enteredPassword,
    required TResult Function() updateInformation,
  }) {
    return enteredEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? enteredEmail,
    TResult Function(String firstName, String lastName, String phoneNamber)?
        enteredUserInfo,
    TResult Function(String password, String confirmedPassword)?
        enteredPassword,
    TResult Function()? updateInformation,
  }) {
    return enteredEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? enteredEmail,
    TResult Function(String firstName, String lastName, String phoneNamber)?
        enteredUserInfo,
    TResult Function(String password, String confirmedPassword)?
        enteredPassword,
    TResult Function()? updateInformation,
    required TResult orElse(),
  }) {
    if (enteredEmail != null) {
      return enteredEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredEmailEvent value) enteredEmail,
    required TResult Function(EnteredUserInfoEvent value) enteredUserInfo,
    required TResult Function(EnteredPasswordEvent value) enteredPassword,
    required TResult Function(UpdateInformationEvent value) updateInformation,
  }) {
    return enteredEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnteredEmailEvent value)? enteredEmail,
    TResult Function(EnteredUserInfoEvent value)? enteredUserInfo,
    TResult Function(EnteredPasswordEvent value)? enteredPassword,
    TResult Function(UpdateInformationEvent value)? updateInformation,
  }) {
    return enteredEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredEmailEvent value)? enteredEmail,
    TResult Function(EnteredUserInfoEvent value)? enteredUserInfo,
    TResult Function(EnteredPasswordEvent value)? enteredPassword,
    TResult Function(UpdateInformationEvent value)? updateInformation,
    required TResult orElse(),
  }) {
    if (enteredEmail != null) {
      return enteredEmail(this);
    }
    return orElse();
  }
}

abstract class EnteredEmailEvent implements RegistrationEvent {
  factory EnteredEmailEvent({required String email}) = _$EnteredEmailEvent;

  String get email;
  @JsonKey(ignore: true)
  $EnteredEmailEventCopyWith<EnteredEmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnteredUserInfoEventCopyWith<$Res> {
  factory $EnteredUserInfoEventCopyWith(EnteredUserInfoEvent value,
          $Res Function(EnteredUserInfoEvent) then) =
      _$EnteredUserInfoEventCopyWithImpl<$Res>;
  $Res call({String firstName, String lastName, String phoneNamber});
}

/// @nodoc
class _$EnteredUserInfoEventCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements $EnteredUserInfoEventCopyWith<$Res> {
  _$EnteredUserInfoEventCopyWithImpl(
      EnteredUserInfoEvent _value, $Res Function(EnteredUserInfoEvent) _then)
      : super(_value, (v) => _then(v as EnteredUserInfoEvent));

  @override
  EnteredUserInfoEvent get _value => super._value as EnteredUserInfoEvent;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNamber = freezed,
  }) {
    return _then(EnteredUserInfoEvent(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNamber: phoneNamber == freezed
          ? _value.phoneNamber
          : phoneNamber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnteredUserInfoEvent implements EnteredUserInfoEvent {
  _$EnteredUserInfoEvent(
      {required this.firstName,
      required this.lastName,
      required this.phoneNamber});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNamber;

  @override
  String toString() {
    return 'RegistrationEvent.enteredUserInfo(firstName: $firstName, lastName: $lastName, phoneNamber: $phoneNamber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EnteredUserInfoEvent &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNamber, phoneNamber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(phoneNamber));

  @JsonKey(ignore: true)
  @override
  $EnteredUserInfoEventCopyWith<EnteredUserInfoEvent> get copyWith =>
      _$EnteredUserInfoEventCopyWithImpl<EnteredUserInfoEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) enteredEmail,
    required TResult Function(
            String firstName, String lastName, String phoneNamber)
        enteredUserInfo,
    required TResult Function(String password, String confirmedPassword)
        enteredPassword,
    required TResult Function() updateInformation,
  }) {
    return enteredUserInfo(firstName, lastName, phoneNamber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? enteredEmail,
    TResult Function(String firstName, String lastName, String phoneNamber)?
        enteredUserInfo,
    TResult Function(String password, String confirmedPassword)?
        enteredPassword,
    TResult Function()? updateInformation,
  }) {
    return enteredUserInfo?.call(firstName, lastName, phoneNamber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? enteredEmail,
    TResult Function(String firstName, String lastName, String phoneNamber)?
        enteredUserInfo,
    TResult Function(String password, String confirmedPassword)?
        enteredPassword,
    TResult Function()? updateInformation,
    required TResult orElse(),
  }) {
    if (enteredUserInfo != null) {
      return enteredUserInfo(firstName, lastName, phoneNamber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredEmailEvent value) enteredEmail,
    required TResult Function(EnteredUserInfoEvent value) enteredUserInfo,
    required TResult Function(EnteredPasswordEvent value) enteredPassword,
    required TResult Function(UpdateInformationEvent value) updateInformation,
  }) {
    return enteredUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnteredEmailEvent value)? enteredEmail,
    TResult Function(EnteredUserInfoEvent value)? enteredUserInfo,
    TResult Function(EnteredPasswordEvent value)? enteredPassword,
    TResult Function(UpdateInformationEvent value)? updateInformation,
  }) {
    return enteredUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredEmailEvent value)? enteredEmail,
    TResult Function(EnteredUserInfoEvent value)? enteredUserInfo,
    TResult Function(EnteredPasswordEvent value)? enteredPassword,
    TResult Function(UpdateInformationEvent value)? updateInformation,
    required TResult orElse(),
  }) {
    if (enteredUserInfo != null) {
      return enteredUserInfo(this);
    }
    return orElse();
  }
}

abstract class EnteredUserInfoEvent implements RegistrationEvent {
  factory EnteredUserInfoEvent(
      {required String firstName,
      required String lastName,
      required String phoneNamber}) = _$EnteredUserInfoEvent;

  String get firstName;
  String get lastName;
  String get phoneNamber;
  @JsonKey(ignore: true)
  $EnteredUserInfoEventCopyWith<EnteredUserInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnteredPasswordEventCopyWith<$Res> {
  factory $EnteredPasswordEventCopyWith(EnteredPasswordEvent value,
          $Res Function(EnteredPasswordEvent) then) =
      _$EnteredPasswordEventCopyWithImpl<$Res>;
  $Res call({String password, String confirmedPassword});
}

/// @nodoc
class _$EnteredPasswordEventCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements $EnteredPasswordEventCopyWith<$Res> {
  _$EnteredPasswordEventCopyWithImpl(
      EnteredPasswordEvent _value, $Res Function(EnteredPasswordEvent) _then)
      : super(_value, (v) => _then(v as EnteredPasswordEvent));

  @override
  EnteredPasswordEvent get _value => super._value as EnteredPasswordEvent;

  @override
  $Res call({
    Object? password = freezed,
    Object? confirmedPassword = freezed,
  }) {
    return _then(EnteredPasswordEvent(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedPassword: confirmedPassword == freezed
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnteredPasswordEvent implements EnteredPasswordEvent {
  _$EnteredPasswordEvent(
      {required this.password, required this.confirmedPassword});

  @override
  final String password;
  @override
  final String confirmedPassword;

  @override
  String toString() {
    return 'RegistrationEvent.enteredPassword(password: $password, confirmedPassword: $confirmedPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EnteredPasswordEvent &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmedPassword, confirmedPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmedPassword));

  @JsonKey(ignore: true)
  @override
  $EnteredPasswordEventCopyWith<EnteredPasswordEvent> get copyWith =>
      _$EnteredPasswordEventCopyWithImpl<EnteredPasswordEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) enteredEmail,
    required TResult Function(
            String firstName, String lastName, String phoneNamber)
        enteredUserInfo,
    required TResult Function(String password, String confirmedPassword)
        enteredPassword,
    required TResult Function() updateInformation,
  }) {
    return enteredPassword(password, confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? enteredEmail,
    TResult Function(String firstName, String lastName, String phoneNamber)?
        enteredUserInfo,
    TResult Function(String password, String confirmedPassword)?
        enteredPassword,
    TResult Function()? updateInformation,
  }) {
    return enteredPassword?.call(password, confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? enteredEmail,
    TResult Function(String firstName, String lastName, String phoneNamber)?
        enteredUserInfo,
    TResult Function(String password, String confirmedPassword)?
        enteredPassword,
    TResult Function()? updateInformation,
    required TResult orElse(),
  }) {
    if (enteredPassword != null) {
      return enteredPassword(password, confirmedPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredEmailEvent value) enteredEmail,
    required TResult Function(EnteredUserInfoEvent value) enteredUserInfo,
    required TResult Function(EnteredPasswordEvent value) enteredPassword,
    required TResult Function(UpdateInformationEvent value) updateInformation,
  }) {
    return enteredPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnteredEmailEvent value)? enteredEmail,
    TResult Function(EnteredUserInfoEvent value)? enteredUserInfo,
    TResult Function(EnteredPasswordEvent value)? enteredPassword,
    TResult Function(UpdateInformationEvent value)? updateInformation,
  }) {
    return enteredPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredEmailEvent value)? enteredEmail,
    TResult Function(EnteredUserInfoEvent value)? enteredUserInfo,
    TResult Function(EnteredPasswordEvent value)? enteredPassword,
    TResult Function(UpdateInformationEvent value)? updateInformation,
    required TResult orElse(),
  }) {
    if (enteredPassword != null) {
      return enteredPassword(this);
    }
    return orElse();
  }
}

abstract class EnteredPasswordEvent implements RegistrationEvent {
  factory EnteredPasswordEvent(
      {required String password,
      required String confirmedPassword}) = _$EnteredPasswordEvent;

  String get password;
  String get confirmedPassword;
  @JsonKey(ignore: true)
  $EnteredPasswordEventCopyWith<EnteredPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateInformationEventCopyWith<$Res> {
  factory $UpdateInformationEventCopyWith(UpdateInformationEvent value,
          $Res Function(UpdateInformationEvent) then) =
      _$UpdateInformationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateInformationEventCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements $UpdateInformationEventCopyWith<$Res> {
  _$UpdateInformationEventCopyWithImpl(UpdateInformationEvent _value,
      $Res Function(UpdateInformationEvent) _then)
      : super(_value, (v) => _then(v as UpdateInformationEvent));

  @override
  UpdateInformationEvent get _value => super._value as UpdateInformationEvent;
}

/// @nodoc

class _$UpdateInformationEvent implements UpdateInformationEvent {
  _$UpdateInformationEvent();

  @override
  String toString() {
    return 'RegistrationEvent.updateInformation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateInformationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) enteredEmail,
    required TResult Function(
            String firstName, String lastName, String phoneNamber)
        enteredUserInfo,
    required TResult Function(String password, String confirmedPassword)
        enteredPassword,
    required TResult Function() updateInformation,
  }) {
    return updateInformation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? enteredEmail,
    TResult Function(String firstName, String lastName, String phoneNamber)?
        enteredUserInfo,
    TResult Function(String password, String confirmedPassword)?
        enteredPassword,
    TResult Function()? updateInformation,
  }) {
    return updateInformation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? enteredEmail,
    TResult Function(String firstName, String lastName, String phoneNamber)?
        enteredUserInfo,
    TResult Function(String password, String confirmedPassword)?
        enteredPassword,
    TResult Function()? updateInformation,
    required TResult orElse(),
  }) {
    if (updateInformation != null) {
      return updateInformation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredEmailEvent value) enteredEmail,
    required TResult Function(EnteredUserInfoEvent value) enteredUserInfo,
    required TResult Function(EnteredPasswordEvent value) enteredPassword,
    required TResult Function(UpdateInformationEvent value) updateInformation,
  }) {
    return updateInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnteredEmailEvent value)? enteredEmail,
    TResult Function(EnteredUserInfoEvent value)? enteredUserInfo,
    TResult Function(EnteredPasswordEvent value)? enteredPassword,
    TResult Function(UpdateInformationEvent value)? updateInformation,
  }) {
    return updateInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredEmailEvent value)? enteredEmail,
    TResult Function(EnteredUserInfoEvent value)? enteredUserInfo,
    TResult Function(EnteredPasswordEvent value)? enteredPassword,
    TResult Function(UpdateInformationEvent value)? updateInformation,
    required TResult orElse(),
  }) {
    if (updateInformation != null) {
      return updateInformation(this);
    }
    return orElse();
  }
}

abstract class UpdateInformationEvent implements RegistrationEvent {
  factory UpdateInformationEvent() = _$UpdateInformationEvent;
}

/// @nodoc
class _$RegistrationStateTearOff {
  const _$RegistrationStateTearOff();

  RegistrationInitState init() {
    return const RegistrationInitState();
  }

  RegistrationFieldValuesState fieldValues(
      {required String email,
      required String firstName,
      required String lastName,
      required String phoneNamber,
      required String password,
      required String confirmedPassword}) {
    return RegistrationFieldValuesState(
      email: email,
      firstName: firstName,
      lastName: lastName,
      phoneNamber: phoneNamber,
      password: password,
      confirmedPassword: confirmedPassword,
    );
  }

  RegistrationLoadingState loading() {
    return const RegistrationLoadingState();
  }

  RegistrationSuccessState success(
      {required String email, required String password}) {
    return RegistrationSuccessState(
      email: email,
      password: password,
    );
  }

  RegistrationErrorState error(
      {required String page, required String message}) {
    return RegistrationErrorState(
      page: page,
      message: message,
    );
  }

  RegistrationErrorResponseState errorResponse({required String message}) {
    return RegistrationErrorResponseState(
      message: message,
    );
  }
}

/// @nodoc
const $RegistrationState = _$RegistrationStateTearOff();

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)
        fieldValues,
    required TResult Function() loading,
    required TResult Function(String email, String password) success,
    required TResult Function(String page, String message) error,
    required TResult Function(String message) errorResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitState value) init,
    required TResult Function(RegistrationFieldValuesState value) fieldValues,
    required TResult Function(RegistrationLoadingState value) loading,
    required TResult Function(RegistrationSuccessState value) success,
    required TResult Function(RegistrationErrorState value) error,
    required TResult Function(RegistrationErrorResponseState value)
        errorResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  final RegistrationState _value;
  // ignore: unused_field
  final $Res Function(RegistrationState) _then;
}

/// @nodoc
abstract class $RegistrationInitStateCopyWith<$Res> {
  factory $RegistrationInitStateCopyWith(RegistrationInitState value,
          $Res Function(RegistrationInitState) then) =
      _$RegistrationInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegistrationInitStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements $RegistrationInitStateCopyWith<$Res> {
  _$RegistrationInitStateCopyWithImpl(
      RegistrationInitState _value, $Res Function(RegistrationInitState) _then)
      : super(_value, (v) => _then(v as RegistrationInitState));

  @override
  RegistrationInitState get _value => super._value as RegistrationInitState;
}

/// @nodoc

class _$RegistrationInitState implements RegistrationInitState {
  const _$RegistrationInitState();

  @override
  String toString() {
    return 'RegistrationState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegistrationInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)
        fieldValues,
    required TResult Function() loading,
    required TResult Function(String email, String password) success,
    required TResult Function(String page, String message) error,
    required TResult Function(String message) errorResponse,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
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
    required TResult Function(RegistrationInitState value) init,
    required TResult Function(RegistrationFieldValuesState value) fieldValues,
    required TResult Function(RegistrationLoadingState value) loading,
    required TResult Function(RegistrationSuccessState value) success,
    required TResult Function(RegistrationErrorState value) error,
    required TResult Function(RegistrationErrorResponseState value)
        errorResponse,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class RegistrationInitState implements RegistrationState {
  const factory RegistrationInitState() = _$RegistrationInitState;
}

/// @nodoc
abstract class $RegistrationFieldValuesStateCopyWith<$Res> {
  factory $RegistrationFieldValuesStateCopyWith(
          RegistrationFieldValuesState value,
          $Res Function(RegistrationFieldValuesState) then) =
      _$RegistrationFieldValuesStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String firstName,
      String lastName,
      String phoneNamber,
      String password,
      String confirmedPassword});
}

/// @nodoc
class _$RegistrationFieldValuesStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements $RegistrationFieldValuesStateCopyWith<$Res> {
  _$RegistrationFieldValuesStateCopyWithImpl(
      RegistrationFieldValuesState _value,
      $Res Function(RegistrationFieldValuesState) _then)
      : super(_value, (v) => _then(v as RegistrationFieldValuesState));

  @override
  RegistrationFieldValuesState get _value =>
      super._value as RegistrationFieldValuesState;

  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNamber = freezed,
    Object? password = freezed,
    Object? confirmedPassword = freezed,
  }) {
    return _then(RegistrationFieldValuesState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNamber: phoneNamber == freezed
          ? _value.phoneNamber
          : phoneNamber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedPassword: confirmedPassword == freezed
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationFieldValuesState implements RegistrationFieldValuesState {
  const _$RegistrationFieldValuesState(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.phoneNamber,
      required this.password,
      required this.confirmedPassword});

  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNamber;
  @override
  final String password;
  @override
  final String confirmedPassword;

  @override
  String toString() {
    return 'RegistrationState.fieldValues(email: $email, firstName: $firstName, lastName: $lastName, phoneNamber: $phoneNamber, password: $password, confirmedPassword: $confirmedPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationFieldValuesState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNamber, phoneNamber) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmedPassword, confirmedPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(phoneNamber),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmedPassword));

  @JsonKey(ignore: true)
  @override
  $RegistrationFieldValuesStateCopyWith<RegistrationFieldValuesState>
      get copyWith => _$RegistrationFieldValuesStateCopyWithImpl<
          RegistrationFieldValuesState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)
        fieldValues,
    required TResult Function() loading,
    required TResult Function(String email, String password) success,
    required TResult Function(String page, String message) error,
    required TResult Function(String message) errorResponse,
  }) {
    return fieldValues(
        email, firstName, lastName, phoneNamber, password, confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
  }) {
    return fieldValues?.call(
        email, firstName, lastName, phoneNamber, password, confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
    required TResult orElse(),
  }) {
    if (fieldValues != null) {
      return fieldValues(
          email, firstName, lastName, phoneNamber, password, confirmedPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitState value) init,
    required TResult Function(RegistrationFieldValuesState value) fieldValues,
    required TResult Function(RegistrationLoadingState value) loading,
    required TResult Function(RegistrationSuccessState value) success,
    required TResult Function(RegistrationErrorState value) error,
    required TResult Function(RegistrationErrorResponseState value)
        errorResponse,
  }) {
    return fieldValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
  }) {
    return fieldValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
    required TResult orElse(),
  }) {
    if (fieldValues != null) {
      return fieldValues(this);
    }
    return orElse();
  }
}

abstract class RegistrationFieldValuesState implements RegistrationState {
  const factory RegistrationFieldValuesState(
      {required String email,
      required String firstName,
      required String lastName,
      required String phoneNamber,
      required String password,
      required String confirmedPassword}) = _$RegistrationFieldValuesState;

  String get email;
  String get firstName;
  String get lastName;
  String get phoneNamber;
  String get password;
  String get confirmedPassword;
  @JsonKey(ignore: true)
  $RegistrationFieldValuesStateCopyWith<RegistrationFieldValuesState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationLoadingStateCopyWith<$Res> {
  factory $RegistrationLoadingStateCopyWith(RegistrationLoadingState value,
          $Res Function(RegistrationLoadingState) then) =
      _$RegistrationLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegistrationLoadingStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements $RegistrationLoadingStateCopyWith<$Res> {
  _$RegistrationLoadingStateCopyWithImpl(RegistrationLoadingState _value,
      $Res Function(RegistrationLoadingState) _then)
      : super(_value, (v) => _then(v as RegistrationLoadingState));

  @override
  RegistrationLoadingState get _value =>
      super._value as RegistrationLoadingState;
}

/// @nodoc

class _$RegistrationLoadingState implements RegistrationLoadingState {
  const _$RegistrationLoadingState();

  @override
  String toString() {
    return 'RegistrationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegistrationLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)
        fieldValues,
    required TResult Function() loading,
    required TResult Function(String email, String password) success,
    required TResult Function(String page, String message) error,
    required TResult Function(String message) errorResponse,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
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
    required TResult Function(RegistrationInitState value) init,
    required TResult Function(RegistrationFieldValuesState value) fieldValues,
    required TResult Function(RegistrationLoadingState value) loading,
    required TResult Function(RegistrationSuccessState value) success,
    required TResult Function(RegistrationErrorState value) error,
    required TResult Function(RegistrationErrorResponseState value)
        errorResponse,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegistrationLoadingState implements RegistrationState {
  const factory RegistrationLoadingState() = _$RegistrationLoadingState;
}

/// @nodoc
abstract class $RegistrationSuccessStateCopyWith<$Res> {
  factory $RegistrationSuccessStateCopyWith(RegistrationSuccessState value,
          $Res Function(RegistrationSuccessState) then) =
      _$RegistrationSuccessStateCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$RegistrationSuccessStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements $RegistrationSuccessStateCopyWith<$Res> {
  _$RegistrationSuccessStateCopyWithImpl(RegistrationSuccessState _value,
      $Res Function(RegistrationSuccessState) _then)
      : super(_value, (v) => _then(v as RegistrationSuccessState));

  @override
  RegistrationSuccessState get _value =>
      super._value as RegistrationSuccessState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(RegistrationSuccessState(
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

class _$RegistrationSuccessState implements RegistrationSuccessState {
  const _$RegistrationSuccessState(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationState.success(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationSuccessState &&
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
  $RegistrationSuccessStateCopyWith<RegistrationSuccessState> get copyWith =>
      _$RegistrationSuccessStateCopyWithImpl<RegistrationSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)
        fieldValues,
    required TResult Function() loading,
    required TResult Function(String email, String password) success,
    required TResult Function(String page, String message) error,
    required TResult Function(String message) errorResponse,
  }) {
    return success(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
  }) {
    return success?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
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
    required TResult Function(RegistrationInitState value) init,
    required TResult Function(RegistrationFieldValuesState value) fieldValues,
    required TResult Function(RegistrationLoadingState value) loading,
    required TResult Function(RegistrationSuccessState value) success,
    required TResult Function(RegistrationErrorState value) error,
    required TResult Function(RegistrationErrorResponseState value)
        errorResponse,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegistrationSuccessState implements RegistrationState {
  const factory RegistrationSuccessState(
      {required String email,
      required String password}) = _$RegistrationSuccessState;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  $RegistrationSuccessStateCopyWith<RegistrationSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationErrorStateCopyWith<$Res> {
  factory $RegistrationErrorStateCopyWith(RegistrationErrorState value,
          $Res Function(RegistrationErrorState) then) =
      _$RegistrationErrorStateCopyWithImpl<$Res>;
  $Res call({String page, String message});
}

/// @nodoc
class _$RegistrationErrorStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements $RegistrationErrorStateCopyWith<$Res> {
  _$RegistrationErrorStateCopyWithImpl(RegistrationErrorState _value,
      $Res Function(RegistrationErrorState) _then)
      : super(_value, (v) => _then(v as RegistrationErrorState));

  @override
  RegistrationErrorState get _value => super._value as RegistrationErrorState;

  @override
  $Res call({
    Object? page = freezed,
    Object? message = freezed,
  }) {
    return _then(RegistrationErrorState(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationErrorState implements RegistrationErrorState {
  const _$RegistrationErrorState({required this.page, required this.message});

  @override
  final String page;
  @override
  final String message;

  @override
  String toString() {
    return 'RegistrationState.error(page: $page, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationErrorState &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $RegistrationErrorStateCopyWith<RegistrationErrorState> get copyWith =>
      _$RegistrationErrorStateCopyWithImpl<RegistrationErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)
        fieldValues,
    required TResult Function() loading,
    required TResult Function(String email, String password) success,
    required TResult Function(String page, String message) error,
    required TResult Function(String message) errorResponse,
  }) {
    return error(page, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
  }) {
    return error?.call(page, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(page, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitState value) init,
    required TResult Function(RegistrationFieldValuesState value) fieldValues,
    required TResult Function(RegistrationLoadingState value) loading,
    required TResult Function(RegistrationSuccessState value) success,
    required TResult Function(RegistrationErrorState value) error,
    required TResult Function(RegistrationErrorResponseState value)
        errorResponse,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegistrationErrorState implements RegistrationState {
  const factory RegistrationErrorState(
      {required String page,
      required String message}) = _$RegistrationErrorState;

  String get page;
  String get message;
  @JsonKey(ignore: true)
  $RegistrationErrorStateCopyWith<RegistrationErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationErrorResponseStateCopyWith<$Res> {
  factory $RegistrationErrorResponseStateCopyWith(
          RegistrationErrorResponseState value,
          $Res Function(RegistrationErrorResponseState) then) =
      _$RegistrationErrorResponseStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$RegistrationErrorResponseStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements $RegistrationErrorResponseStateCopyWith<$Res> {
  _$RegistrationErrorResponseStateCopyWithImpl(
      RegistrationErrorResponseState _value,
      $Res Function(RegistrationErrorResponseState) _then)
      : super(_value, (v) => _then(v as RegistrationErrorResponseState));

  @override
  RegistrationErrorResponseState get _value =>
      super._value as RegistrationErrorResponseState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(RegistrationErrorResponseState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationErrorResponseState
    implements RegistrationErrorResponseState {
  const _$RegistrationErrorResponseState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegistrationState.errorResponse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationErrorResponseState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $RegistrationErrorResponseStateCopyWith<RegistrationErrorResponseState>
      get copyWith => _$RegistrationErrorResponseStateCopyWithImpl<
          RegistrationErrorResponseState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)
        fieldValues,
    required TResult Function() loading,
    required TResult Function(String email, String password) success,
    required TResult Function(String page, String message) error,
    required TResult Function(String message) errorResponse,
  }) {
    return errorResponse(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
  }) {
    return errorResponse?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String email, String firstName, String lastName,
            String phoneNamber, String password, String confirmedPassword)?
        fieldValues,
    TResult Function()? loading,
    TResult Function(String email, String password)? success,
    TResult Function(String page, String message)? error,
    TResult Function(String message)? errorResponse,
    required TResult orElse(),
  }) {
    if (errorResponse != null) {
      return errorResponse(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationInitState value) init,
    required TResult Function(RegistrationFieldValuesState value) fieldValues,
    required TResult Function(RegistrationLoadingState value) loading,
    required TResult Function(RegistrationSuccessState value) success,
    required TResult Function(RegistrationErrorState value) error,
    required TResult Function(RegistrationErrorResponseState value)
        errorResponse,
  }) {
    return errorResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
  }) {
    return errorResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationInitState value)? init,
    TResult Function(RegistrationFieldValuesState value)? fieldValues,
    TResult Function(RegistrationLoadingState value)? loading,
    TResult Function(RegistrationSuccessState value)? success,
    TResult Function(RegistrationErrorState value)? error,
    TResult Function(RegistrationErrorResponseState value)? errorResponse,
    required TResult orElse(),
  }) {
    if (errorResponse != null) {
      return errorResponse(this);
    }
    return orElse();
  }
}

abstract class RegistrationErrorResponseState implements RegistrationState {
  const factory RegistrationErrorResponseState({required String message}) =
      _$RegistrationErrorResponseState;

  String get message;
  @JsonKey(ignore: true)
  $RegistrationErrorResponseStateCopyWith<RegistrationErrorResponseState>
      get copyWith => throw _privateConstructorUsedError;
}
