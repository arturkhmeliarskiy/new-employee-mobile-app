// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'basic_information_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BasicInformationEventTearOff {
  const _$BasicInformationEventTearOff();

  BasicInformationUpdateUserProfileDataEvent updateUserProfileData(
      String firstName,
      String lastName,
      String nickName,
      String birthDate,
      String nationality) {
    return BasicInformationUpdateUserProfileDataEvent(
      firstName,
      lastName,
      nickName,
      birthDate,
      nationality,
    );
  }

  BasicInformationUpdateUserContactDataEvent updateUserContactData(
      String phone, String email) {
    return BasicInformationUpdateUserContactDataEvent(
      phone,
      email,
    );
  }

  BasicInformationUpdateUserImageEvent updateUserImage() {
    return const BasicInformationUpdateUserImageEvent();
  }
}

/// @nodoc
const $BasicInformationEvent = _$BasicInformationEventTearOff();

/// @nodoc
mixin _$BasicInformationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName,
            String nickName, String birthDate, String nationality)
        updateUserProfileData,
    required TResult Function(String phone, String email) updateUserContactData,
    required TResult Function() updateUserImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String nickName,
            String birthDate, String nationality)?
        updateUserProfileData,
    TResult Function(String phone, String email)? updateUserContactData,
    TResult Function()? updateUserImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String nickName,
            String birthDate, String nationality)?
        updateUserProfileData,
    TResult Function(String phone, String email)? updateUserContactData,
    TResult Function()? updateUserImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasicInformationUpdateUserProfileDataEvent value)
        updateUserProfileData,
    required TResult Function(BasicInformationUpdateUserContactDataEvent value)
        updateUserContactData,
    required TResult Function(BasicInformationUpdateUserImageEvent value)
        updateUserImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BasicInformationUpdateUserProfileDataEvent value)?
        updateUserProfileData,
    TResult Function(BasicInformationUpdateUserContactDataEvent value)?
        updateUserContactData,
    TResult Function(BasicInformationUpdateUserImageEvent value)?
        updateUserImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasicInformationUpdateUserProfileDataEvent value)?
        updateUserProfileData,
    TResult Function(BasicInformationUpdateUserContactDataEvent value)?
        updateUserContactData,
    TResult Function(BasicInformationUpdateUserImageEvent value)?
        updateUserImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInformationEventCopyWith<$Res> {
  factory $BasicInformationEventCopyWith(BasicInformationEvent value,
          $Res Function(BasicInformationEvent) then) =
      _$BasicInformationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BasicInformationEventCopyWithImpl<$Res>
    implements $BasicInformationEventCopyWith<$Res> {
  _$BasicInformationEventCopyWithImpl(this._value, this._then);

  final BasicInformationEvent _value;
  // ignore: unused_field
  final $Res Function(BasicInformationEvent) _then;
}

/// @nodoc
abstract class $BasicInformationUpdateUserProfileDataEventCopyWith<$Res> {
  factory $BasicInformationUpdateUserProfileDataEventCopyWith(
          BasicInformationUpdateUserProfileDataEvent value,
          $Res Function(BasicInformationUpdateUserProfileDataEvent) then) =
      _$BasicInformationUpdateUserProfileDataEventCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      String nickName,
      String birthDate,
      String nationality});
}

