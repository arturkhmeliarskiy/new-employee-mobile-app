// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _InitEvent init() {
    return const _InitEvent();
  }

  UpdateBasicInformationEvent updateBasicInformation() {
    return const UpdateBasicInformationEvent();
  }

  UpdateUserImageBasicInformationEvent updateUserImage() {
    return const UpdateUserImageBasicInformationEvent();
  }

  DeleteMessageIdEvent deleteMessageId(String typeMessage, String id) {
    return DeleteMessageIdEvent(
      typeMessage,
      id,
    );
  }

  ProfileNewNotificationEvent newNotification() {
    return const ProfileNewNotificationEvent();
  }

  _LogoutEvent logout() {
    return const _LogoutEvent();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateBasicInformation,
    required TResult Function() updateUserImage,
    required TResult Function(String typeMessage, String id) deleteMessageId,
    required TResult Function() newNotification,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(UpdateBasicInformationEvent value)
        updateBasicInformation,
    required TResult Function(UpdateUserImageBasicInformationEvent value)
        updateUserImage,
    required TResult Function(DeleteMessageIdEvent value) deleteMessageId,
    required TResult Function(ProfileNewNotificationEvent value)
        newNotification,
    required TResult Function(_LogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$InitEventCopyWith<$Res> {
  factory _$InitEventCopyWith(
          _InitEvent value, $Res Function(_InitEvent) then) =
      __$InitEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitEventCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$InitEventCopyWith<$Res> {
  __$InitEventCopyWithImpl(_InitEvent _value, $Res Function(_InitEvent) _then)
      : super(_value, (v) => _then(v as _InitEvent));

  @override
  _InitEvent get _value => super._value as _InitEvent;
}

/// @nodoc

class _$_InitEvent implements _InitEvent {
  const _$_InitEvent();

  @override
  String toString() {
    return 'ProfileEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateBasicInformation,
    required TResult Function() updateUserImage,
    required TResult Function(String typeMessage, String id) deleteMessageId,
    required TResult Function() newNotification,
    required TResult Function() logout,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
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
    required TResult Function(_InitEvent value) init,
    required TResult Function(UpdateBasicInformationEvent value)
        updateBasicInformation,
    required TResult Function(UpdateUserImageBasicInformationEvent value)
        updateUserImage,
    required TResult Function(DeleteMessageIdEvent value) deleteMessageId,
    required TResult Function(ProfileNewNotificationEvent value)
        newNotification,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitEvent implements ProfileEvent {
  const factory _InitEvent() = _$_InitEvent;
}

/// @nodoc
abstract class $UpdateBasicInformationEventCopyWith<$Res> {
  factory $UpdateBasicInformationEventCopyWith(
          UpdateBasicInformationEvent value,
          $Res Function(UpdateBasicInformationEvent) then) =
      _$UpdateBasicInformationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateBasicInformationEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $UpdateBasicInformationEventCopyWith<$Res> {
  _$UpdateBasicInformationEventCopyWithImpl(UpdateBasicInformationEvent _value,
      $Res Function(UpdateBasicInformationEvent) _then)
      : super(_value, (v) => _then(v as UpdateBasicInformationEvent));

  @override
  UpdateBasicInformationEvent get _value =>
      super._value as UpdateBasicInformationEvent;
}

/// @nodoc

class _$UpdateBasicInformationEvent implements UpdateBasicInformationEvent {
  const _$UpdateBasicInformationEvent();

  @override
  String toString() {
    return 'ProfileEvent.updateBasicInformation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateBasicInformationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateBasicInformation,
    required TResult Function() updateUserImage,
    required TResult Function(String typeMessage, String id) deleteMessageId,
    required TResult Function() newNotification,
    required TResult Function() logout,
  }) {
    return updateBasicInformation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
  }) {
    return updateBasicInformation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (updateBasicInformation != null) {
      return updateBasicInformation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(UpdateBasicInformationEvent value)
        updateBasicInformation,
    required TResult Function(UpdateUserImageBasicInformationEvent value)
        updateUserImage,
    required TResult Function(DeleteMessageIdEvent value) deleteMessageId,
    required TResult Function(ProfileNewNotificationEvent value)
        newNotification,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return updateBasicInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
  }) {
    return updateBasicInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (updateBasicInformation != null) {
      return updateBasicInformation(this);
    }
    return orElse();
  }
}

abstract class UpdateBasicInformationEvent implements ProfileEvent {
  const factory UpdateBasicInformationEvent() = _$UpdateBasicInformationEvent;
}

/// @nodoc
abstract class $UpdateUserImageBasicInformationEventCopyWith<$Res> {
  factory $UpdateUserImageBasicInformationEventCopyWith(
          UpdateUserImageBasicInformationEvent value,
          $Res Function(UpdateUserImageBasicInformationEvent) then) =
      _$UpdateUserImageBasicInformationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateUserImageBasicInformationEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $UpdateUserImageBasicInformationEventCopyWith<$Res> {
  _$UpdateUserImageBasicInformationEventCopyWithImpl(
      UpdateUserImageBasicInformationEvent _value,
      $Res Function(UpdateUserImageBasicInformationEvent) _then)
      : super(_value, (v) => _then(v as UpdateUserImageBasicInformationEvent));

  @override
  UpdateUserImageBasicInformationEvent get _value =>
      super._value as UpdateUserImageBasicInformationEvent;
}

/// @nodoc

class _$UpdateUserImageBasicInformationEvent
    implements UpdateUserImageBasicInformationEvent {
  const _$UpdateUserImageBasicInformationEvent();

  @override
  String toString() {
    return 'ProfileEvent.updateUserImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateUserImageBasicInformationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateBasicInformation,
    required TResult Function() updateUserImage,
    required TResult Function(String typeMessage, String id) deleteMessageId,
    required TResult Function() newNotification,
    required TResult Function() logout,
  }) {
    return updateUserImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
  }) {
    return updateUserImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
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
    required TResult Function(_InitEvent value) init,
    required TResult Function(UpdateBasicInformationEvent value)
        updateBasicInformation,
    required TResult Function(UpdateUserImageBasicInformationEvent value)
        updateUserImage,
    required TResult Function(DeleteMessageIdEvent value) deleteMessageId,
    required TResult Function(ProfileNewNotificationEvent value)
        newNotification,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return updateUserImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
  }) {
    return updateUserImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (updateUserImage != null) {
      return updateUserImage(this);
    }
    return orElse();
  }
}

abstract class UpdateUserImageBasicInformationEvent implements ProfileEvent {
  const factory UpdateUserImageBasicInformationEvent() =
      _$UpdateUserImageBasicInformationEvent;
}

/// @nodoc
abstract class $DeleteMessageIdEventCopyWith<$Res> {
  factory $DeleteMessageIdEventCopyWith(DeleteMessageIdEvent value,
          $Res Function(DeleteMessageIdEvent) then) =
      _$DeleteMessageIdEventCopyWithImpl<$Res>;
  $Res call({String typeMessage, String id});
}

/// @nodoc
class _$DeleteMessageIdEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $DeleteMessageIdEventCopyWith<$Res> {
  _$DeleteMessageIdEventCopyWithImpl(
      DeleteMessageIdEvent _value, $Res Function(DeleteMessageIdEvent) _then)
      : super(_value, (v) => _then(v as DeleteMessageIdEvent));

  @override
  DeleteMessageIdEvent get _value => super._value as DeleteMessageIdEvent;

  @override
  $Res call({
    Object? typeMessage = freezed,
    Object? id = freezed,
  }) {
    return _then(DeleteMessageIdEvent(
      typeMessage == freezed
          ? _value.typeMessage
          : typeMessage // ignore: cast_nullable_to_non_nullable
              as String,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteMessageIdEvent implements DeleteMessageIdEvent {
  const _$DeleteMessageIdEvent(this.typeMessage, this.id);

  @override
  final String typeMessage;
  @override
  final String id;

  @override
  String toString() {
    return 'ProfileEvent.deleteMessageId(typeMessage: $typeMessage, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteMessageIdEvent &&
            const DeepCollectionEquality()
                .equals(other.typeMessage, typeMessage) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(typeMessage),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $DeleteMessageIdEventCopyWith<DeleteMessageIdEvent> get copyWith =>
      _$DeleteMessageIdEventCopyWithImpl<DeleteMessageIdEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateBasicInformation,
    required TResult Function() updateUserImage,
    required TResult Function(String typeMessage, String id) deleteMessageId,
    required TResult Function() newNotification,
    required TResult Function() logout,
  }) {
    return deleteMessageId(typeMessage, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
  }) {
    return deleteMessageId?.call(typeMessage, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (deleteMessageId != null) {
      return deleteMessageId(typeMessage, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(UpdateBasicInformationEvent value)
        updateBasicInformation,
    required TResult Function(UpdateUserImageBasicInformationEvent value)
        updateUserImage,
    required TResult Function(DeleteMessageIdEvent value) deleteMessageId,
    required TResult Function(ProfileNewNotificationEvent value)
        newNotification,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return deleteMessageId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
  }) {
    return deleteMessageId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (deleteMessageId != null) {
      return deleteMessageId(this);
    }
    return orElse();
  }
}

abstract class DeleteMessageIdEvent implements ProfileEvent {
  const factory DeleteMessageIdEvent(String typeMessage, String id) =
      _$DeleteMessageIdEvent;

  String get typeMessage;
  String get id;
  @JsonKey(ignore: true)
  $DeleteMessageIdEventCopyWith<DeleteMessageIdEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileNewNotificationEventCopyWith<$Res> {
  factory $ProfileNewNotificationEventCopyWith(
          ProfileNewNotificationEvent value,
          $Res Function(ProfileNewNotificationEvent) then) =
      _$ProfileNewNotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileNewNotificationEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $ProfileNewNotificationEventCopyWith<$Res> {
  _$ProfileNewNotificationEventCopyWithImpl(ProfileNewNotificationEvent _value,
      $Res Function(ProfileNewNotificationEvent) _then)
      : super(_value, (v) => _then(v as ProfileNewNotificationEvent));

  @override
  ProfileNewNotificationEvent get _value =>
      super._value as ProfileNewNotificationEvent;
}

/// @nodoc

class _$ProfileNewNotificationEvent implements ProfileNewNotificationEvent {
  const _$ProfileNewNotificationEvent();

  @override
  String toString() {
    return 'ProfileEvent.newNotification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileNewNotificationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateBasicInformation,
    required TResult Function() updateUserImage,
    required TResult Function(String typeMessage, String id) deleteMessageId,
    required TResult Function() newNotification,
    required TResult Function() logout,
  }) {
    return newNotification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
  }) {
    return newNotification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (newNotification != null) {
      return newNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(UpdateBasicInformationEvent value)
        updateBasicInformation,
    required TResult Function(UpdateUserImageBasicInformationEvent value)
        updateUserImage,
    required TResult Function(DeleteMessageIdEvent value) deleteMessageId,
    required TResult Function(ProfileNewNotificationEvent value)
        newNotification,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return newNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
  }) {
    return newNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (newNotification != null) {
      return newNotification(this);
    }
    return orElse();
  }
}

abstract class ProfileNewNotificationEvent implements ProfileEvent {
  const factory ProfileNewNotificationEvent() = _$ProfileNewNotificationEvent;
}

/// @nodoc
abstract class _$LogoutEventCopyWith<$Res> {
  factory _$LogoutEventCopyWith(
          _LogoutEvent value, $Res Function(_LogoutEvent) then) =
      __$LogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogoutEventCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$LogoutEventCopyWith<$Res> {
  __$LogoutEventCopyWithImpl(
      _LogoutEvent _value, $Res Function(_LogoutEvent) _then)
      : super(_value, (v) => _then(v as _LogoutEvent));

  @override
  _LogoutEvent get _value => super._value as _LogoutEvent;
}

/// @nodoc

class _$_LogoutEvent implements _LogoutEvent {
  const _$_LogoutEvent();

  @override
  String toString() {
    return 'ProfileEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() updateBasicInformation,
    required TResult Function() updateUserImage,
    required TResult Function(String typeMessage, String id) deleteMessageId,
    required TResult Function() newNotification,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? updateBasicInformation,
    TResult Function()? updateUserImage,
    TResult Function(String typeMessage, String id)? deleteMessageId,
    TResult Function()? newNotification,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
    required TResult Function(UpdateBasicInformationEvent value)
        updateBasicInformation,
    required TResult Function(UpdateUserImageBasicInformationEvent value)
        updateUserImage,
    required TResult Function(DeleteMessageIdEvent value) deleteMessageId,
    required TResult Function(ProfileNewNotificationEvent value)
        newNotification,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(UpdateBasicInformationEvent value)? updateBasicInformation,
    TResult Function(UpdateUserImageBasicInformationEvent value)?
        updateUserImage,
    TResult Function(DeleteMessageIdEvent value)? deleteMessageId,
    TResult Function(ProfileNewNotificationEvent value)? newNotification,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutEvent implements ProfileEvent {
  const factory _LogoutEvent() = _$_LogoutEvent;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  InitProfileState init(
      {required bool isPinCode,
      required Uint8List uint8list,
      required String userName,
      required String agencyId,
      required bool navigateToPage,
      required bool notification,
      required NotificationMessagesDataModel notificationMessagesDataModel,
      required UserDataInfoModel infoDataModel}) {
    return InitProfileState(
      isPinCode: isPinCode,
      uint8list: uint8list,
      userName: userName,
      agencyId: agencyId,
      navigateToPage: navigateToPage,
      notification: notification,
      notificationMessagesDataModel: notificationMessagesDataModel,
      infoDataModel: infoDataModel,
    );
  }

  LoadingProfileState loading() {
    return const LoadingProfileState();
  }

  LogoutProfileState logout() {
    return const LogoutProfileState();
  }

  ErrorConnectionProfileState errorConnection({required String message}) {
    return ErrorConnectionProfileState(
      message: message,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)
        init,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function(String message) errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)?
        init,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(String message)? errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)?
        init,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(String message)? errorConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitProfileState value) init,
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(LogoutProfileState value) logout,
    required TResult Function(ErrorConnectionProfileState value)
        errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitProfileState value)? init,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LogoutProfileState value)? logout,
    TResult Function(ErrorConnectionProfileState value)? errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitProfileState value)? init,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LogoutProfileState value)? logout,
    TResult Function(ErrorConnectionProfileState value)? errorConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class $InitProfileStateCopyWith<$Res> {
  factory $InitProfileStateCopyWith(
          InitProfileState value, $Res Function(InitProfileState) then) =
      _$InitProfileStateCopyWithImpl<$Res>;
  $Res call(
      {bool isPinCode,
      Uint8List uint8list,
      String userName,
      String agencyId,
      bool navigateToPage,
      bool notification,
      NotificationMessagesDataModel notificationMessagesDataModel,
      UserDataInfoModel infoDataModel});

  $NotificationMessagesDataModelCopyWith<$Res>
      get notificationMessagesDataModel;
  $UserDataInfoModelCopyWith<$Res> get infoDataModel;
}

/// @nodoc
class _$InitProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $InitProfileStateCopyWith<$Res> {
  _$InitProfileStateCopyWithImpl(
      InitProfileState _value, $Res Function(InitProfileState) _then)
      : super(_value, (v) => _then(v as InitProfileState));

  @override
  InitProfileState get _value => super._value as InitProfileState;

  @override
  $Res call({
    Object? isPinCode = freezed,
    Object? uint8list = freezed,
    Object? userName = freezed,
    Object? agencyId = freezed,
    Object? navigateToPage = freezed,
    Object? notification = freezed,
    Object? notificationMessagesDataModel = freezed,
    Object? infoDataModel = freezed,
  }) {
    return _then(InitProfileState(
      isPinCode: isPinCode == freezed
          ? _value.isPinCode
          : isPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
      uint8list: uint8list == freezed
          ? _value.uint8list
          : uint8list // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      agencyId: agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
      navigateToPage: navigateToPage == freezed
          ? _value.navigateToPage
          : navigateToPage // ignore: cast_nullable_to_non_nullable
              as bool,
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationMessagesDataModel: notificationMessagesDataModel == freezed
          ? _value.notificationMessagesDataModel
          : notificationMessagesDataModel // ignore: cast_nullable_to_non_nullable
              as NotificationMessagesDataModel,
      infoDataModel: infoDataModel == freezed
          ? _value.infoDataModel
          : infoDataModel // ignore: cast_nullable_to_non_nullable
              as UserDataInfoModel,
    ));
  }

  @override
  $NotificationMessagesDataModelCopyWith<$Res>
      get notificationMessagesDataModel {
    return $NotificationMessagesDataModelCopyWith<$Res>(
        _value.notificationMessagesDataModel, (value) {
      return _then(_value.copyWith(notificationMessagesDataModel: value));
    });
  }

  @override
  $UserDataInfoModelCopyWith<$Res> get infoDataModel {
    return $UserDataInfoModelCopyWith<$Res>(_value.infoDataModel, (value) {
      return _then(_value.copyWith(infoDataModel: value));
    });
  }
}

/// @nodoc

class _$InitProfileState implements InitProfileState {
  const _$InitProfileState(
      {required this.isPinCode,
      required this.uint8list,
      required this.userName,
      required this.agencyId,
      required this.navigateToPage,
      required this.notification,
      required this.notificationMessagesDataModel,
      required this.infoDataModel});

  @override
  final bool isPinCode;
  @override
  final Uint8List uint8list;
  @override
  final String userName;
  @override
  final String agencyId;
  @override
  final bool navigateToPage;
  @override
  final bool notification;
  @override
  final NotificationMessagesDataModel notificationMessagesDataModel;
  @override
  final UserDataInfoModel infoDataModel;

  @override
  String toString() {
    return 'ProfileState.init(isPinCode: $isPinCode, uint8list: $uint8list, userName: $userName, agencyId: $agencyId, navigateToPage: $navigateToPage, notification: $notification, notificationMessagesDataModel: $notificationMessagesDataModel, infoDataModel: $infoDataModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitProfileState &&
            const DeepCollectionEquality().equals(other.isPinCode, isPinCode) &&
            const DeepCollectionEquality().equals(other.uint8list, uint8list) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.agencyId, agencyId) &&
            const DeepCollectionEquality()
                .equals(other.navigateToPage, navigateToPage) &&
            const DeepCollectionEquality()
                .equals(other.notification, notification) &&
            const DeepCollectionEquality().equals(
                other.notificationMessagesDataModel,
                notificationMessagesDataModel) &&
            const DeepCollectionEquality()
                .equals(other.infoDataModel, infoDataModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isPinCode),
      const DeepCollectionEquality().hash(uint8list),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(agencyId),
      const DeepCollectionEquality().hash(navigateToPage),
      const DeepCollectionEquality().hash(notification),
      const DeepCollectionEquality().hash(notificationMessagesDataModel),
      const DeepCollectionEquality().hash(infoDataModel));

  @JsonKey(ignore: true)
  @override
  $InitProfileStateCopyWith<InitProfileState> get copyWith =>
      _$InitProfileStateCopyWithImpl<InitProfileState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)
        init,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function(String message) errorConnection,
  }) {
    return init(isPinCode, uint8list, userName, agencyId, navigateToPage,
        notification, notificationMessagesDataModel, infoDataModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)?
        init,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(String message)? errorConnection,
  }) {
    return init?.call(isPinCode, uint8list, userName, agencyId, navigateToPage,
        notification, notificationMessagesDataModel, infoDataModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)?
        init,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(String message)? errorConnection,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(isPinCode, uint8list, userName, agencyId, navigateToPage,
          notification, notificationMessagesDataModel, infoDataModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitProfileState value) init,
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(LogoutProfileState value) logout,
    required TResult Function(ErrorConnectionProfileState value)
        errorConnection,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitProfileState value)? init,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LogoutProfileState value)? logout,
    TResult Function(ErrorConnectionProfileState value)? errorConnection,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitProfileState value)? init,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LogoutProfileState value)? logout,
    TResult Function(ErrorConnectionProfileState value)? errorConnection,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitProfileState implements ProfileState {
  const factory InitProfileState(
      {required bool isPinCode,
      required Uint8List uint8list,
      required String userName,
      required String agencyId,
      required bool navigateToPage,
      required bool notification,
      required NotificationMessagesDataModel notificationMessagesDataModel,
      required UserDataInfoModel infoDataModel}) = _$InitProfileState;

  bool get isPinCode;
  Uint8List get uint8list;
  String get userName;
  String get agencyId;
  bool get navigateToPage;
  bool get notification;
  NotificationMessagesDataModel get notificationMessagesDataModel;
  UserDataInfoModel get infoDataModel;
  @JsonKey(ignore: true)
  $InitProfileStateCopyWith<InitProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingProfileStateCopyWith<$Res> {
  factory $LoadingProfileStateCopyWith(
          LoadingProfileState value, $Res Function(LoadingProfileState) then) =
      _$LoadingProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $LoadingProfileStateCopyWith<$Res> {
  _$LoadingProfileStateCopyWithImpl(
      LoadingProfileState _value, $Res Function(LoadingProfileState) _then)
      : super(_value, (v) => _then(v as LoadingProfileState));

  @override
  LoadingProfileState get _value => super._value as LoadingProfileState;
}

/// @nodoc

class _$LoadingProfileState implements LoadingProfileState {
  const _$LoadingProfileState();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)
        init,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function(String message) errorConnection,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)?
        init,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(String message)? errorConnection,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)?
        init,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(String message)? errorConnection,
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
    required TResult Function(InitProfileState value) init,
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(LogoutProfileState value) logout,
    required TResult Function(ErrorConnectionProfileState value)
        errorConnection,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitProfileState value)? init,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LogoutProfileState value)? logout,
    TResult Function(ErrorConnectionProfileState value)? errorConnection,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitProfileState value)? init,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LogoutProfileState value)? logout,
    TResult Function(ErrorConnectionProfileState value)? errorConnection,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingProfileState implements ProfileState {
  const factory LoadingProfileState() = _$LoadingProfileState;
}

