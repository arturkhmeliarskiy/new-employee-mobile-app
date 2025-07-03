// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  NotificationHomeEvent notification(
      {required bool notification,
      required bool unreadChatMessages,
      required String agencyId}) {
    return NotificationHomeEvent(
      notification: notification,
      unreadChatMessages: unreadChatMessages,
      agencyId: agencyId,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  bool get notification => throw _privateConstructorUsedError;
  bool get unreadChatMessages => throw _privateConstructorUsedError;
  String get agencyId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool notification, bool unreadChatMessages, String agencyId)
        notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool notification, bool unreadChatMessages, String agencyId)?
        notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool notification, bool unreadChatMessages, String agencyId)?
        notification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationHomeEvent value) notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationHomeEvent value)? notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationHomeEvent value)? notification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
  $Res call({bool notification, bool unreadChatMessages, String agencyId});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;

  @override
  $Res call({
    Object? notification = freezed,
    Object? unreadChatMessages = freezed,
    Object? agencyId = freezed,
  }) {
    return _then(_value.copyWith(
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool,
      unreadChatMessages: unreadChatMessages == freezed
          ? _value.unreadChatMessages
          : unreadChatMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      agencyId: agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $NotificationHomeEventCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $NotificationHomeEventCopyWith(NotificationHomeEvent value,
          $Res Function(NotificationHomeEvent) then) =
      _$NotificationHomeEventCopyWithImpl<$Res>;
  @override
  $Res call({bool notification, bool unreadChatMessages, String agencyId});
}

/// @nodoc
class _$NotificationHomeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $NotificationHomeEventCopyWith<$Res> {
  _$NotificationHomeEventCopyWithImpl(
      NotificationHomeEvent _value, $Res Function(NotificationHomeEvent) _then)
      : super(_value, (v) => _then(v as NotificationHomeEvent));

  @override
  NotificationHomeEvent get _value => super._value as NotificationHomeEvent;

  @override
  $Res call({
    Object? notification = freezed,
    Object? unreadChatMessages = freezed,
    Object? agencyId = freezed,
  }) {
    return _then(NotificationHomeEvent(
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool,
      unreadChatMessages: unreadChatMessages == freezed
          ? _value.unreadChatMessages
          : unreadChatMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      agencyId: agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationHomeEvent implements NotificationHomeEvent {
  const _$NotificationHomeEvent(
      {required this.notification,
      required this.unreadChatMessages,
      required this.agencyId});

  @override
  final bool notification;
  @override
  final bool unreadChatMessages;
  @override
  final String agencyId;

  @override
  String toString() {
    return 'HomeEvent.notification(notification: $notification, unreadChatMessages: $unreadChatMessages, agencyId: $agencyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationHomeEvent &&
            const DeepCollectionEquality()
                .equals(other.notification, notification) &&
            const DeepCollectionEquality()
                .equals(other.unreadChatMessages, unreadChatMessages) &&
            const DeepCollectionEquality().equals(other.agencyId, agencyId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(notification),
      const DeepCollectionEquality().hash(unreadChatMessages),
      const DeepCollectionEquality().hash(agencyId));

  @JsonKey(ignore: true)
  @override
  $NotificationHomeEventCopyWith<NotificationHomeEvent> get copyWith =>
      _$NotificationHomeEventCopyWithImpl<NotificationHomeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool notification, bool unreadChatMessages, String agencyId)
        notification,
  }) {
    return notification(this.notification, unreadChatMessages, agencyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool notification, bool unreadChatMessages, String agencyId)?
        notification,
  }) {
    return notification?.call(this.notification, unreadChatMessages, agencyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool notification, bool unreadChatMessages, String agencyId)?
        notification,
    required TResult orElse(),
  }) {
    if (notification != null) {
      return notification(this.notification, unreadChatMessages, agencyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationHomeEvent value) notification,
  }) {
    return notification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotificationHomeEvent value)? notification,
  }) {
    return notification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationHomeEvent value)? notification,
    required TResult orElse(),
  }) {
    if (notification != null) {
      return notification(this);
    }
    return orElse();
  }
}

abstract class NotificationHomeEvent implements HomeEvent {
  const factory NotificationHomeEvent(
      {required bool notification,
      required bool unreadChatMessages,
      required String agencyId}) = _$NotificationHomeEvent;

  @override
  bool get notification;
  @override
  bool get unreadChatMessages;
  @override
  String get agencyId;
  @override
  @JsonKey(ignore: true)
  $NotificationHomeEventCopyWith<NotificationHomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  LoadingHomeState loading() {
    return const LoadingHomeState();
  }

