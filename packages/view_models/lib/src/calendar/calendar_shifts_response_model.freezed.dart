// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_shifts_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CalendarShiftsResponseModelTearOff {
  const _$CalendarShiftsResponseModelTearOff();

  _CalendarShiftsResponseModel call(
      {required int code,
      required String message,
      required List<CalendarShiftsModel> shifts}) {
    return _CalendarShiftsResponseModel(
      code: code,
      message: message,
      shifts: shifts,
    );
  }
}

/// @nodoc
const $CalendarShiftsResponseModel = _$CalendarShiftsResponseModelTearOff();

/// @nodoc
mixin _$CalendarShiftsResponseModel {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<CalendarShiftsModel> get shifts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarShiftsResponseModelCopyWith<CalendarShiftsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarShiftsResponseModelCopyWith<$Res> {
  factory $CalendarShiftsResponseModelCopyWith(
          CalendarShiftsResponseModel value,
          $Res Function(CalendarShiftsResponseModel) then) =
      _$CalendarShiftsResponseModelCopyWithImpl<$Res>;
  $Res call({int code, String message, List<CalendarShiftsModel> shifts});
}

/// @nodoc
class _$CalendarShiftsResponseModelCopyWithImpl<$Res>
    implements $CalendarShiftsResponseModelCopyWith<$Res> {
  _$CalendarShiftsResponseModelCopyWithImpl(this._value, this._then);

  final CalendarShiftsResponseModel _value;
  // ignore: unused_field
  final $Res Function(CalendarShiftsResponseModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? shifts = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      shifts: shifts == freezed
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<CalendarShiftsModel>,
    ));
  }
}

/// @nodoc
abstract class _$CalendarShiftsResponseModelCopyWith<$Res>
    implements $CalendarShiftsResponseModelCopyWith<$Res> {
  factory _$CalendarShiftsResponseModelCopyWith(
          _CalendarShiftsResponseModel value,
          $Res Function(_CalendarShiftsResponseModel) then) =
      __$CalendarShiftsResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({int code, String message, List<CalendarShiftsModel> shifts});
}

/// @nodoc
class __$CalendarShiftsResponseModelCopyWithImpl<$Res>
    extends _$CalendarShiftsResponseModelCopyWithImpl<$Res>
    implements _$CalendarShiftsResponseModelCopyWith<$Res> {
  __$CalendarShiftsResponseModelCopyWithImpl(
      _CalendarShiftsResponseModel _value,
      $Res Function(_CalendarShiftsResponseModel) _then)
      : super(_value, (v) => _then(v as _CalendarShiftsResponseModel));

  @override
  _CalendarShiftsResponseModel get _value =>
      super._value as _CalendarShiftsResponseModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? shifts = freezed,
  }) {
    return _then(_CalendarShiftsResponseModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      shifts: shifts == freezed
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<CalendarShiftsModel>,
    ));
  }
}

/// @nodoc

class _$_CalendarShiftsResponseModel implements _CalendarShiftsResponseModel {
  const _$_CalendarShiftsResponseModel(
      {required this.code, required this.message, required this.shifts});

  @override
  final int code;
  @override
  final String message;
  @override
  final List<CalendarShiftsModel> shifts;

  @override
  String toString() {
    return 'CalendarShiftsResponseModel(code: $code, message: $message, shifts: $shifts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalendarShiftsResponseModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.shifts, shifts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(shifts));

  @JsonKey(ignore: true)
  @override
  _$CalendarShiftsResponseModelCopyWith<_CalendarShiftsResponseModel>
      get copyWith => __$CalendarShiftsResponseModelCopyWithImpl<
          _CalendarShiftsResponseModel>(this, _$identity);
}

abstract class _CalendarShiftsResponseModel
    implements CalendarShiftsResponseModel {
  const factory _CalendarShiftsResponseModel(
          {required int code,
          required String message,
          required List<CalendarShiftsModel> shifts}) =
      _$_CalendarShiftsResponseModel;

  @override
  int get code;
  @override
  String get message;
  @override
  List<CalendarShiftsModel> get shifts;
  @override
  @JsonKey(ignore: true)
  _$CalendarShiftsResponseModelCopyWith<_CalendarShiftsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
