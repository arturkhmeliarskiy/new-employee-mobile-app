// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  _PreloadDataAppEvent preloadData() {
    return const _PreloadDataAppEvent();
  }

  LogInSuccessAppEvent logInSuccess() {
    return const LogInSuccessAppEvent();
  }

  NotRegisteredAppEvent notRegistered() {
    return const NotRegisteredAppEvent();
  }

  ExeptionMessageAppEvent exeptionMessage() {
    return const ExeptionMessageAppEvent();
  }

  ShowMoreNewsAppEvent showMoreNews() {
    return const ShowMoreNewsAppEvent();
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() logInSuccess,
    required TResult Function() notRegistered,
    required TResult Function() exeptionMessage,
    required TResult Function() showMoreNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? logInSuccess,
    TResult Function()? notRegistered,
    TResult Function()? exeptionMessage,
    TResult Function()? showMoreNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? logInSuccess,
    TResult Function()? notRegistered,
    TResult Function()? exeptionMessage,
    TResult Function()? showMoreNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PreloadDataAppEvent value) preloadData,
    required TResult Function(LogInSuccessAppEvent value) logInSuccess,
    required TResult Function(NotRegisteredAppEvent value) notRegistered,
    required TResult Function(ExeptionMessageAppEvent value) exeptionMessage,
    required TResult Function(ShowMoreNewsAppEvent value) showMoreNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PreloadDataAppEvent value)? preloadData,
    TResult Function(LogInSuccessAppEvent value)? logInSuccess,
    TResult Function(NotRegisteredAppEvent value)? notRegistered,
    TResult Function(ExeptionMessageAppEvent value)? exeptionMessage,
    TResult Function(ShowMoreNewsAppEvent value)? showMoreNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PreloadDataAppEvent value)? preloadData,
    TResult Function(LogInSuccessAppEvent value)? logInSuccess,
    TResult Function(NotRegisteredAppEvent value)? notRegistered,
    TResult Function(ExeptionMessageAppEvent value)? exeptionMessage,
    TResult Function(ShowMoreNewsAppEvent value)? showMoreNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$PreloadDataAppEventCopyWith<$Res> {
  factory _$PreloadDataAppEventCopyWith(_PreloadDataAppEvent value,
          $Res Function(_PreloadDataAppEvent) then) =
      __$PreloadDataAppEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$PreloadDataAppEventCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$PreloadDataAppEventCopyWith<$Res> {
  __$PreloadDataAppEventCopyWithImpl(
      _PreloadDataAppEvent _value, $Res Function(_PreloadDataAppEvent) _then)
      : super(_value, (v) => _then(v as _PreloadDataAppEvent));

  @override
  _PreloadDataAppEvent get _value => super._value as _PreloadDataAppEvent;
}

/// @nodoc

class _$_PreloadDataAppEvent implements _PreloadDataAppEvent {
  const _$_PreloadDataAppEvent();

  @override
  String toString() {
    return 'AppEvent.preloadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PreloadDataAppEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() logInSuccess,
    required TResult Function() notRegistered,
    required TResult Function() exeptionMessage,
    required TResult Function() showMoreNews,
  }) {
    return preloadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? logInSuccess,
    TResult Function()? notRegistered,
    TResult Function()? exeptionMessage,
    TResult Function()? showMoreNews,
  }) {
    return preloadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? logInSuccess,
    TResult Function()? notRegistered,
    TResult Function()? exeptionMessage,
    TResult Function()? showMoreNews,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PreloadDataAppEvent value) preloadData,
    required TResult Function(LogInSuccessAppEvent value) logInSuccess,
    required TResult Function(NotRegisteredAppEvent value) notRegistered,
    required TResult Function(ExeptionMessageAppEvent value) exeptionMessage,
    required TResult Function(ShowMoreNewsAppEvent value) showMoreNews,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PreloadDataAppEvent value)? preloadData,
    TResult Function(LogInSuccessAppEvent value)? logInSuccess,
    TResult Function(NotRegisteredAppEvent value)? notRegistered,
    TResult Function(ExeptionMessageAppEvent value)? exeptionMessage,
    TResult Function(ShowMoreNewsAppEvent value)? showMoreNews,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PreloadDataAppEvent value)? preloadData,
    TResult Function(LogInSuccessAppEvent value)? logInSuccess,
    TResult Function(NotRegisteredAppEvent value)? notRegistered,
    TResult Function(ExeptionMessageAppEvent value)? exeptionMessage,
    TResult Function(ShowMoreNewsAppEvent value)? showMoreNews,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class _PreloadDataAppEvent implements AppEvent {
  const factory _PreloadDataAppEvent() = _$_PreloadDataAppEvent;
}

