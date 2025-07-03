// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LanguageEventTearOff {
  const _$LanguageEventTearOff();

  LoadingLanguageEvent loadingLanguage() {
    return LoadingLanguageEvent();
  }

  ChangeTheLanguageEvent changeTheLanguage(String language) {
    return ChangeTheLanguageEvent(
      language,
    );
  }
}

/// @nodoc
const $LanguageEvent = _$LanguageEventTearOff();

/// @nodoc
mixin _$LanguageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingLanguage,
    required TResult Function(String language) changeTheLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingLanguage,
    TResult Function(String language)? changeTheLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingLanguage,
    TResult Function(String language)? changeTheLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingLanguageEvent value) loadingLanguage,
    required TResult Function(ChangeTheLanguageEvent value) changeTheLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingLanguageEvent value)? loadingLanguage,
    TResult Function(ChangeTheLanguageEvent value)? changeTheLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingLanguageEvent value)? loadingLanguage,
    TResult Function(ChangeTheLanguageEvent value)? changeTheLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LanguageEventCopyWithImpl<$Res>
    implements $LanguageEventCopyWith<$Res> {
  _$LanguageEventCopyWithImpl(this._value, this._then);

  final LanguageEvent _value;
  // ignore: unused_field
  final $Res Function(LanguageEvent) _then;
}

/// @nodoc
abstract class $LoadingLanguageEventCopyWith<$Res> {
  factory $LoadingLanguageEventCopyWith(LoadingLanguageEvent value,
          $Res Function(LoadingLanguageEvent) then) =
      _$LoadingLanguageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingLanguageEventCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res>
    implements $LoadingLanguageEventCopyWith<$Res> {
  _$LoadingLanguageEventCopyWithImpl(
      LoadingLanguageEvent _value, $Res Function(LoadingLanguageEvent) _then)
      : super(_value, (v) => _then(v as LoadingLanguageEvent));

  @override
  LoadingLanguageEvent get _value => super._value as LoadingLanguageEvent;
}

/// @nodoc

class _$LoadingLanguageEvent implements LoadingLanguageEvent {
  _$LoadingLanguageEvent();

  @override
  String toString() {
    return 'LanguageEvent.loadingLanguage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingLanguageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingLanguage,
    required TResult Function(String language) changeTheLanguage,
  }) {
    return loadingLanguage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingLanguage,
    TResult Function(String language)? changeTheLanguage,
  }) {
    return loadingLanguage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingLanguage,
    TResult Function(String language)? changeTheLanguage,
    required TResult orElse(),
  }) {
    if (loadingLanguage != null) {
      return loadingLanguage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingLanguageEvent value) loadingLanguage,
    required TResult Function(ChangeTheLanguageEvent value) changeTheLanguage,
  }) {
    return loadingLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingLanguageEvent value)? loadingLanguage,
    TResult Function(ChangeTheLanguageEvent value)? changeTheLanguage,
  }) {
    return loadingLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingLanguageEvent value)? loadingLanguage,
    TResult Function(ChangeTheLanguageEvent value)? changeTheLanguage,
    required TResult orElse(),
  }) {
    if (loadingLanguage != null) {
      return loadingLanguage(this);
    }
    return orElse();
  }
}

abstract class LoadingLanguageEvent implements LanguageEvent {
  factory LoadingLanguageEvent() = _$LoadingLanguageEvent;
}

/// @nodoc
abstract class $ChangeTheLanguageEventCopyWith<$Res> {
  factory $ChangeTheLanguageEventCopyWith(ChangeTheLanguageEvent value,
          $Res Function(ChangeTheLanguageEvent) then) =
      _$ChangeTheLanguageEventCopyWithImpl<$Res>;
  $Res call({String language});
}

