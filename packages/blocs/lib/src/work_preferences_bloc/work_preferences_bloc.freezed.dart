// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work_preferences_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkPreferencesEventTearOff {
  const _$WorkPreferencesEventTearOff();

  UpdateWorkPreferencesProfileDataEvent updateWorkPreferencesProfileData(
      String desiredSalary,
      String desiredFunction,
      String maxTravelTimeMinutes) {
    return UpdateWorkPreferencesProfileDataEvent(
      desiredSalary,
      desiredFunction,
      maxTravelTimeMinutes,
    );
  }
}

/// @nodoc
const $WorkPreferencesEvent = _$WorkPreferencesEventTearOff();

/// @nodoc
mixin _$WorkPreferencesEvent {
  String get desiredSalary => throw _privateConstructorUsedError;
  String get desiredFunction => throw _privateConstructorUsedError;
  String get maxTravelTimeMinutes => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String desiredSalary, String desiredFunction,
            String maxTravelTimeMinutes)
        updateWorkPreferencesProfileData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String desiredSalary, String desiredFunction,
            String maxTravelTimeMinutes)?
        updateWorkPreferencesProfileData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String desiredSalary, String desiredFunction,
            String maxTravelTimeMinutes)?
        updateWorkPreferencesProfileData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateWorkPreferencesProfileDataEvent value)
        updateWorkPreferencesProfileData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateWorkPreferencesProfileDataEvent value)?
        updateWorkPreferencesProfileData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateWorkPreferencesProfileDataEvent value)?
        updateWorkPreferencesProfileData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkPreferencesEventCopyWith<WorkPreferencesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkPreferencesEventCopyWith<$Res> {
  factory $WorkPreferencesEventCopyWith(WorkPreferencesEvent value,
          $Res Function(WorkPreferencesEvent) then) =
      _$WorkPreferencesEventCopyWithImpl<$Res>;
  $Res call(
      {String desiredSalary,
      String desiredFunction,
      String maxTravelTimeMinutes});
}