/// @nodoc
class _$BasicInformationUpdateUserProfileDataEventCopyWithImpl<$Res>
    extends _$BasicInformationEventCopyWithImpl<$Res>
    implements $BasicInformationUpdateUserProfileDataEventCopyWith<$Res> {
  _$BasicInformationUpdateUserProfileDataEventCopyWithImpl(
      BasicInformationUpdateUserProfileDataEvent _value,
      $Res Function(BasicInformationUpdateUserProfileDataEvent) _then)
      : super(_value,
            (v) => _then(v as BasicInformationUpdateUserProfileDataEvent));

  @override
  BasicInformationUpdateUserProfileDataEvent get _value =>
      super._value as BasicInformationUpdateUserProfileDataEvent;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? nickName = freezed,
    Object? birthDate = freezed,
    Object? nationality = freezed,
  }) {
    return _then(BasicInformationUpdateUserProfileDataEvent(
      firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BasicInformationUpdateUserProfileDataEvent
    implements BasicInformationUpdateUserProfileDataEvent {
  const _$BasicInformationUpdateUserProfileDataEvent(this.firstName,
      this.lastName, this.nickName, this.birthDate, this.nationality);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String nickName;
  @override
  final String birthDate;
  @override
  final String nationality;

  @override
  String toString() {
    return 'BasicInformationEvent.updateUserProfileData(firstName: $firstName, lastName: $lastName, nickName: $nickName, birthDate: $birthDate, nationality: $nationality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicInformationUpdateUserProfileDataEvent &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.nickName, nickName) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate) &&
            const DeepCollectionEquality()
                .equals(other.nationality, nationality));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(nickName),
      const DeepCollectionEquality().hash(birthDate),
      const DeepCollectionEquality().hash(nationality));

  @JsonKey(ignore: true)
  @override
  $BasicInformationUpdateUserProfileDataEventCopyWith<
          BasicInformationUpdateUserProfileDataEvent>
      get copyWith => _$BasicInformationUpdateUserProfileDataEventCopyWithImpl<
          BasicInformationUpdateUserProfileDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName,
            String nickName, String birthDate, String nationality)
        updateUserProfileData,
    required TResult Function(String phone, String email) updateUserContactData,
    required TResult Function() updateUserImage,
  }) {
    return updateUserProfileData(
        firstName, lastName, nickName, birthDate, nationality);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String nickName,
            String birthDate, String nationality)?
        updateUserProfileData,
    TResult Function(String phone, String email)? updateUserContactData,
    TResult Function()? updateUserImage,
  }) {
    return updateUserProfileData?.call(
        firstName, lastName, nickName, birthDate, nationality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String nickName,
            String birthDate, String nationality)?
        updateUserProfileData,
    TResult Function(String phone, String email)? updateUserContactData,
    TResult Function()? updateUserImage,
    required TResult orElse(),
  }) {
    if (updateUserProfileData != null) {
      return updateUserProfileData(
          firstName, lastName, nickName, birthDate, nationality);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasicInformationUpdateUserProfileDataEvent value)
        updateUserProfileData,
    required TResult Function(BasicInformationUpdateUserContactDataEvent value)
        updateUserContactData,
    required TResult Function(BasicInformationUpdateUserImageEvent value)
        updateUserImage,
  }) {
    return updateUserProfileData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BasicInformationUpdateUserProfileDataEvent value)?
        updateUserProfileData,
    TResult Function(BasicInformationUpdateUserContactDataEvent value)?
        updateUserContactData,
    TResult Function(BasicInformationUpdateUserImageEvent value)?
        updateUserImage,
  }) {
    return updateUserProfileData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasicInformationUpdateUserProfileDataEvent value)?
        updateUserProfileData,
    TResult Function(BasicInformationUpdateUserContactDataEvent value)?
        updateUserContactData,
    TResult Function(BasicInformationUpdateUserImageEvent value)?
        updateUserImage,
    required TResult orElse(),
  }) {
    if (updateUserProfileData != null) {
      return updateUserProfileData(this);
    }
    return orElse();
  }
}