/// @nodoc
class _$ChangeTheLanguageEventCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res>
    implements $ChangeTheLanguageEventCopyWith<$Res> {
  _$ChangeTheLanguageEventCopyWithImpl(ChangeTheLanguageEvent _value,
      $Res Function(ChangeTheLanguageEvent) _then)
      : super(_value, (v) => _then(v as ChangeTheLanguageEvent));

  @override
  ChangeTheLanguageEvent get _value => super._value as ChangeTheLanguageEvent;

  @override
  $Res call({
    Object? language = freezed,
  }) {
    return _then(ChangeTheLanguageEvent(
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeTheLanguageEvent implements ChangeTheLanguageEvent {
  _$ChangeTheLanguageEvent(this.language);

  @override
  final String language;

  @override
  String toString() {
    return 'LanguageEvent.changeTheLanguage(language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeTheLanguageEvent &&
            const DeepCollectionEquality().equals(other.language, language));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(language));

  @JsonKey(ignore: true)
  @override
  $ChangeTheLanguageEventCopyWith<ChangeTheLanguageEvent> get copyWith =>
      _$ChangeTheLanguageEventCopyWithImpl<ChangeTheLanguageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingLanguage,
    required TResult Function(String language) changeTheLanguage,
  }) {
    return changeTheLanguage(language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingLanguage,
    TResult Function(String language)? changeTheLanguage,
  }) {
    return changeTheLanguage?.call(language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingLanguage,
    TResult Function(String language)? changeTheLanguage,
    required TResult orElse(),
  }) {
    if (changeTheLanguage != null) {
      return changeTheLanguage(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingLanguageEvent value) loadingLanguage,
    required TResult Function(ChangeTheLanguageEvent value) changeTheLanguage,
  }) {
    return changeTheLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingLanguageEvent value)? loadingLanguage,
    TResult Function(ChangeTheLanguageEvent value)? changeTheLanguage,
  }) {
    return changeTheLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingLanguageEvent value)? loadingLanguage,
    TResult Function(ChangeTheLanguageEvent value)? changeTheLanguage,
    required TResult orElse(),
  }) {
    if (changeTheLanguage != null) {
      return changeTheLanguage(this);
    }
    return orElse();
  }
}

abstract class ChangeTheLanguageEvent implements LanguageEvent {
  factory ChangeTheLanguageEvent(String language) = _$ChangeTheLanguageEvent;

  String get language;
  @JsonKey(ignore: true)
  $ChangeTheLanguageEventCopyWith<ChangeTheLanguageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LanguageStateTearOff {
  const _$LanguageStateTearOff();

  LanguageLoadingState loading() {
    return const LanguageLoadingState();
  }

  ChangeTheLanguageState changeTheLanguage(
      {required String language, required String languageTag}) {
    return ChangeTheLanguageState(
      language: language,
      languageTag: languageTag,
    );
  }

  LanguageErrorState error({required String message}) {
    return LanguageErrorState(
      message: message,
    );
  }
}

/// @nodoc
const $LanguageState = _$LanguageStateTearOff();

/// @nodoc
mixin _$LanguageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String language, String languageTag)
        changeTheLanguage,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String language, String languageTag)? changeTheLanguage,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String language, String languageTag)? changeTheLanguage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LanguageLoadingState value) loading,
    required TResult Function(ChangeTheLanguageState value) changeTheLanguage,
    required TResult Function(LanguageErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LanguageLoadingState value)? loading,
    TResult Function(ChangeTheLanguageState value)? changeTheLanguage,
    TResult Function(LanguageErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageLoadingState value)? loading,
    TResult Function(ChangeTheLanguageState value)? changeTheLanguage,
    TResult Function(LanguageErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  final LanguageState _value;
  // ignore: unused_field
  final $Res Function(LanguageState) _then;
}

/// @nodoc
abstract class $LanguageLoadingStateCopyWith<$Res> {
  factory $LanguageLoadingStateCopyWith(LanguageLoadingState value,
          $Res Function(LanguageLoadingState) then) =
      _$LanguageLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LanguageLoadingStateCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res>
    implements $LanguageLoadingStateCopyWith<$Res> {
  _$LanguageLoadingStateCopyWithImpl(
      LanguageLoadingState _value, $Res Function(LanguageLoadingState) _then)
      : super(_value, (v) => _then(v as LanguageLoadingState));

  @override
  LanguageLoadingState get _value => super._value as LanguageLoadingState;
}

/// @nodoc

class _$LanguageLoadingState implements LanguageLoadingState {
  const _$LanguageLoadingState();