/// @nodoc
abstract class $LogInSuccessAppEventCopyWith<$Res> {
  factory $LogInSuccessAppEventCopyWith(LogInSuccessAppEvent value,
          $Res Function(LogInSuccessAppEvent) then) =
      _$LogInSuccessAppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInSuccessAppEventCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements $LogInSuccessAppEventCopyWith<$Res> {
  _$LogInSuccessAppEventCopyWithImpl(
      LogInSuccessAppEvent _value, $Res Function(LogInSuccessAppEvent) _then)
      : super(_value, (v) => _then(v as LogInSuccessAppEvent));

  @override
  LogInSuccessAppEvent get _value => super._value as LogInSuccessAppEvent;
}

/// @nodoc

class _$LogInSuccessAppEvent implements LogInSuccessAppEvent {
  const _$LogInSuccessAppEvent();

  @override
  String toString() {
    return 'AppEvent.logInSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogInSuccessAppEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() logInSuccess,
    required TResult Function() notRegistered,
    required TResult Function() exeptionMessage,
    required TResult Function() showMoreNews,
  }) {
    return logInSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? logInSuccess,
    TResult Function()? notRegistered,
    TResult Function()? exeptionMessage,
    TResult Function()? showMoreNews,
  }) {
    return logInSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? logInSuccess,
    TResult Function()? notRegistered,
    TResult Function()? exeptionMessage,
    TResult Function()? showMoreNews,
    required TResult orElse(),
  }) {
    if (logInSuccess != null) {
      return logInSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PreloadDataAppEvent value) preloadData,
    required TResult Function(LogInSuccessAppEvent value) logInSuccess,
    required TResult Function(NotRegisteredAppEvent value) notRegistered,
    required TResult Function(ExeptionMessageAppEvent value) exeptionMessage,
    required TResult Function(ShowMoreNewsAppEvent value) showMoreNews,
  }) {
    return logInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PreloadDataAppEvent value)? preloadData,
    TResult Function(LogInSuccessAppEvent value)? logInSuccess,
    TResult Function(NotRegisteredAppEvent value)? notRegistered,
    TResult Function(ExeptionMessageAppEvent value)? exeptionMessage,
    TResult Function(ShowMoreNewsAppEvent value)? showMoreNews,
  }) {
    return logInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PreloadDataAppEvent value)? preloadData,
    TResult Function(LogInSuccessAppEvent value)? logInSuccess,
    TResult Function(NotRegisteredAppEvent value)? notRegistered,
    TResult Function(ExeptionMessageAppEvent value)? exeptionMessage,
    TResult Function(ShowMoreNewsAppEvent value)? showMoreNews,
    required TResult orElse(),
  }) {
    if (logInSuccess != null) {
      return logInSuccess(this);
    }
    return orElse();
  }
}

abstract class LogInSuccessAppEvent implements AppEvent {
  const factory LogInSuccessAppEvent() = _$LogInSuccessAppEvent;
}

/// @nodoc
abstract class $NotRegisteredAppEventCopyWith<$Res> {
  factory $NotRegisteredAppEventCopyWith(NotRegisteredAppEvent value,
          $Res Function(NotRegisteredAppEvent) then) =
      _$NotRegisteredAppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotRegisteredAppEventCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements $NotRegisteredAppEventCopyWith<$Res> {
  _$NotRegisteredAppEventCopyWithImpl(
      NotRegisteredAppEvent _value, $Res Function(NotRegisteredAppEvent) _then)
      : super(_value, (v) => _then(v as NotRegisteredAppEvent));

  @override
  NotRegisteredAppEvent get _value => super._value as NotRegisteredAppEvent;
}

/// @nodoc

class _$NotRegisteredAppEvent implements NotRegisteredAppEvent {
  const _$NotRegisteredAppEvent();