  HomeNotificationState notification(
      bool notification, ChatMessagesAgencyDataModel unreadChatMessages) {
    return HomeNotificationState(
      notification,
      unreadChatMessages,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool notification, ChatMessagesAgencyDataModel unreadChatMessages)
        notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool notification, ChatMessagesAgencyDataModel unreadChatMessages)?
        notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool notification, ChatMessagesAgencyDataModel unreadChatMessages)?
        notification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(HomeNotificationState value) notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(HomeNotificationState value)? notification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(HomeNotificationState value)? notification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $LoadingHomeStateCopyWith<$Res> {
  factory $LoadingHomeStateCopyWith(
          LoadingHomeState value, $Res Function(LoadingHomeState) then) =
      _$LoadingHomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingHomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadingHomeStateCopyWith<$Res> {
  _$LoadingHomeStateCopyWithImpl(
      LoadingHomeState _value, $Res Function(LoadingHomeState) _then)
      : super(_value, (v) => _then(v as LoadingHomeState));

  @override
  LoadingHomeState get _value => super._value as LoadingHomeState;
}

/// @nodoc

class _$LoadingHomeState implements LoadingHomeState {
  const _$LoadingHomeState();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingHomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool notification, ChatMessagesAgencyDataModel unreadChatMessages)
        notification,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool notification, ChatMessagesAgencyDataModel unreadChatMessages)?
        notification,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool notification, ChatMessagesAgencyDataModel unreadChatMessages)?
        notification,
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
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(HomeNotificationState value) notification,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(HomeNotificationState value)? notification,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(HomeNotificationState value)? notification,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingHomeState implements HomeState {
  const factory LoadingHomeState() = _$LoadingHomeState;
}

/// @nodoc
abstract class $HomeNotificationStateCopyWith<$Res> {
  factory $HomeNotificationStateCopyWith(HomeNotificationState value,
          $Res Function(HomeNotificationState) then) =
      _$HomeNotificationStateCopyWithImpl<$Res>;
  $Res call(
      {bool notification, ChatMessagesAgencyDataModel unreadChatMessages});

  $ChatMessagesAgencyDataModelCopyWith<$Res> get unreadChatMessages;
}

/// @nodoc
class _$HomeNotificationStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeNotificationStateCopyWith<$Res> {
  _$HomeNotificationStateCopyWithImpl(
      HomeNotificationState _value, $Res Function(HomeNotificationState) _then)
      : super(_value, (v) => _then(v as HomeNotificationState));

  @override
  HomeNotificationState get _value => super._value as HomeNotificationState;

  @override
  $Res call({
    Object? notification = freezed,
    Object? unreadChatMessages = freezed,
  }) {
    return _then(HomeNotificationState(
      notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool,
      unreadChatMessages == freezed
          ? _value.unreadChatMessages
          : unreadChatMessages // ignore: cast_nullable_to_non_nullable
              as ChatMessagesAgencyDataModel,
    ));
  }

  @override
  $ChatMessagesAgencyDataModelCopyWith<$Res> get unreadChatMessages {
    return $ChatMessagesAgencyDataModelCopyWith<$Res>(_value.unreadChatMessages,
        (value) {
      return _then(_value.copyWith(unreadChatMessages: value));
    });
  }
}

/// @nodoc

class _$HomeNotificationState implements HomeNotificationState {
  const _$HomeNotificationState(this.notification, this.unreadChatMessages);

  @override
  final bool notification;
  @override
  final ChatMessagesAgencyDataModel unreadChatMessages;

  @override
  String toString() {
    return 'HomeState.notification(notification: $notification, unreadChatMessages: $unreadChatMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeNotificationState &&
            const DeepCollectionEquality()
                .equals(other.notification, notification) &&
            const DeepCollectionEquality()
                .equals(other.unreadChatMessages, unreadChatMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(notification),
      const DeepCollectionEquality().hash(unreadChatMessages));

  @JsonKey(ignore: true)
  @override
  $HomeNotificationStateCopyWith<HomeNotificationState> get copyWith =>
      _$HomeNotificationStateCopyWithImpl<HomeNotificationState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool notification, ChatMessagesAgencyDataModel unreadChatMessages)
        notification,
  }) {
    return notification(this.notification, unreadChatMessages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool notification, ChatMessagesAgencyDataModel unreadChatMessages)?
        notification,
  }) {
    return notification?.call(this.notification, unreadChatMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool notification, ChatMessagesAgencyDataModel unreadChatMessages)?
        notification,
    required TResult orElse(),
  }) {
    if (notification != null) {
      return notification(this.notification, unreadChatMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(HomeNotificationState value) notification,
  }) {
    return notification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(HomeNotificationState value)? notification,
  }) {
    return notification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(HomeNotificationState value)? notification,
    required TResult orElse(),
  }) {
    if (notification != null) {
      return notification(this);
    }
    return orElse();
  }
}

abstract class HomeNotificationState implements HomeState {
  const factory HomeNotificationState(
          bool notification, ChatMessagesAgencyDataModel unreadChatMessages) =
      _$HomeNotificationState;

  bool get notification;
  ChatMessagesAgencyDataModel get unreadChatMessages;
  @JsonKey(ignore: true)
  $HomeNotificationStateCopyWith<HomeNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