/// @nodoc
class _$WorkPreferencesEventCopyWithImpl<$Res>
    implements $WorkPreferencesEventCopyWith<$Res> {
  _$WorkPreferencesEventCopyWithImpl(this._value, this._then);

  final WorkPreferencesEvent _value;
  // ignore: unused_field
  final $Res Function(WorkPreferencesEvent) _then;

  @override
  $Res call({
    Object? desiredSalary = freezed,
    Object? desiredFunction = freezed,
    Object? maxTravelTimeMinutes = freezed,
  }) {
    return _then(_value.copyWith(
      desiredSalary: desiredSalary == freezed
          ? _value.desiredSalary
          : desiredSalary // ignore: cast_nullable_to_non_nullable
              as String,
      desiredFunction: desiredFunction == freezed
          ? _value.desiredFunction
          : desiredFunction // ignore: cast_nullable_to_non_nullable
              as String,
      maxTravelTimeMinutes: maxTravelTimeMinutes == freezed
          ? _value.maxTravelTimeMinutes
          : maxTravelTimeMinutes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $UpdateWorkPreferencesProfileDataEventCopyWith<$Res>
    implements $WorkPreferencesEventCopyWith<$Res> {
  factory $UpdateWorkPreferencesProfileDataEventCopyWith(
          UpdateWorkPreferencesProfileDataEvent value,
          $Res Function(UpdateWorkPreferencesProfileDataEvent) then) =
      _$UpdateWorkPreferencesProfileDataEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {String desiredSalary,
      String desiredFunction,
      String maxTravelTimeMinutes});
}

/// @nodoc
class _$UpdateWorkPreferencesProfileDataEventCopyWithImpl<$Res>
    extends _$WorkPreferencesEventCopyWithImpl<$Res>
    implements $UpdateWorkPreferencesProfileDataEventCopyWith<$Res> {
  _$UpdateWorkPreferencesProfileDataEventCopyWithImpl(
      UpdateWorkPreferencesProfileDataEvent _value,
      $Res Function(UpdateWorkPreferencesProfileDataEvent) _then)
      : super(_value, (v) => _then(v as UpdateWorkPreferencesProfileDataEvent));

  @override
  UpdateWorkPreferencesProfileDataEvent get _value =>
      super._value as UpdateWorkPreferencesProfileDataEvent;

  @override
  $Res call({
    Object? desiredSalary = freezed,
    Object? desiredFunction = freezed,
    Object? maxTravelTimeMinutes = freezed,
  }) {
    return _then(UpdateWorkPreferencesProfileDataEvent(
      desiredSalary == freezed
          ? _value.desiredSalary
          : desiredSalary // ignore: cast_nullable_to_non_nullable
              as String,
      desiredFunction == freezed
          ? _value.desiredFunction
          : desiredFunction // ignore: cast_nullable_to_non_nullable
              as String,
      maxTravelTimeMinutes == freezed
          ? _value.maxTravelTimeMinutes
          : maxTravelTimeMinutes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateWorkPreferencesProfileDataEvent
    implements UpdateWorkPreferencesProfileDataEvent {
  const _$UpdateWorkPreferencesProfileDataEvent(
      this.desiredSalary, this.desiredFunction, this.maxTravelTimeMinutes);

  @override
  final String desiredSalary;
  @override
  final String desiredFunction;
  @override
  final String maxTravelTimeMinutes;

  @override
  String toString() {
    return 'WorkPreferencesEvent.updateWorkPreferencesProfileData(desiredSalary: $desiredSalary, desiredFunction: $desiredFunction, maxTravelTimeMinutes: $maxTravelTimeMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateWorkPreferencesProfileDataEvent &&
            const DeepCollectionEquality()
                .equals(other.desiredSalary, desiredSalary) &&
            const DeepCollectionEquality()
                .equals(other.desiredFunction, desiredFunction) &&
            const DeepCollectionEquality()
                .equals(other.maxTravelTimeMinutes, maxTravelTimeMinutes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(desiredSalary),
      const DeepCollectionEquality().hash(desiredFunction),
      const DeepCollectionEquality().hash(maxTravelTimeMinutes));

  @JsonKey(ignore: true)
  @override
  $UpdateWorkPreferencesProfileDataEventCopyWith<
          UpdateWorkPreferencesProfileDataEvent>
      get copyWith => _$UpdateWorkPreferencesProfileDataEventCopyWithImpl<
          UpdateWorkPreferencesProfileDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String desiredSalary, String desiredFunction,
            String maxTravelTimeMinutes)
        updateWorkPreferencesProfileData,
  }) {
    return updateWorkPreferencesProfileData(
        desiredSalary, desiredFunction, maxTravelTimeMinutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String desiredSalary, String desiredFunction,
            String maxTravelTimeMinutes)?
        updateWorkPreferencesProfileData,
  }) {
    return updateWorkPreferencesProfileData?.call(
        desiredSalary, desiredFunction, maxTravelTimeMinutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String desiredSalary, String desiredFunction,
            String maxTravelTimeMinutes)?
        updateWorkPreferencesProfileData,
    required TResult orElse(),
  }) {
    if (updateWorkPreferencesProfileData != null) {
      return updateWorkPreferencesProfileData(
          desiredSalary, desiredFunction, maxTravelTimeMinutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateWorkPreferencesProfileDataEvent value)
        updateWorkPreferencesProfileData,
  }) {
    return updateWorkPreferencesProfileData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateWorkPreferencesProfileDataEvent value)?
        updateWorkPreferencesProfileData,
  }) {
    return updateWorkPreferencesProfileData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateWorkPreferencesProfileDataEvent value)?
        updateWorkPreferencesProfileData,
    required TResult orElse(),
  }) {
    if (updateWorkPreferencesProfileData != null) {
      return updateWorkPreferencesProfileData(this);
    }
    return orElse();
  }
}