  @override
  String toString() {
    return 'AppEvent.notRegistered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotRegisteredAppEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() logInSuccess,
    required TResult Function() notRegistered,
    required TResult Function() exeptionMessage,
    required TResult Function() showMoreNews,
  }) {
    return notRegistered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? logInSuccess,
    TResult Function()? notRegistered,
    TResult Function()? exeptionMessage,
    TResult Function()? showMoreNews,
  }) {
    return notRegistered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? logInSuccess,
    TResult Function()? notRegistered,
    TResult Function()? exeptionMessage,
    TResult Function()? showMoreNews,
    required TResult orElse(),
  }) {
    if (notRegistered != null) {
      return notRegistered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PreloadDataAppEvent value) preloadData,
    required TResult Function(LogInSuccessAppEvent value) logInSuccess,
    required TResult Function(NotRegisteredAppEvent value) notRegistered,
    required TResult Function(ExeptionMessageAppEvent value) exeptionMessage,
    required TResult Function(ShowMoreNewsAppEvent value) showMoreNews,
  }) {
    return notRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PreloadDataAppEvent value)? preloadData,
    TResult Function(LogInSuccessAppEvent value)? logInSuccess,
    TResult Function(NotRegisteredAppEvent value)? notRegistered,
    TResult Function(ExeptionMessageAppEvent value)? exeptionMessage,
    TResult Function(ShowMoreNewsAppEvent value)? showMoreNews,
  }) {
    return notRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PreloadDataAppEvent value)? preloadData,
    TResult Function(LogInSuccessAppEvent value)? logInSuccess,
    TResult Function(NotRegisteredAppEvent value)? notRegistered,
    TResult Function(ExeptionMessageAppEvent value)? exeptionMessage,
    TResult Function(ShowMoreNewsAppEvent value)? showMoreNews,
    required TResult orElse(),
  }) {
    if (notRegistered != null) {
      return notRegistered(this);
    }
    return orElse();
  }
}

abstract class NotRegisteredAppEvent implements AppEvent {
  const factory NotRegisteredAppEvent() = _$NotRegisteredAppEvent;
}

/// @nodoc
abstract class $ExeptionMessageAppEventCopyWith<$Res> {
  factory $ExeptionMessageAppEventCopyWith(ExeptionMessageAppEvent value,
          $Res Function(ExeptionMessageAppEvent) then) =
      _$ExeptionMessageAppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExeptionMessageAppEventCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements $ExeptionMessageAppEventCopyWith<$Res> {
  _$ExeptionMessageAppEventCopyWithImpl(ExeptionMessageAppEvent _value,
      $Res Function(ExeptionMessageAppEvent) _then)
      : super(_value, (v) => _then(v as ExeptionMessageAppEvent));

  @override
  ExeptionMessageAppEvent get _value => super._value as ExeptionMessageAppEvent;
}

/// @nodoc

class _$ExeptionMessageAppEvent implements ExeptionMessageAppEvent {
  const _$ExeptionMessageAppEvent();

  @override
  String toString() {
    return 'AppEvent.exeptionMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ExeptionMessageAppEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() logInSuccess,
    required TResult Function() notRegistered,
    required TResult Function() exeptionMessage,
    required TResult Function() showMoreNews,
  }) {
    return exeptionMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? logInSuccess,
    TResult Function()? notRegistered,
    TResult Function()? exeptionMessage,
    TResult Function()? showMoreNews,
  }) {
    return exeptionMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? logInSuccess,
    TResult Function()? notRegistered,
    TResult Function()? exeptionMessage,
    TResult Function()? showMoreNews,
    required TResult orElse(),
  }) {
    if (exeptionMessage != null) {
      return exeptionMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PreloadDataAppEvent value) preloadData,
    required TResult Function(LogInSuccessAppEvent value) logInSuccess,
    required TResult Function(NotRegisteredAppEvent value) notRegistered,
    required TResult Function(ExeptionMessageAppEvent value) exeptionMessage,
    required TResult Function(ShowMoreNewsAppEvent value) showMoreNews,
  }) {
    return exeptionMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PreloadDataAppEvent value)? preloadData,
    TResult Function(LogInSuccessAppEvent value)? logInSuccess,
    TResult Function(NotRegisteredAppEvent value)? notRegistered,
    TResult Function(ExeptionMessageAppEvent value)? exeptionMessage,
    TResult Function(ShowMoreNewsAppEvent value)? showMoreNews,
  }) {
    return exeptionMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PreloadDataAppEvent value)? preloadData,
    TResult Function(LogInSuccessAppEvent value)? logInSuccess,
    TResult Function(NotRegisteredAppEvent value)? notRegistered,
    TResult Function(ExeptionMessageAppEvent value)? exeptionMessage,
    TResult Function(ShowMoreNewsAppEvent value)? showMoreNews,
    required TResult orElse(),
  }) {
    if (exeptionMessage != null) {
      return exeptionMessage(this);
    }
    return orElse();
  }
}

abstract class ExeptionMessageAppEvent implements AppEvent {
  const factory ExeptionMessageAppEvent() = _$ExeptionMessageAppEvent;
}