/// @nodoc
abstract class $LogoutProfileStateCopyWith<$Res> {
  factory $LogoutProfileStateCopyWith(
          LogoutProfileState value, $Res Function(LogoutProfileState) then) =
      _$LogoutProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $LogoutProfileStateCopyWith<$Res> {
  _$LogoutProfileStateCopyWithImpl(
      LogoutProfileState _value, $Res Function(LogoutProfileState) _then)
      : super(_value, (v) => _then(v as LogoutProfileState));

  @override
  LogoutProfileState get _value => super._value as LogoutProfileState;
}

/// @nodoc

class _$LogoutProfileState implements LogoutProfileState {
  const _$LogoutProfileState();

  @override
  String toString() {
    return 'ProfileState.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogoutProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)
        init,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function(String message) errorConnection,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)?
        init,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(String message)? errorConnection,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)?
        init,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(String message)? errorConnection,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitProfileState value) init,
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(LogoutProfileState value) logout,
    required TResult Function(ErrorConnectionProfileState value)
        errorConnection,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitProfileState value)? init,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LogoutProfileState value)? logout,
    TResult Function(ErrorConnectionProfileState value)? errorConnection,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitProfileState value)? init,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LogoutProfileState value)? logout,
    TResult Function(ErrorConnectionProfileState value)? errorConnection,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutProfileState implements ProfileState {
  const factory LogoutProfileState() = _$LogoutProfileState;
}