abstract class UpdateWorkPreferencesProfileDataEvent
    implements WorkPreferencesEvent {
  const factory UpdateWorkPreferencesProfileDataEvent(
      String desiredSalary,
      String desiredFunction,
      String maxTravelTimeMinutes) = _$UpdateWorkPreferencesProfileDataEvent;

  @override
  String get desiredSalary;
  @override
  String get desiredFunction;
  @override
  String get maxTravelTimeMinutes;
  @override
  @JsonKey(ignore: true)
  $UpdateWorkPreferencesProfileDataEventCopyWith<
          UpdateWorkPreferencesProfileDataEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$WorkPreferencesStateTearOff {
  const _$WorkPreferencesStateTearOff();

  LoadingWorkPreferencesState loading() {
    return const LoadingWorkPreferencesState();
  }

  WorkPreferencesSuccessState saveInformationSuccess(
      {required MessagesInfoDataModel model}) {
    return WorkPreferencesSuccessState(
      model: model,
    );
  }

  WorkPreferencesFailureState saveInformationlogInFailure(
      {required MessagesInfoDataModel model}) {
    return WorkPreferencesFailureState(
      model: model,
    );
  }
}

/// @nodoc
const $WorkPreferencesState = _$WorkPreferencesStateTearOff();

/// @nodoc
mixin _$WorkPreferencesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationSuccess,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationlogInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MessagesInfoDataModel model)? saveInformationSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationlogInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MessagesInfoDataModel model)? saveInformationSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationlogInFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingWorkPreferencesState value) loading,
    required TResult Function(WorkPreferencesSuccessState value)
        saveInformationSuccess,
    required TResult Function(WorkPreferencesFailureState value)
        saveInformationlogInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingWorkPreferencesState value)? loading,
    TResult Function(WorkPreferencesSuccessState value)? saveInformationSuccess,
    TResult Function(WorkPreferencesFailureState value)?
        saveInformationlogInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingWorkPreferencesState value)? loading,
    TResult Function(WorkPreferencesSuccessState value)? saveInformationSuccess,
    TResult Function(WorkPreferencesFailureState value)?
        saveInformationlogInFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkPreferencesStateCopyWith<$Res> {
  factory $WorkPreferencesStateCopyWith(WorkPreferencesState value,
          $Res Function(WorkPreferencesState) then) =
      _$WorkPreferencesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkPreferencesStateCopyWithImpl<$Res>
    implements $WorkPreferencesStateCopyWith<$Res> {
  _$WorkPreferencesStateCopyWithImpl(this._value, this._then);

  final WorkPreferencesState _value;
  // ignore: unused_field
  final $Res Function(WorkPreferencesState) _then;
}

/// @nodoc
abstract class $LoadingWorkPreferencesStateCopyWith<$Res> {
  factory $LoadingWorkPreferencesStateCopyWith(
          LoadingWorkPreferencesState value,
          $Res Function(LoadingWorkPreferencesState) then) =
      _$LoadingWorkPreferencesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingWorkPreferencesStateCopyWithImpl<$Res>
    extends _$WorkPreferencesStateCopyWithImpl<$Res>
    implements $LoadingWorkPreferencesStateCopyWith<$Res> {
  _$LoadingWorkPreferencesStateCopyWithImpl(LoadingWorkPreferencesState _value,
      $Res Function(LoadingWorkPreferencesState) _then)
      : super(_value, (v) => _then(v as LoadingWorkPreferencesState));

  @override
  LoadingWorkPreferencesState get _value =>
      super._value as LoadingWorkPreferencesState;
}

/// @nodoc

class _$LoadingWorkPreferencesState implements LoadingWorkPreferencesState {
  const _$LoadingWorkPreferencesState();

  @override
  String toString() {
    return 'WorkPreferencesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingWorkPreferencesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationSuccess,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationlogInFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MessagesInfoDataModel model)? saveInformationSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationlogInFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MessagesInfoDataModel model)? saveInformationSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationlogInFailure,
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
    required TResult Function(LoadingWorkPreferencesState value) loading,
    required TResult Function(WorkPreferencesSuccessState value)
        saveInformationSuccess,
    required TResult Function(WorkPreferencesFailureState value)
        saveInformationlogInFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingWorkPreferencesState value)? loading,
    TResult Function(WorkPreferencesSuccessState value)? saveInformationSuccess,
    TResult Function(WorkPreferencesFailureState value)?
        saveInformationlogInFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingWorkPreferencesState value)? loading,
    TResult Function(WorkPreferencesSuccessState value)? saveInformationSuccess,
    TResult Function(WorkPreferencesFailureState value)?
        saveInformationlogInFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingWorkPreferencesState implements WorkPreferencesState {
  const factory LoadingWorkPreferencesState() = _$LoadingWorkPreferencesState;
}

/// @nodoc
abstract class $WorkPreferencesSuccessStateCopyWith<$Res> {
  factory $WorkPreferencesSuccessStateCopyWith(
          WorkPreferencesSuccessState value,
          $Res Function(WorkPreferencesSuccessState) then) =
      _$WorkPreferencesSuccessStateCopyWithImpl<$Res>;
  $Res call({MessagesInfoDataModel model});

  $MessagesInfoDataModelCopyWith<$Res> get model;
}

/// @nodoc
class _$WorkPreferencesSuccessStateCopyWithImpl<$Res>
    extends _$WorkPreferencesStateCopyWithImpl<$Res>
    implements $WorkPreferencesSuccessStateCopyWith<$Res> {
  _$WorkPreferencesSuccessStateCopyWithImpl(WorkPreferencesSuccessState _value,
      $Res Function(WorkPreferencesSuccessState) _then)
      : super(_value, (v) => _then(v as WorkPreferencesSuccessState));

  @override
  WorkPreferencesSuccessState get _value =>
      super._value as WorkPreferencesSuccessState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(WorkPreferencesSuccessState(
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

class _$WorkPreferencesSuccessState implements WorkPreferencesSuccessState {
  const _$WorkPreferencesSuccessState({required this.model});

  @override
  final MessagesInfoDataModel model;

  @override
  String toString() {
    return 'WorkPreferencesState.saveInformationSuccess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkPreferencesSuccessState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  $WorkPreferencesSuccessStateCopyWith<WorkPreferencesSuccessState>
      get copyWith => _$WorkPreferencesSuccessStateCopyWithImpl<
          WorkPreferencesSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationSuccess,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationlogInFailure,
  }) {
    return saveInformationSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MessagesInfoDataModel model)? saveInformationSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationlogInFailure,
  }) {
    return saveInformationSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MessagesInfoDataModel model)? saveInformationSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationlogInFailure,
    required TResult orElse(),
  }) {
    if (saveInformationSuccess != null) {
      return saveInformationSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingWorkPreferencesState value) loading,
    required TResult Function(WorkPreferencesSuccessState value)
        saveInformationSuccess,
    required TResult Function(WorkPreferencesFailureState value)
        saveInformationlogInFailure,
  }) {
    return saveInformationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingWorkPreferencesState value)? loading,
    TResult Function(WorkPreferencesSuccessState value)? saveInformationSuccess,
    TResult Function(WorkPreferencesFailureState value)?
        saveInformationlogInFailure,
  }) {
    return saveInformationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingWorkPreferencesState value)? loading,
    TResult Function(WorkPreferencesSuccessState value)? saveInformationSuccess,
    TResult Function(WorkPreferencesFailureState value)?
        saveInformationlogInFailure,
    required TResult orElse(),
  }) {
    if (saveInformationSuccess != null) {
      return saveInformationSuccess(this);
    }
    return orElse();
  }
}