/// @nodoc
abstract class $ShowMoreNewsAppEventCopyWith<$Res> {
  factory $ShowMoreNewsAppEventCopyWith(ShowMoreNewsAppEvent value,
          $Res Function(ShowMoreNewsAppEvent) then) =
      _$ShowMoreNewsAppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowMoreNewsAppEventCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements $ShowMoreNewsAppEventCopyWith<$Res> {
  _$ShowMoreNewsAppEventCopyWithImpl(
      ShowMoreNewsAppEvent _value, $Res Function(ShowMoreNewsAppEvent) _then)
      : super(_value, (v) => _then(v as ShowMoreNewsAppEvent));

  @override
  ShowMoreNewsAppEvent get _value => super._value as ShowMoreNewsAppEvent;
}

/// @nodoc

class _$ShowMoreNewsAppEvent implements ShowMoreNewsAppEvent {
  const _$ShowMoreNewsAppEvent();

  @override
  String toString() {
    return 'AppEvent.showMoreNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShowMoreNewsAppEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function() logInSuccess,
    required TResult Function() notRegistered,
    required TResult Function() exeptionMessage,
    required TResult Function() showMoreNews,
  }) {
    return showMoreNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? logInSuccess,
    TResult Function()? notRegistered,
    TResult Function()? exeptionMessage,
    TResult Function()? showMoreNews,
  }) {
    return showMoreNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function()? logInSuccess,
    TResult Function()? notRegistered,
    TResult Function()? exeptionMessage,
    TResult Function()? showMoreNews,
    required TResult orElse(),
  }) {
    if (showMoreNews != null) {
      return showMoreNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PreloadDataAppEvent value) preloadData,
    required TResult Function(LogInSuccessAppEvent value) logInSuccess,
    required TResult Function(NotRegisteredAppEvent value) notRegistered,
    required TResult Function(ExeptionMessageAppEvent value) exeptionMessage,
    required TResult Function(ShowMoreNewsAppEvent value) showMoreNews,
  }) {
    return showMoreNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PreloadDataAppEvent value)? preloadData,
    TResult Function(LogInSuccessAppEvent value)? logInSuccess,
    TResult Function(NotRegisteredAppEvent value)? notRegistered,
    TResult Function(ExeptionMessageAppEvent value)? exeptionMessage,
    TResult Function(ShowMoreNewsAppEvent value)? showMoreNews,
  }) {
    return showMoreNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PreloadDataAppEvent value)? preloadData,
    TResult Function(LogInSuccessAppEvent value)? logInSuccess,
    TResult Function(NotRegisteredAppEvent value)? notRegistered,
    TResult Function(ExeptionMessageAppEvent value)? exeptionMessage,
    TResult Function(ShowMoreNewsAppEvent value)? showMoreNews,
    required TResult orElse(),
  }) {
    if (showMoreNews != null) {
      return showMoreNews(this);
    }
    return orElse();
  }
}

abstract class ShowMoreNewsAppEvent implements AppEvent {
  const factory ShowMoreNewsAppEvent() = _$ShowMoreNewsAppEvent;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  InitAppState init() {
    return InitAppState();
  }

  PreloadDataCompletedAppState preloadDataCompleted(
      bool isAuthed,
      bool isPinCode,
      String languageTag,
      String userName,
      Uint8List userImage,
      NewsInfoDataModel newsList,
      WorkInfoDataModel workInfo,
      String message) {
    return PreloadDataCompletedAppState(
      isAuthed,
      isPinCode,
      languageTag,
      userName,
      userImage,
      newsList,
      workInfo,
      message,
    );
  }

  ActiveProtectionState activeProtection({required bool inactive}) {
    return ActiveProtectionState(
      inactive: inactive,
    );
  }

  AppInProgressState appInProgress() {
    return AppInProgressState();
  }

  NotRegisteredAppState notRegistered(
      {required String userName, required NewsInfoDataModel newsList}) {
    return NotRegisteredAppState(
      userName: userName,
      newsList: newsList,
    );
  }