abstract class BasicInformationUpdateUserProfileDataEvent
    implements BasicInformationEvent {
  const factory BasicInformationUpdateUserProfileDataEvent(
      String firstName,
      String lastName,
      String nickName,
      String birthDate,
      String nationality) = _$BasicInformationUpdateUserProfileDataEvent;

  String get firstName;
  String get lastName;
  String get nickName;
  String get birthDate;
  String get nationality;
  @JsonKey(ignore: true)
  $BasicInformationUpdateUserProfileDataEventCopyWith<
          BasicInformationUpdateUserProfileDataEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInformationUpdateUserContactDataEventCopyWith<$Res> {
  factory $BasicInformationUpdateUserContactDataEventCopyWith(
          BasicInformationUpdateUserContactDataEvent value,
          $Res Function(BasicInformationUpdateUserContactDataEvent) then) =
      _$BasicInformationUpdateUserContactDataEventCopyWithImpl<$Res>;
  $Res call({String phone, String email});
}

/// @nodoc
class _$BasicInformationUpdateUserContactDataEventCopyWithImpl<$Res>
    extends _$BasicInformationEventCopyWithImpl<$Res>
    implements $BasicInformationUpdateUserContactDataEventCopyWith<$Res> {
  _$BasicInformationUpdateUserContactDataEventCopyWithImpl(
      BasicInformationUpdateUserContactDataEvent _value,
      $Res Function(BasicInformationUpdateUserContactDataEvent) _then)
      : super(_value,
            (v) => _then(v as BasicInformationUpdateUserContactDataEvent));

  @override
  BasicInformationUpdateUserContactDataEvent get _value =>
      super._value as BasicInformationUpdateUserContactDataEvent;

  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(BasicInformationUpdateUserContactDataEvent(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BasicInformationUpdateUserContactDataEvent
    implements BasicInformationUpdateUserContactDataEvent {
  const _$BasicInformationUpdateUserContactDataEvent(this.phone, this.email);

  @override
  final String phone;
  @override
  final String email;

  @override
  String toString() {
    return 'BasicInformationEvent.updateUserContactData(phone: $phone, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicInformationUpdateUserContactDataEvent &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $BasicInformationUpdateUserContactDataEventCopyWith<
          BasicInformationUpdateUserContactDataEvent>
      get copyWith => _$BasicInformationUpdateUserContactDataEventCopyWithImpl<
          BasicInformationUpdateUserContactDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName,
            String nickName, String birthDate, String nationality)
        updateUserProfileData,
    required TResult Function(String phone, String email) updateUserContactData,
    required TResult Function() updateUserImage,
  }) {
    return updateUserContactData(phone, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String nickName,
            String birthDate, String nationality)?
        updateUserProfileData,
    TResult Function(String phone, String email)? updateUserContactData,
    TResult Function()? updateUserImage,
  }) {
    return updateUserContactData?.call(phone, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String nickName,
            String birthDate, String nationality)?
        updateUserProfileData,
    TResult Function(String phone, String email)? updateUserContactData,
    TResult Function()? updateUserImage,
    required TResult orElse(),
  }) {
    if (updateUserContactData != null) {
      return updateUserContactData(phone, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasicInformationUpdateUserProfileDataEvent value)
        updateUserProfileData,
    required TResult Function(BasicInformationUpdateUserContactDataEvent value)
        updateUserContactData,
    required TResult Function(BasicInformationUpdateUserImageEvent value)
        updateUserImage,
  }) {
    return updateUserContactData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BasicInformationUpdateUserProfileDataEvent value)?
        updateUserProfileData,
    TResult Function(BasicInformationUpdateUserContactDataEvent value)?
        updateUserContactData,
    TResult Function(BasicInformationUpdateUserImageEvent value)?
        updateUserImage,
  }) {
    return updateUserContactData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasicInformationUpdateUserProfileDataEvent value)?
        updateUserProfileData,
    TResult Function(BasicInformationUpdateUserContactDataEvent value)?
        updateUserContactData,
    TResult Function(BasicInformationUpdateUserImageEvent value)?
        updateUserImage,
    required TResult orElse(),
  }) {
    if (updateUserContactData != null) {
      return updateUserContactData(this);
    }
    return orElse();
  }
}

abstract class BasicInformationUpdateUserContactDataEvent
    implements BasicInformationEvent {
  const factory BasicInformationUpdateUserContactDataEvent(
          String phone, String email) =
      _$BasicInformationUpdateUserContactDataEvent;

  String get phone;
  String get email;
  @JsonKey(ignore: true)
  $BasicInformationUpdateUserContactDataEventCopyWith<
          BasicInformationUpdateUserContactDataEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInformationUpdateUserImageEventCopyWith<$Res> {
  factory $BasicInformationUpdateUserImageEventCopyWith(
          BasicInformationUpdateUserImageEvent value,
          $Res Function(BasicInformationUpdateUserImageEvent) then) =
      _$BasicInformationUpdateUserImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BasicInformationUpdateUserImageEventCopyWithImpl<$Res>
    extends _$BasicInformationEventCopyWithImpl<$Res>
    implements $BasicInformationUpdateUserImageEventCopyWith<$Res> {
  _$BasicInformationUpdateUserImageEventCopyWithImpl(
      BasicInformationUpdateUserImageEvent _value,
      $Res Function(BasicInformationUpdateUserImageEvent) _then)
      : super(_value, (v) => _then(v as BasicInformationUpdateUserImageEvent));

  @override
  BasicInformationUpdateUserImageEvent get _value =>
      super._value as BasicInformationUpdateUserImageEvent;
}

/// @nodoc

class _$BasicInformationUpdateUserImageEvent
    implements BasicInformationUpdateUserImageEvent {
  const _$BasicInformationUpdateUserImageEvent();

  @override
  String toString() {
    return 'BasicInformationEvent.updateUserImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicInformationUpdateUserImageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName,
            String nickName, String birthDate, String nationality)
        updateUserProfileData,
    required TResult Function(String phone, String email) updateUserContactData,
    required TResult Function() updateUserImage,
  }) {
    return updateUserImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String nickName,
            String birthDate, String nationality)?
        updateUserProfileData,
    TResult Function(String phone, String email)? updateUserContactData,
    TResult Function()? updateUserImage,
  }) {
    return updateUserImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName, String nickName,
            String birthDate, String nationality)?
        updateUserProfileData,
    TResult Function(String phone, String email)? updateUserContactData,
    TResult Function()? updateUserImage,
    required TResult orElse(),
  }) {
    if (updateUserImage != null) {
      return updateUserImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasicInformationUpdateUserProfileDataEvent value)
        updateUserProfileData,
    required TResult Function(BasicInformationUpdateUserContactDataEvent value)
        updateUserContactData,
    required TResult Function(BasicInformationUpdateUserImageEvent value)
        updateUserImage,
  }) {
    return updateUserImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BasicInformationUpdateUserProfileDataEvent value)?
        updateUserProfileData,
    TResult Function(BasicInformationUpdateUserContactDataEvent value)?
        updateUserContactData,
    TResult Function(BasicInformationUpdateUserImageEvent value)?
        updateUserImage,
  }) {
    return updateUserImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasicInformationUpdateUserProfileDataEvent value)?
        updateUserProfileData,
    TResult Function(BasicInformationUpdateUserContactDataEvent value)?
        updateUserContactData,
    TResult Function(BasicInformationUpdateUserImageEvent value)?
        updateUserImage,
    required TResult orElse(),
  }) {
    if (updateUserImage != null) {
      return updateUserImage(this);
    }
    return orElse();
  }
}