abstract class WorkPreferencesSuccessState implements WorkPreferencesState {
  const factory WorkPreferencesSuccessState(
      {required MessagesInfoDataModel model}) = _$WorkPreferencesSuccessState;

  MessagesInfoDataModel get model;
  @JsonKey(ignore: true)
  $WorkPreferencesSuccessStateCopyWith<WorkPreferencesSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkPreferencesFailureStateCopyWith<$Res> {
  factory $WorkPreferencesFailureStateCopyWith(
          WorkPreferencesFailureState value,
          $Res Function(WorkPreferencesFailureState) then) =
      _$WorkPreferencesFailureStateCopyWithImpl<$Res>;
  $Res call({MessagesInfoDataModel model});

  $MessagesInfoDataModelCopyWith<$Res> get model;
}

/// @nodoc
class _$WorkPreferencesFailureStateCopyWithImpl<$Res>
    extends _$WorkPreferencesStateCopyWithImpl<$Res>
    implements $WorkPreferencesFailureStateCopyWith<$Res> {
  _$WorkPreferencesFailureStateCopyWithImpl(WorkPreferencesFailureState _value,
      $Res Function(WorkPreferencesFailureState) _then)
      : super(_value, (v) => _then(v as WorkPreferencesFailureState));

  @override
  WorkPreferencesFailureState get _value =>
      super._value as WorkPreferencesFailureState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(WorkPreferencesFailureState(
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

class _$WorkPreferencesFailureState implements WorkPreferencesFailureState {
  const _$WorkPreferencesFailureState({required this.model});

  @override
  final MessagesInfoDataModel model;

  @override
  String toString() {
    return 'WorkPreferencesState.saveInformationlogInFailure(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkPreferencesFailureState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  $WorkPreferencesFailureStateCopyWith<WorkPreferencesFailureState>
      get copyWith => _$WorkPreferencesFailureStateCopyWithImpl<
          WorkPreferencesFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationSuccess,
    required TResult Function(MessagesInfoDataModel model)
        saveInformationlogInFailure,
  }) {
    return saveInformationlogInFailure(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MessagesInfoDataModel model)? saveInformationSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationlogInFailure,
  }) {
    return saveInformationlogInFailure?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MessagesInfoDataModel model)? saveInformationSuccess,
    TResult Function(MessagesInfoDataModel model)? saveInformationlogInFailure,
    required TResult orElse(),
  }) {
    if (saveInformationlogInFailure != null) {
      return saveInformationlogInFailure(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingWorkPreferencesState value) loading,
    required TResult Function(WorkPreferencesSuccessState value)
        saveInformationSuccess,
    required TResult Function(WorkPreferencesFailureState value)
        saveInformationlogInFailure,
  }) {
    return saveInformationlogInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingWorkPreferencesState value)? loading,
    TResult Function(WorkPreferencesSuccessState value)? saveInformationSuccess,
    TResult Function(WorkPreferencesFailureState value)?
        saveInformationlogInFailure,
  }) {
    return saveInformationlogInFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingWorkPreferencesState value)? loading,
    TResult Function(WorkPreferencesSuccessState value)? saveInformationSuccess,
    TResult Function(WorkPreferencesFailureState value)?
        saveInformationlogInFailure,
    required TResult orElse(),
  }) {
    if (saveInformationlogInFailure != null) {
      return saveInformationlogInFailure(this);
    }
    return orElse();
  }
}

abstract class WorkPreferencesFailureState implements WorkPreferencesState {
  const factory WorkPreferencesFailureState(
      {required MessagesInfoDataModel model}) = _$WorkPreferencesFailureState;

  MessagesInfoDataModel get model;
  @JsonKey(ignore: true)
  $WorkPreferencesFailureStateCopyWith<WorkPreferencesFailureState>
      get copyWith => throw _privateConstructorUsedError;
}