  ErrorConnectionState errorConnection({required String message}) {
    return ErrorConnectionState(
      message: message,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)
        preloadDataCompleted,
    required TResult Function(bool inactive) activeProtection,
    required TResult Function() appInProgress,
    required TResult Function(String userName, NewsInfoDataModel newsList)
        notRegistered,
    required TResult Function(String message) errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
    TResult Function(String message)? errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
    TResult Function(String message)? errorConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppState value) init,
    required TResult Function(PreloadDataCompletedAppState value)
        preloadDataCompleted,
    required TResult Function(ActiveProtectionState value) activeProtection,
    required TResult Function(AppInProgressState value) appInProgress,
    required TResult Function(NotRegisteredAppState value) notRegistered,
    required TResult Function(ErrorConnectionState value) errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class $InitAppStateCopyWith<$Res> {
  factory $InitAppStateCopyWith(
          InitAppState value, $Res Function(InitAppState) then) =
      _$InitAppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitAppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $InitAppStateCopyWith<$Res> {
  _$InitAppStateCopyWithImpl(
      InitAppState _value, $Res Function(InitAppState) _then)
      : super(_value, (v) => _then(v as InitAppState));

  @override
  InitAppState get _value => super._value as InitAppState;
}

/// @nodoc

class _$InitAppState implements InitAppState {
  _$InitAppState();

  @override
  String toString() {
    return 'AppState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitAppState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)
        preloadDataCompleted,
    required TResult Function(bool inactive) activeProtection,
    required TResult Function() appInProgress,
    required TResult Function(String userName, NewsInfoDataModel newsList)
        notRegistered,
    required TResult Function(String message) errorConnection,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
    TResult Function(String message)? errorConnection,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
    TResult Function(String message)? errorConnection,
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
    required TResult Function(InitAppState value) init,
    required TResult Function(PreloadDataCompletedAppState value)
        preloadDataCompleted,
    required TResult Function(ActiveProtectionState value) activeProtection,
    required TResult Function(AppInProgressState value) appInProgress,
    required TResult Function(NotRegisteredAppState value) notRegistered,
    required TResult Function(ErrorConnectionState value) errorConnection,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitAppState implements AppState {
  factory InitAppState() = _$InitAppState;
}

/// @nodoc
abstract class $PreloadDataCompletedAppStateCopyWith<$Res> {
  factory $PreloadDataCompletedAppStateCopyWith(
          PreloadDataCompletedAppState value,
          $Res Function(PreloadDataCompletedAppState) then) =
      _$PreloadDataCompletedAppStateCopyWithImpl<$Res>;
  $Res call(
      {bool isAuthed,
      bool isPinCode,
      String languageTag,
      String userName,
      Uint8List userImage,
      NewsInfoDataModel newsList,
      WorkInfoDataModel workInfo,
      String message});

  $NewsInfoDataModelCopyWith<$Res> get newsList;
  $WorkInfoDataModelCopyWith<$Res> get workInfo;
}

/// @nodoc
class _$PreloadDataCompletedAppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements $PreloadDataCompletedAppStateCopyWith<$Res> {
  _$PreloadDataCompletedAppStateCopyWithImpl(
      PreloadDataCompletedAppState _value,
      $Res Function(PreloadDataCompletedAppState) _then)
      : super(_value, (v) => _then(v as PreloadDataCompletedAppState));

  @override
  PreloadDataCompletedAppState get _value =>
      super._value as PreloadDataCompletedAppState;

  @override
  $Res call({
    Object? isAuthed = freezed,
    Object? isPinCode = freezed,
    Object? languageTag = freezed,
    Object? userName = freezed,
    Object? userImage = freezed,
    Object? newsList = freezed,
    Object? workInfo = freezed,
    Object? message = freezed,
  }) {
    return _then(PreloadDataCompletedAppState(
      isAuthed == freezed
          ? _value.isAuthed
          : isAuthed // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinCode == freezed
          ? _value.isPinCode
          : isPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
      languageTag == freezed
          ? _value.languageTag
          : languageTag // ignore: cast_nullable_to_non_nullable
              as String,
      userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userImage == freezed
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      newsList == freezed
          ? _value.newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as NewsInfoDataModel,
      workInfo == freezed
          ? _value.workInfo
          : workInfo // ignore: cast_nullable_to_non_nullable
              as WorkInfoDataModel,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $NewsInfoDataModelCopyWith<$Res> get newsList {
    return $NewsInfoDataModelCopyWith<$Res>(_value.newsList, (value) {
      return _then(_value.copyWith(newsList: value));
    });
  }

  @override
  $WorkInfoDataModelCopyWith<$Res> get workInfo {
    return $WorkInfoDataModelCopyWith<$Res>(_value.workInfo, (value) {
      return _then(_value.copyWith(workInfo: value));
    });
  }
}

/// @nodoc

class _$PreloadDataCompletedAppState implements PreloadDataCompletedAppState {
  _$PreloadDataCompletedAppState(
      this.isAuthed,
      this.isPinCode,
      this.languageTag,
      this.userName,
      this.userImage,
      this.newsList,
      this.workInfo,
      this.message);

  @override
  final bool isAuthed;
  @override
  final bool isPinCode;
  @override
  final String languageTag;
  @override
  final String userName;
  @override
  final Uint8List userImage;
  @override
  final NewsInfoDataModel newsList;
  @override
  final WorkInfoDataModel workInfo;
  @override
  final String message;

  @override
  String toString() {
    return 'AppState.preloadDataCompleted(isAuthed: $isAuthed, isPinCode: $isPinCode, languageTag: $languageTag, userName: $userName, userImage: $userImage, newsList: $newsList, workInfo: $workInfo, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PreloadDataCompletedAppState &&
            const DeepCollectionEquality().equals(other.isAuthed, isAuthed) &&
            const DeepCollectionEquality().equals(other.isPinCode, isPinCode) &&
            const DeepCollectionEquality()
                .equals(other.languageTag, languageTag) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.userImage, userImage) &&
            const DeepCollectionEquality().equals(other.newsList, newsList) &&
            const DeepCollectionEquality().equals(other.workInfo, workInfo) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isAuthed),
      const DeepCollectionEquality().hash(isPinCode),
      const DeepCollectionEquality().hash(languageTag),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(userImage),
      const DeepCollectionEquality().hash(newsList),
      const DeepCollectionEquality().hash(workInfo),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $PreloadDataCompletedAppStateCopyWith<PreloadDataCompletedAppState>
      get copyWith => _$PreloadDataCompletedAppStateCopyWithImpl<
          PreloadDataCompletedAppState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)
        preloadDataCompleted,
    required TResult Function(bool inactive) activeProtection,
    required TResult Function() appInProgress,
    required TResult Function(String userName, NewsInfoDataModel newsList)
        notRegistered,
    required TResult Function(String message) errorConnection,
  }) {
    return preloadDataCompleted(isAuthed, isPinCode, languageTag, userName,
        userImage, newsList, workInfo, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
    TResult Function(String message)? errorConnection,
  }) {
    return preloadDataCompleted?.call(isAuthed, isPinCode, languageTag,
        userName, userImage, newsList, workInfo, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
    TResult Function(String message)? errorConnection,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(isAuthed, isPinCode, languageTag, userName,
          userImage, newsList, workInfo, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppState value) init,
    required TResult Function(PreloadDataCompletedAppState value)
        preloadDataCompleted,
    required TResult Function(ActiveProtectionState value) activeProtection,
    required TResult Function(AppInProgressState value) appInProgress,
    required TResult Function(NotRegisteredAppState value) notRegistered,
    required TResult Function(ErrorConnectionState value) errorConnection,
  }) {
    return preloadDataCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
  }) {
    return preloadDataCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(this);
    }
    return orElse();
  }
}

abstract class PreloadDataCompletedAppState implements AppState {
  factory PreloadDataCompletedAppState(
      bool isAuthed,
      bool isPinCode,
      String languageTag,
      String userName,
      Uint8List userImage,
      NewsInfoDataModel newsList,
      WorkInfoDataModel workInfo,
      String message) = _$PreloadDataCompletedAppState;