abstract class BasicInformationUpdateUserImageEvent
    implements BasicInformationEvent {
  const factory BasicInformationUpdateUserImageEvent() =
      _$BasicInformationUpdateUserImageEvent;
}

/// @nodoc
class _$BasicInformationStateTearOff {
  const _$BasicInformationStateTearOff();

  LoadingBasicInformationState loading() {
    return const LoadingBasicInformationState();
  }

  BasicInformationSuccessState saveInformationSuccess() {
    return const BasicInformationSuccessState();
  }

  UserImageBasicInformationSuccessState saveUserImageSuccess() {
    return const UserImageBasicInformationSuccessState();
  }

  BasicInformationFailureState saveInformationFailure(
      {required MessagesInfoDataModel model}) {
    return BasicInformationFailureState(
      model: model,
    );
  }

  UserImageBasicInformationFailureState saveUserImageFailure(
      {required UpdateProfilePhotoDataModel model}) {
    return UserImageBasicInformationFailureState(
      model: model,
    );
  }
}

/// @nodoc
const $BasicInformationState = _$BasicInformationStateTearOff();

/// @nodoc
mixin _$BasicInformationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() saveInformationSuccess,
    required TResult Function() saveUserImageSuccess,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationFailure,
    required TResult Function(UpdateProfilePhotoDataModel model)
        saveUserImageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saveInformationSuccess,
    TResult Function()? saveUserImageSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationFailure,
    TResult Function(UpdateProfilePhotoDataModel model)? saveUserImageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saveInformationSuccess,
    TResult Function()? saveUserImageSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationFailure,
    TResult Function(UpdateProfilePhotoDataModel model)? saveUserImageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingBasicInformationState value) loading,
    required TResult Function(BasicInformationSuccessState value)
        saveInformationSuccess,
    required TResult Function(UserImageBasicInformationSuccessState value)
        saveUserImageSuccess,
    required TResult Function(BasicInformationFailureState value)
        saveInformationFailure,
    required TResult Function(UserImageBasicInformationFailureState value)
        saveUserImageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingBasicInformationState value)? loading,
    TResult Function(BasicInformationSuccessState value)?
        saveInformationSuccess,
    TResult Function(UserImageBasicInformationSuccessState value)?
        saveUserImageSuccess,
    TResult Function(BasicInformationFailureState value)?
        saveInformationFailure,
    TResult Function(UserImageBasicInformationFailureState value)?
        saveUserImageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBasicInformationState value)? loading,
    TResult Function(BasicInformationSuccessState value)?
        saveInformationSuccess,
    TResult Function(UserImageBasicInformationSuccessState value)?
        saveUserImageSuccess,
    TResult Function(BasicInformationFailureState value)?
        saveInformationFailure,
    TResult Function(UserImageBasicInformationFailureState value)?
        saveUserImageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInformationStateCopyWith<$Res> {
  factory $BasicInformationStateCopyWith(BasicInformationState value,
          $Res Function(BasicInformationState) then) =
      _$BasicInformationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BasicInformationStateCopyWithImpl<$Res>
    implements $BasicInformationStateCopyWith<$Res> {
  _$BasicInformationStateCopyWithImpl(this._value, this._then);

  final BasicInformationState _value;
  // ignore: unused_field
  final $Res Function(BasicInformationState) _then;
}

/// @nodoc
abstract class $LoadingBasicInformationStateCopyWith<$Res> {
  factory $LoadingBasicInformationStateCopyWith(
          LoadingBasicInformationState value,
          $Res Function(LoadingBasicInformationState) then) =
      _$LoadingBasicInformationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingBasicInformationStateCopyWithImpl<$Res>
    extends _$BasicInformationStateCopyWithImpl<$Res>
    implements $LoadingBasicInformationStateCopyWith<$Res> {
  _$LoadingBasicInformationStateCopyWithImpl(
      LoadingBasicInformationState _value,
      $Res Function(LoadingBasicInformationState) _then)
      : super(_value, (v) => _then(v as LoadingBasicInformationState));

  @override
  LoadingBasicInformationState get _value =>
      super._value as LoadingBasicInformationState;
}

/// @nodoc

class _$LoadingBasicInformationState implements LoadingBasicInformationState {
  const _$LoadingBasicInformationState();

  @override
  String toString() {
    return 'BasicInformationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingBasicInformationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() saveInformationSuccess,
    required TResult Function() saveUserImageSuccess,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationFailure,
    required TResult Function(UpdateProfilePhotoDataModel model)
        saveUserImageFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saveInformationSuccess,
    TResult Function()? saveUserImageSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationFailure,
    TResult Function(UpdateProfilePhotoDataModel model)? saveUserImageFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saveInformationSuccess,
    TResult Function()? saveUserImageSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationFailure,
    TResult Function(UpdateProfilePhotoDataModel model)? saveUserImageFailure,
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
    required TResult Function(LoadingBasicInformationState value) loading,
    required TResult Function(BasicInformationSuccessState value)
        saveInformationSuccess,
    required TResult Function(UserImageBasicInformationSuccessState value)
        saveUserImageSuccess,
    required TResult Function(BasicInformationFailureState value)
        saveInformationFailure,
    required TResult Function(UserImageBasicInformationFailureState value)
        saveUserImageFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingBasicInformationState value)? loading,
    TResult Function(BasicInformationSuccessState value)?
        saveInformationSuccess,
    TResult Function(UserImageBasicInformationSuccessState value)?
        saveUserImageSuccess,
    TResult Function(BasicInformationFailureState value)?
        saveInformationFailure,
    TResult Function(UserImageBasicInformationFailureState value)?
        saveUserImageFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBasicInformationState value)? loading,
    TResult Function(BasicInformationSuccessState value)?
        saveInformationSuccess,
    TResult Function(UserImageBasicInformationSuccessState value)?
        saveUserImageSuccess,
    TResult Function(BasicInformationFailureState value)?
        saveInformationFailure,
    TResult Function(UserImageBasicInformationFailureState value)?
        saveUserImageFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingBasicInformationState implements BasicInformationState {
  const factory LoadingBasicInformationState() = _$LoadingBasicInformationState;
}

/// @nodoc
abstract class $BasicInformationSuccessStateCopyWith<$Res> {
  factory $BasicInformationSuccessStateCopyWith(
          BasicInformationSuccessState value,
          $Res Function(BasicInformationSuccessState) then) =
      _$BasicInformationSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BasicInformationSuccessStateCopyWithImpl<$Res>
    extends _$BasicInformationStateCopyWithImpl<$Res>
    implements $BasicInformationSuccessStateCopyWith<$Res> {
  _$BasicInformationSuccessStateCopyWithImpl(
      BasicInformationSuccessState _value,
      $Res Function(BasicInformationSuccessState) _then)
      : super(_value, (v) => _then(v as BasicInformationSuccessState));

  @override
  BasicInformationSuccessState get _value =>
      super._value as BasicInformationSuccessState;
}

/// @nodoc

class _$BasicInformationSuccessState implements BasicInformationSuccessState {
  const _$BasicInformationSuccessState();

  @override
  String toString() {
    return 'BasicInformationState.saveInformationSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicInformationSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() saveInformationSuccess,
    required TResult Function() saveUserImageSuccess,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationFailure,
    required TResult Function(UpdateProfilePhotoDataModel model)
        saveUserImageFailure,
  }) {
    return saveInformationSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saveInformationSuccess,
    TResult Function()? saveUserImageSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationFailure,
    TResult Function(UpdateProfilePhotoDataModel model)? saveUserImageFailure,
  }) {
    return saveInformationSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saveInformationSuccess,
    TResult Function()? saveUserImageSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationFailure,
    TResult Function(UpdateProfilePhotoDataModel model)? saveUserImageFailure,
    required TResult orElse(),
  }) {
    if (saveInformationSuccess != null) {
      return saveInformationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingBasicInformationState value) loading,
    required TResult Function(BasicInformationSuccessState value)
        saveInformationSuccess,
    required TResult Function(UserImageBasicInformationSuccessState value)
        saveUserImageSuccess,
    required TResult Function(BasicInformationFailureState value)
        saveInformationFailure,
    required TResult Function(UserImageBasicInformationFailureState value)
        saveUserImageFailure,
  }) {
    return saveInformationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingBasicInformationState value)? loading,
    TResult Function(BasicInformationSuccessState value)?
        saveInformationSuccess,
    TResult Function(UserImageBasicInformationSuccessState value)?
        saveUserImageSuccess,
    TResult Function(BasicInformationFailureState value)?
        saveInformationFailure,
    TResult Function(UserImageBasicInformationFailureState value)?
        saveUserImageFailure,
  }) {
    return saveInformationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBasicInformationState value)? loading,
    TResult Function(BasicInformationSuccessState value)?
        saveInformationSuccess,
    TResult Function(UserImageBasicInformationSuccessState value)?
        saveUserImageSuccess,
    TResult Function(BasicInformationFailureState value)?
        saveInformationFailure,
    TResult Function(UserImageBasicInformationFailureState value)?
        saveUserImageFailure,
    required TResult orElse(),
  }) {
    if (saveInformationSuccess != null) {
      return saveInformationSuccess(this);
    }
    return orElse();
  }
}