/// @nodoc
abstract class $ErrorConnectionProfileStateCopyWith<$Res> {
  factory $ErrorConnectionProfileStateCopyWith(
          ErrorConnectionProfileState value,
          $Res Function(ErrorConnectionProfileState) then) =
      _$ErrorConnectionProfileStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorConnectionProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ErrorConnectionProfileStateCopyWith<$Res> {
  _$ErrorConnectionProfileStateCopyWithImpl(ErrorConnectionProfileState _value,
      $Res Function(ErrorConnectionProfileState) _then)
      : super(_value, (v) => _then(v as ErrorConnectionProfileState));

  @override
  ErrorConnectionProfileState get _value =>
      super._value as ErrorConnectionProfileState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorConnectionProfileState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorConnectionProfileState implements ErrorConnectionProfileState {
  _$ErrorConnectionProfileState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.errorConnection(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorConnectionProfileState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ErrorConnectionProfileStateCopyWith<ErrorConnectionProfileState>
      get copyWith => _$ErrorConnectionProfileStateCopyWithImpl<
          ErrorConnectionProfileState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)
        init,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function(String message) errorConnection,
  }) {
    return errorConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)?
        init,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(String message)? errorConnection,
  }) {
    return errorConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPinCode,
            Uint8List uint8list,
            String userName,
            String agencyId,
            bool navigateToPage,
            bool notification,
            NotificationMessagesDataModel notificationMessagesDataModel,
            UserDataInfoModel infoDataModel)?
        init,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(String message)? errorConnection,
    required TResult orElse(),
  }) {
    if (errorConnection != null) {
      return errorConnection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitProfileState value) init,
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(LogoutProfileState value) logout,
    required TResult Function(ErrorConnectionProfileState value)
        errorConnection,
  }) {
    return errorConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitProfileState value)? init,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LogoutProfileState value)? logout,
    TResult Function(ErrorConnectionProfileState value)? errorConnection,
  }) {
    return errorConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitProfileState value)? init,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LogoutProfileState value)? logout,
    TResult Function(ErrorConnectionProfileState value)? errorConnection,
    required TResult orElse(),
  }) {
    if (errorConnection != null) {
      return errorConnection(this);
    }
    return orElse();
  }
}

abstract class ErrorConnectionProfileState implements ProfileState {
  factory ErrorConnectionProfileState({required String message}) =
      _$ErrorConnectionProfileState;

  String get message;
  @JsonKey(ignore: true)
  $ErrorConnectionProfileStateCopyWith<ErrorConnectionProfileState>
      get copyWith => throw _privateConstructorUsedError;
}