  bool get isAuthed;
  bool get isPinCode;
  String get languageTag;
  String get userName;
  Uint8List get userImage;
  NewsInfoDataModel get newsList;
  WorkInfoDataModel get workInfo;
  String get message;
  @JsonKey(ignore: true)
  $PreloadDataCompletedAppStateCopyWith<PreloadDataCompletedAppState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveProtectionStateCopyWith<$Res> {
  factory $ActiveProtectionStateCopyWith(ActiveProtectionState value,
          $Res Function(ActiveProtectionState) then) =
      _$ActiveProtectionStateCopyWithImpl<$Res>;
  $Res call({bool inactive});
}

/// @nodoc
class _$ActiveProtectionStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements $ActiveProtectionStateCopyWith<$Res> {
  _$ActiveProtectionStateCopyWithImpl(
      ActiveProtectionState _value, $Res Function(ActiveProtectionState) _then)
      : super(_value, (v) => _then(v as ActiveProtectionState));

  @override
  ActiveProtectionState get _value => super._value as ActiveProtectionState;

  @override
  $Res call({
    Object? inactive = freezed,
  }) {
    return _then(ActiveProtectionState(
      inactive: inactive == freezed
          ? _value.inactive
          : inactive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ActiveProtectionState implements ActiveProtectionState {
  _$ActiveProtectionState({required this.inactive});

  @override
  final bool inactive;

  @override
  String toString() {
    return 'AppState.activeProtection(inactive: $inactive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActiveProtectionState &&
            const DeepCollectionEquality().equals(other.inactive, inactive));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(inactive));

  @JsonKey(ignore: true)
  @override
  $ActiveProtectionStateCopyWith<ActiveProtectionState> get copyWith =>
      _$ActiveProtectionStateCopyWithImpl<ActiveProtectionState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)
        preloadDataCompleted,
    required TResult Function(bool inactive) activeProtection,
    required TResult Function() appInProgress,
    required TResult Function(String userName, NewsInfoDataModel newsList)
        notRegistered,
    required TResult Function(String message) errorConnection,
  }) {
    return activeProtection(inactive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
    TResult Function(String message)? errorConnection,
  }) {
    return activeProtection?.call(inactive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
    TResult Function(String message)? errorConnection,
    required TResult orElse(),
  }) {
    if (activeProtection != null) {
      return activeProtection(inactive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppState value) init,
    required TResult Function(PreloadDataCompletedAppState value)
        preloadDataCompleted,
    required TResult Function(ActiveProtectionState value) activeProtection,
    required TResult Function(AppInProgressState value) appInProgress,
    required TResult Function(NotRegisteredAppState value) notRegistered,
    required TResult Function(ErrorConnectionState value) errorConnection,
  }) {
    return activeProtection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
  }) {
    return activeProtection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
    required TResult orElse(),
  }) {
    if (activeProtection != null) {
      return activeProtection(this);
    }
    return orElse();
  }
}