abstract class BasicInformationSuccessState implements BasicInformationState {
  const factory BasicInformationSuccessState() = _$BasicInformationSuccessState;
}

/// @nodoc
abstract class $UserImageBasicInformationSuccessStateCopyWith<$Res> {
  factory $UserImageBasicInformationSuccessStateCopyWith(
          UserImageBasicInformationSuccessState value,
          $Res Function(UserImageBasicInformationSuccessState) then) =
      _$UserImageBasicInformationSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserImageBasicInformationSuccessStateCopyWithImpl<$Res>
    extends _$BasicInformationStateCopyWithImpl<$Res>
    implements $UserImageBasicInformationSuccessStateCopyWith<$Res> {
  _$UserImageBasicInformationSuccessStateCopyWithImpl(
      UserImageBasicInformationSuccessState _value,
      $Res Function(UserImageBasicInformationSuccessState) _then)
      : super(_value, (v) => _then(v as UserImageBasicInformationSuccessState));

  @override
  UserImageBasicInformationSuccessState get _value =>
      super._value as UserImageBasicInformationSuccessState;
}

/// @nodoc

class _$UserImageBasicInformationSuccessState
    implements UserImageBasicInformationSuccessState {
  const _$UserImageBasicInformationSuccessState();

  @override
  String toString() {
    return 'BasicInformationState.saveUserImageSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserImageBasicInformationSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() saveInformationSuccess,
    required TResult Function() saveUserImageSuccess,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationFailure,
    required TResult Function(UpdateProfilePhotoDataModel model)
        saveUserImageFailure,
  }) {
    return saveUserImageSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saveInformationSuccess,
    TResult Function()? saveUserImageSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationFailure,
    TResult Function(UpdateProfilePhotoDataModel model)? saveUserImageFailure,
  }) {
    return saveUserImageSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saveInformationSuccess,
    TResult Function()? saveUserImageSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationFailure,
    TResult Function(UpdateProfilePhotoDataModel model)? saveUserImageFailure,
    required TResult orElse(),
  }) {
    if (saveUserImageSuccess != null) {
      return saveUserImageSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingBasicInformationState value) loading,
    required TResult Function(BasicInformationSuccessState value)
        saveInformationSuccess,
    required TResult Function(UserImageBasicInformationSuccessState value)
        saveUserImageSuccess,
    required TResult Function(BasicInformationFailureState value)
        saveInformationFailure,
    required TResult Function(UserImageBasicInformationFailureState value)
        saveUserImageFailure,
  }) {
    return saveUserImageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingBasicInformationState value)? loading,
    TResult Function(BasicInformationSuccessState value)?
        saveInformationSuccess,
    TResult Function(UserImageBasicInformationSuccessState value)?
        saveUserImageSuccess,
    TResult Function(BasicInformationFailureState value)?
        saveInformationFailure,
    TResult Function(UserImageBasicInformationFailureState value)?
        saveUserImageFailure,
  }) {
    return saveUserImageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBasicInformationState value)? loading,
    TResult Function(BasicInformationSuccessState value)?
        saveInformationSuccess,
    TResult Function(UserImageBasicInformationSuccessState value)?
        saveUserImageSuccess,
    TResult Function(BasicInformationFailureState value)?
        saveInformationFailure,
    TResult Function(UserImageBasicInformationFailureState value)?
        saveUserImageFailure,
    required TResult orElse(),
  }) {
    if (saveUserImageSuccess != null) {
      return saveUserImageSuccess(this);
    }
    return orElse();
  }
}

