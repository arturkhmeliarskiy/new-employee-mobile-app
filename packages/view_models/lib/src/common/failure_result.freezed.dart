// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureResultTearOff {
  const _$FailureResultTearOff();

  _FailureResult call(
      {required FailureReasons reason,
      required String debugMessage,
      ApiResponseFailureModel? model}) {
    return _FailureResult(
      reason: reason,
      debugMessage: debugMessage,
      model: model,
    );
  }
}

/// @nodoc
const $FailureResult = _$FailureResultTearOff();

/// @nodoc
mixin _$FailureResult {
  FailureReasons get reason => throw _privateConstructorUsedError;
  String get debugMessage => throw _privateConstructorUsedError;
  ApiResponseFailureModel? get model => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureResultCopyWith<FailureResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureResultCopyWith<$Res> {
  factory $FailureResultCopyWith(
          FailureResult value, $Res Function(FailureResult) then) =
      _$FailureResultCopyWithImpl<$Res>;
  $Res call(
      {FailureReasons reason,
      String debugMessage,
      ApiResponseFailureModel? model});
}

/// @nodoc
class _$FailureResultCopyWithImpl<$Res>
    implements $FailureResultCopyWith<$Res> {
  _$FailureResultCopyWithImpl(this._value, this._then);

  final FailureResult _value;
  // ignore: unused_field
  final $Res Function(FailureResult) _then;

  @override
  $Res call({
    Object? reason = freezed,
    Object? debugMessage = freezed,
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as FailureReasons,
      debugMessage: debugMessage == freezed
          ? _value.debugMessage
          : debugMessage // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ApiResponseFailureModel?,
    ));
  }
}

/// @nodoc
abstract class _$FailureResultCopyWith<$Res>
    implements $FailureResultCopyWith<$Res> {
  factory _$FailureResultCopyWith(
          _FailureResult value, $Res Function(_FailureResult) then) =
      __$FailureResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {FailureReasons reason,
      String debugMessage,
      ApiResponseFailureModel? model});
}

/// @nodoc
class __$FailureResultCopyWithImpl<$Res>
    extends _$FailureResultCopyWithImpl<$Res>
    implements _$FailureResultCopyWith<$Res> {
  __$FailureResultCopyWithImpl(
      _FailureResult _value, $Res Function(_FailureResult) _then)
      : super(_value, (v) => _then(v as _FailureResult));

  @override
  _FailureResult get _value => super._value as _FailureResult;

  @override
  $Res call({
    Object? reason = freezed,
    Object? debugMessage = freezed,
    Object? model = freezed,
  }) {
    return _then(_FailureResult(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as FailureReasons,
      debugMessage: debugMessage == freezed
          ? _value.debugMessage
          : debugMessage // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ApiResponseFailureModel?,
    ));
  }
}

/// @nodoc

class _$_FailureResult implements _FailureResult {
  const _$_FailureResult(
      {required this.reason, required this.debugMessage, this.model});

  @override
  final FailureReasons reason;
  @override
  final String debugMessage;
  @override
  final ApiResponseFailureModel? model;

  @override
  String toString() {
    return 'FailureResult(reason: $reason, debugMessage: $debugMessage, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FailureResult &&
            const DeepCollectionEquality().equals(other.reason, reason) &&
            const DeepCollectionEquality()
                .equals(other.debugMessage, debugMessage) &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reason),
      const DeepCollectionEquality().hash(debugMessage),
      const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$FailureResultCopyWith<_FailureResult> get copyWith =>
      __$FailureResultCopyWithImpl<_FailureResult>(this, _$identity);
}

abstract class _FailureResult implements FailureResult {
  const factory _FailureResult(
      {required FailureReasons reason,
      required String debugMessage,
      ApiResponseFailureModel? model}) = _$_FailureResult;

  @override
  FailureReasons get reason;
  @override
  String get debugMessage;
  @override
  ApiResponseFailureModel? get model;
  @override
  @JsonKey(ignore: true)
  _$FailureResultCopyWith<_FailureResult> get copyWith =>
      throw _privateConstructorUsedError;
}