abstract class ActiveProtectionState implements AppState {
  factory ActiveProtectionState({required bool inactive}) =
      _$ActiveProtectionState;

  bool get inactive;
  @JsonKey(ignore: true)
  $ActiveProtectionStateCopyWith<ActiveProtectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInProgressStateCopyWith<$Res> {
  factory $AppInProgressStateCopyWith(
          AppInProgressState value, $Res Function(AppInProgressState) then) =
      _$AppInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppInProgressStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements $AppInProgressStateCopyWith<$Res> {
  _$AppInProgressStateCopyWithImpl(
      AppInProgressState _value, $Res Function(AppInProgressState) _then)
      : super(_value, (v) => _then(v as AppInProgressState));

  @override
  AppInProgressState get _value => super._value as AppInProgressState;
}

/// @nodoc

class _$AppInProgressState implements AppInProgressState {
  _$AppInProgressState();

  @override
  String toString() {
    return 'AppState.appInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)
        preloadDataCompleted,
    required TResult Function(bool inactive) activeProtection,
    required TResult Function() appInProgress,
    required TResult Function(String userName, NewsInfoDataModel newsList)
        notRegistered,
    required TResult Function(String message) errorConnection,
  }) {
    return appInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
    TResult Function(String message)? errorConnection,
  }) {
    return appInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
    TResult Function(String message)? errorConnection,
    required TResult orElse(),
  }) {
    if (appInProgress != null) {
      return appInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppState value) init,
    required TResult Function(PreloadDataCompletedAppState value)
        preloadDataCompleted,
    required TResult Function(ActiveProtectionState value) activeProtection,
    required TResult Function(AppInProgressState value) appInProgress,
    required TResult Function(NotRegisteredAppState value) notRegistered,
    required TResult Function(ErrorConnectionState value) errorConnection,
  }) {
    return appInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
  }) {
    return appInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
    required TResult orElse(),
  }) {
    if (appInProgress != null) {
      return appInProgress(this);
    }
    return orElse();
  }
}

abstract class AppInProgressState implements AppState {
  factory AppInProgressState() = _$AppInProgressState;
}

/// @nodoc
abstract class $NotRegisteredAppStateCopyWith<$Res> {
  factory $NotRegisteredAppStateCopyWith(NotRegisteredAppState value,
          $Res Function(NotRegisteredAppState) then) =
      _$NotRegisteredAppStateCopyWithImpl<$Res>;
  $Res call({String userName, NewsInfoDataModel newsList});

  $NewsInfoDataModelCopyWith<$Res> get newsList;
}

/// @nodoc
class _$NotRegisteredAppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements $NotRegisteredAppStateCopyWith<$Res> {
  _$NotRegisteredAppStateCopyWithImpl(
      NotRegisteredAppState _value, $Res Function(NotRegisteredAppState) _then)
      : super(_value, (v) => _then(v as NotRegisteredAppState));

  @override
  NotRegisteredAppState get _value => super._value as NotRegisteredAppState;

  @override
  $Res call({
    Object? userName = freezed,
    Object? newsList = freezed,
  }) {
    return _then(NotRegisteredAppState(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      newsList: newsList == freezed
          ? _value.newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as NewsInfoDataModel,
    ));
  }

  @override
  $NewsInfoDataModelCopyWith<$Res> get newsList {
    return $NewsInfoDataModelCopyWith<$Res>(_value.newsList, (value) {
      return _then(_value.copyWith(newsList: value));
    });
  }
}

/// @nodoc

class _$NotRegisteredAppState implements NotRegisteredAppState {
  _$NotRegisteredAppState({required this.userName, required this.newsList});

  @override
  final String userName;
  @override
  final NewsInfoDataModel newsList;