  @override
  String toString() {
    return 'LanguageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LanguageLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String language, String languageTag)
        changeTheLanguage,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String language, String languageTag)? changeTheLanguage,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String language, String languageTag)? changeTheLanguage,
    TResult Function(String message)? error,
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
    required TResult Function(LanguageLoadingState value) loading,
    required TResult Function(ChangeTheLanguageState value) changeTheLanguage,
    required TResult Function(LanguageErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LanguageLoadingState value)? loading,
    TResult Function(ChangeTheLanguageState value)? changeTheLanguage,
    TResult Function(LanguageErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageLoadingState value)? loading,
    TResult Function(ChangeTheLanguageState value)? changeTheLanguage,
    TResult Function(LanguageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LanguageLoadingState implements LanguageState {
  const factory LanguageLoadingState() = _$LanguageLoadingState;
}

/// @nodoc
abstract class $ChangeTheLanguageStateCopyWith<$Res> {
  factory $ChangeTheLanguageStateCopyWith(ChangeTheLanguageState value,
          $Res Function(ChangeTheLanguageState) then) =
      _$ChangeTheLanguageStateCopyWithImpl<$Res>;
  $Res call({String language, String languageTag});
}

/// @nodoc
class _$ChangeTheLanguageStateCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res>
    implements $ChangeTheLanguageStateCopyWith<$Res> {
  _$ChangeTheLanguageStateCopyWithImpl(ChangeTheLanguageState _value,
      $Res Function(ChangeTheLanguageState) _then)
      : super(_value, (v) => _then(v as ChangeTheLanguageState));

  @override
  ChangeTheLanguageState get _value => super._value as ChangeTheLanguageState;

  @override
  $Res call({
    Object? language = freezed,
    Object? languageTag = freezed,
  }) {
    return _then(ChangeTheLanguageState(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      languageTag: languageTag == freezed
          ? _value.languageTag
          : languageTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeTheLanguageState implements ChangeTheLanguageState {
  const _$ChangeTheLanguageState(
      {required this.language, required this.languageTag});

  @override
  final String language;
  @override
  final String languageTag;

  @override
  String toString() {
    return 'LanguageState.changeTheLanguage(language: $language, languageTag: $languageTag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeTheLanguageState &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other.languageTag, languageTag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(languageTag));

  @JsonKey(ignore: true)
  @override
  $ChangeTheLanguageStateCopyWith<ChangeTheLanguageState> get copyWith =>
      _$ChangeTheLanguageStateCopyWithImpl<ChangeTheLanguageState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String language, String languageTag)
        changeTheLanguage,
    required TResult Function(String message) error,
  }) {
    return changeTheLanguage(language, languageTag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String language, String languageTag)? changeTheLanguage,
    TResult Function(String message)? error,
  }) {
    return changeTheLanguage?.call(language, languageTag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String language, String languageTag)? changeTheLanguage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (changeTheLanguage != null) {
      return changeTheLanguage(language, languageTag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LanguageLoadingState value) loading,
    required TResult Function(ChangeTheLanguageState value) changeTheLanguage,
    required TResult Function(LanguageErrorState value) error,
  }) {
    return changeTheLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LanguageLoadingState value)? loading,
    TResult Function(ChangeTheLanguageState value)? changeTheLanguage,
    TResult Function(LanguageErrorState value)? error,
  }) {
    return changeTheLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageLoadingState value)? loading,
    TResult Function(ChangeTheLanguageState value)? changeTheLanguage,
    TResult Function(LanguageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (changeTheLanguage != null) {
      return changeTheLanguage(this);
    }
    return orElse();
  }
}

abstract class ChangeTheLanguageState implements LanguageState {
  const factory ChangeTheLanguageState(
      {required String language,
      required String languageTag}) = _$ChangeTheLanguageState;

  String get language;
  String get languageTag;
  @JsonKey(ignore: true)
  $ChangeTheLanguageStateCopyWith<ChangeTheLanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageErrorStateCopyWith<$Res> {
  factory $LanguageErrorStateCopyWith(
          LanguageErrorState value, $Res Function(LanguageErrorState) then) =
      _$LanguageErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$LanguageErrorStateCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res>
    implements $LanguageErrorStateCopyWith<$Res> {
  _$LanguageErrorStateCopyWithImpl(
      LanguageErrorState _value, $Res Function(LanguageErrorState) _then)
      : super(_value, (v) => _then(v as LanguageErrorState));

  @override
  LanguageErrorState get _value => super._value as LanguageErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LanguageErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LanguageErrorState implements LanguageErrorState {
  const _$LanguageErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LanguageState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LanguageErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $LanguageErrorStateCopyWith<LanguageErrorState> get copyWith =>
      _$LanguageErrorStateCopyWithImpl<LanguageErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String language, String languageTag)
        changeTheLanguage,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String language, String languageTag)? changeTheLanguage,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String language, String languageTag)? changeTheLanguage,
    TResult Function(String message)? error,
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
    required TResult Function(LanguageLoadingState value) loading,
    required TResult Function(ChangeTheLanguageState value) changeTheLanguage,
    required TResult Function(LanguageErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LanguageLoadingState value)? loading,
    TResult Function(ChangeTheLanguageState value)? changeTheLanguage,
    TResult Function(LanguageErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageLoadingState value)? loading,
    TResult Function(ChangeTheLanguageState value)? changeTheLanguage,
    TResult Function(LanguageErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LanguageErrorState implements LanguageState {
  const factory LanguageErrorState({required String message}) =
      _$LanguageErrorState;

  String get message;
  @JsonKey(ignore: true)
  $LanguageErrorStateCopyWith<LanguageErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