abstract class UserImageBasicInformationSuccessState
    implements BasicInformationState {
  const factory UserImageBasicInformationSuccessState() =
      _$UserImageBasicInformationSuccessState;
}

/// @nodoc
abstract class $BasicInformationFailureStateCopyWith<$Res> {
  factory $BasicInformationFailureStateCopyWith(
          BasicInformationFailureState value,
          $Res Function(BasicInformationFailureState) then) =
      _$BasicInformationFailureStateCopyWithImpl<$Res>;
  $Res call({MessagesInfoDataModel model});

  $MessagesInfoDataModelCopyWith<$Res> get model;
}

/// @nodoc
class _$BasicInformationFailureStateCopyWithImpl<$Res>
    extends _$BasicInformationStateCopyWithImpl<$Res>
    implements $BasicInformationFailureStateCopyWith<$Res> {
  _$BasicInformationFailureStateCopyWithImpl(
      BasicInformationFailureState _value,
      $Res Function(BasicInformationFailureState) _then)
      : super(_value, (v) => _then(v as BasicInformationFailureState));

  @override
  BasicInformationFailureState get _value =>
      super._value as BasicInformationFailureState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(BasicInformationFailureState(
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

class _$BasicInformationFailureState implements BasicInformationFailureState {
  const _$BasicInformationFailureState({required this.model});

  @override
  final MessagesInfoDataModel model;

  @override
  String toString() {
    return 'BasicInformationState.saveInformationFailure(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicInformationFailureState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  $BasicInformationFailureStateCopyWith<BasicInformationFailureState>
      get copyWith => _$BasicInformationFailureStateCopyWithImpl<
          BasicInformationFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() saveInformationSuccess,
    required TResult Function() saveUserImageSuccess,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationFailure,
    required TResult Function(UpdateProfilePhotoDataModel model)
        saveUserImageFailure,
  }) {
    return saveInformationFailure(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saveInformationSuccess,
    TResult Function()? saveUserImageSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationFailure,
    TResult Function(UpdateProfilePhotoDataModel model)? saveUserImageFailure,
  }) {
    return saveInformationFailure?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saveInformationSuccess,
    TResult Function()? saveUserImageSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationFailure,
    TResult Function(UpdateProfilePhotoDataModel model)? saveUserImageFailure,
    required TResult orElse(),
  }) {
    if (saveInformationFailure != null) {
      return saveInformationFailure(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingBasicInformationState value) loading,
    required TResult Function(BasicInformationSuccessState value)
        saveInformationSuccess,
    required TResult Function(UserImageBasicInformationSuccessState value)
        saveUserImageSuccess,
    required TResult Function(BasicInformationFailureState value)
        saveInformationFailure,
    required TResult Function(UserImageBasicInformationFailureState value)
        saveUserImageFailure,
  }) {
    return saveInformationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingBasicInformationState value)? loading,
    TResult Function(BasicInformationSuccessState value)?
        saveInformationSuccess,
    TResult Function(UserImageBasicInformationSuccessState value)?
        saveUserImageSuccess,
    TResult Function(BasicInformationFailureState value)?
        saveInformationFailure,
    TResult Function(UserImageBasicInformationFailureState value)?
        saveUserImageFailure,
  }) {
    return saveInformationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBasicInformationState value)? loading,
    TResult Function(BasicInformationSuccessState value)?
        saveInformationSuccess,
    TResult Function(UserImageBasicInformationSuccessState value)?
        saveUserImageSuccess,
    TResult Function(BasicInformationFailureState value)?
        saveInformationFailure,
    TResult Function(UserImageBasicInformationFailureState value)?
        saveUserImageFailure,
    required TResult orElse(),
  }) {
    if (saveInformationFailure != null) {
      return saveInformationFailure(this);
    }
    return orElse();
  }
}