  @override
  String toString() {
    return 'AppState.notRegistered(userName: $userName, newsList: $newsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotRegisteredAppState &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.newsList, newsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(newsList));

  @JsonKey(ignore: true)
  @override
  $NotRegisteredAppStateCopyWith<NotRegisteredAppState> get copyWith =>
      _$NotRegisteredAppStateCopyWithImpl<NotRegisteredAppState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)
        preloadDataCompleted,
    required TResult Function(bool inactive) activeProtection,
    required TResult Function() appInProgress,
    required TResult Function(String userName, NewsInfoDataModel newsList)
        notRegistered,
    required TResult Function(String message) errorConnection,
  }) {
    return notRegistered(userName, newsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
    TResult Function(String message)? errorConnection,
  }) {
    return notRegistered?.call(userName, newsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
    TResult Function(String message)? errorConnection,
    required TResult orElse(),
  }) {
    if (notRegistered != null) {
      return notRegistered(userName, newsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppState value) init,
    required TResult Function(PreloadDataCompletedAppState value)
        preloadDataCompleted,
    required TResult Function(ActiveProtectionState value) activeProtection,
    required TResult Function(AppInProgressState value) appInProgress,
    required TResult Function(NotRegisteredAppState value) notRegistered,
    required TResult Function(ErrorConnectionState value) errorConnection,
  }) {
    return notRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
  }) {
    return notRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
    required TResult orElse(),
  }) {
    if (notRegistered != null) {
      return notRegistered(this);
    }
    return orElse();
  }
}

abstract class NotRegisteredAppState implements AppState {
  factory NotRegisteredAppState(
      {required String userName,
      required NewsInfoDataModel newsList}) = _$NotRegisteredAppState;

  String get userName;
  NewsInfoDataModel get newsList;
  @JsonKey(ignore: true)
  $NotRegisteredAppStateCopyWith<NotRegisteredAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorConnectionStateCopyWith<$Res> {
  factory $ErrorConnectionStateCopyWith(ErrorConnectionState value,
          $Res Function(ErrorConnectionState) then) =
      _$ErrorConnectionStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorConnectionStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements $ErrorConnectionStateCopyWith<$Res> {
  _$ErrorConnectionStateCopyWithImpl(
      ErrorConnectionState _value, $Res Function(ErrorConnectionState) _then)
      : super(_value, (v) => _then(v as ErrorConnectionState));

  @override
  ErrorConnectionState get _value => super._value as ErrorConnectionState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorConnectionState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorConnectionState implements ErrorConnectionState {
  _$ErrorConnectionState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppState.errorConnection(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorConnectionState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ErrorConnectionStateCopyWith<ErrorConnectionState> get copyWith =>
      _$ErrorConnectionStateCopyWithImpl<ErrorConnectionState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)
        preloadDataCompleted,
    required TResult Function(bool inactive) activeProtection,
    required TResult Function() appInProgress,
    required TResult Function(String userName, NewsInfoDataModel newsList)
        notRegistered,
    required TResult Function(String message) errorConnection,
  }) {
    return errorConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
    TResult Function(String message)? errorConnection,
  }) {
    return errorConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            bool isAuthed,
            bool isPinCode,
            String languageTag,
            String userName,
            Uint8List userImage,
            NewsInfoDataModel newsList,
            WorkInfoDataModel workInfo,
            String message)?
        preloadDataCompleted,
    TResult Function(bool inactive)? activeProtection,
    TResult Function()? appInProgress,
    TResult Function(String userName, NewsInfoDataModel newsList)?
        notRegistered,
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
    required TResult Function(InitAppState value) init,
    required TResult Function(PreloadDataCompletedAppState value)
        preloadDataCompleted,
    required TResult Function(ActiveProtectionState value) activeProtection,
    required TResult Function(AppInProgressState value) appInProgress,
    required TResult Function(NotRegisteredAppState value) notRegistered,
    required TResult Function(ErrorConnectionState value) errorConnection,
  }) {
    return errorConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
  }) {
    return errorConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppState value)? init,
    TResult Function(PreloadDataCompletedAppState value)? preloadDataCompleted,
    TResult Function(ActiveProtectionState value)? activeProtection,
    TResult Function(AppInProgressState value)? appInProgress,
    TResult Function(NotRegisteredAppState value)? notRegistered,
    TResult Function(ErrorConnectionState value)? errorConnection,
    required TResult orElse(),
  }) {
    if (errorConnection != null) {
      return errorConnection(this);
    }
    return orElse();
  }
}

abstract class ErrorConnectionState implements AppState {
  factory ErrorConnectionState({required String message}) =
      _$ErrorConnectionState;

  String get message;
  @JsonKey(ignore: true)
  $ErrorConnectionStateCopyWith<ErrorConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}