abstract class BasicInformationFailureState implements BasicInformationState {
  const factory BasicInformationFailureState(
      {required MessagesInfoDataModel model}) = _$BasicInformationFailureState;

  MessagesInfoDataModel get model;
  @JsonKey(ignore: true)
  $BasicInformationFailureStateCopyWith<BasicInformationFailureState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserImageBasicInformationFailureStateCopyWith<$Res> {
  factory $UserImageBasicInformationFailureStateCopyWith(
          UserImageBasicInformationFailureState value,
          $Res Function(UserImageBasicInformationFailureState) then) =
      _$UserImageBasicInformationFailureStateCopyWithImpl<$Res>;
  $Res call({UpdateProfilePhotoDataModel model});
}

/// @nodoc
class _$UserImageBasicInformationFailureStateCopyWithImpl<$Res>
    extends _$BasicInformationStateCopyWithImpl<$Res>
    implements $UserImageBasicInformationFailureStateCopyWith<$Res> {
  _$UserImageBasicInformationFailureStateCopyWithImpl(
      UserImageBasicInformationFailureState _value,
      $Res Function(UserImageBasicInformationFailureState) _then)
      : super(_value, (v) => _then(v as UserImageBasicInformationFailureState));

  @override
  UserImageBasicInformationFailureState get _value =>
      super._value as UserImageBasicInformationFailureState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(UserImageBasicInformationFailureState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UpdateProfilePhotoDataModel,
    ));
  }
}

/// @nodoc

class _$UserImageBasicInformationFailureState
    implements UserImageBasicInformationFailureState {
  const _$UserImageBasicInformationFailureState({required this.model});

  @override
  final UpdateProfilePhotoDataModel model;

  @override
  String toString() {
    return 'BasicInformationState.saveUserImageFailure(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserImageBasicInformationFailureState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  $UserImageBasicInformationFailureStateCopyWith<
          UserImageBasicInformationFailureState>
      get copyWith => _$UserImageBasicInformationFailureStateCopyWithImpl<
          UserImageBasicInformationFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() saveInformationSuccess,
    required TResult Function() saveUserImageSuccess,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationFailure,
    required TResult Function(UpdateProfilePhotoDataModel model)
        saveUserImageFailure,
  }) {
    return saveUserImageFailure(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saveInformationSuccess,
    TResult Function()? saveUserImageSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationFailure,
    TResult Function(UpdateProfilePhotoDataModel model)? saveUserImageFailure,
  }) {
    return saveUserImageFailure?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saveInformationSuccess,
    TResult Function()? saveUserImageSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationFailure,
    TResult Function(UpdateProfilePhotoDataModel model)? saveUserImageFailure,
    required TResult orElse(),
  }) {
    if (saveUserImageFailure != null) {
      return saveUserImageFailure(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingBasicInformationState value) loading,
    required TResult Function(BasicInformationSuccessState value)
        saveInformationSuccess,
    required TResult Function(UserImageBasicInformationSuccessState value)
        saveUserImageSuccess,
    required TResult Function(BasicInformationFailureState value)
        saveInformationFailure,
    required TResult Function(UserImageBasicInformationFailureState value)
        saveUserImageFailure,
  }) {
    return saveUserImageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingBasicInformationState value)? loading,
    TResult Function(BasicInformationSuccessState value)?
        saveInformationSuccess,
    TResult Function(UserImageBasicInformationSuccessState value)?
        saveUserImageSuccess,
    TResult Function(BasicInformationFailureState value)?
        saveInformationFailure,
    TResult Function(UserImageBasicInformationFailureState value)?
        saveUserImageFailure,
  }) {
    return saveUserImageFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBasicInformationState value)? loading,
    TResult Function(BasicInformationSuccessState value)?
        saveInformationSuccess,
    TResult Function(UserImageBasicInformationSuccessState value)?
        saveUserImageSuccess,
    TResult Function(BasicInformationFailureState value)?
        saveInformationFailure,
    TResult Function(UserImageBasicInformationFailureState value)?
        saveUserImageFailure,
    required TResult orElse(),
  }) {
    if (saveUserImageFailure != null) {
      return saveUserImageFailure(this);
    }
    return orElse();
  }
}

abstract class UserImageBasicInformationFailureState
    implements BasicInformationState {
  const factory UserImageBasicInformationFailureState(
          {required UpdateProfilePhotoDataModel model}) =
      _$UserImageBasicInformationFailureState;

  UpdateProfilePhotoDataModel get model;
  @JsonKey(ignore: true)
  $UserImageBasicInformationFailureStateCopyWith<
          UserImageBasicInformationFailureState>
      get copyWith => throw _privateConstructorUsedError;
}
