// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sf_service_create_timesheet_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SfServiceCreateTimesheetDataModel _$SfServiceCreateTimesheetDataModelFromJson(
    Map<String, dynamic> json) {
  return _SfServiceCreateTimesheetDataModel.fromJson(json);
}

/// @nodoc
class _$SfServiceCreateTimesheetDataModelTearOff {
  const _$SfServiceCreateTimesheetDataModelTearOff();

  _SfServiceCreateTimesheetDataModel call(
      {required int code,
      required TimesheetExistDataModel result,
      required String message}) {
    return _SfServiceCreateTimesheetDataModel(
      code: code,
      result: result,
      message: message,
    );
  }

  SfServiceCreateTimesheetDataModel fromJson(Map<String, Object?> json) {
    return SfServiceCreateTimesheetDataModel.fromJson(json);
  }
}

/// @nodoc
const $SfServiceCreateTimesheetDataModel =
    _$SfServiceCreateTimesheetDataModelTearOff();

/// @nodoc
mixin _$SfServiceCreateTimesheetDataModel {
  int get code => throw _privateConstructorUsedError;
  TimesheetExistDataModel get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SfServiceCreateTimesheetDataModelCopyWith<SfServiceCreateTimesheetDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SfServiceCreateTimesheetDataModelCopyWith<$Res> {
  factory $SfServiceCreateTimesheetDataModelCopyWith(
          SfServiceCreateTimesheetDataModel value,
          $Res Function(SfServiceCreateTimesheetDataModel) then) =
      _$SfServiceCreateTimesheetDataModelCopyWithImpl<$Res>;
  $Res call({int code, TimesheetExistDataModel result, String message});

  $TimesheetExistDataModelCopyWith<$Res> get result;
}

/// @nodoc
class _$SfServiceCreateTimesheetDataModelCopyWithImpl<$Res>
    implements $SfServiceCreateTimesheetDataModelCopyWith<$Res> {
  _$SfServiceCreateTimesheetDataModelCopyWithImpl(this._value, this._then);

  final SfServiceCreateTimesheetDataModel _value;
  // ignore: unused_field
  final $Res Function(SfServiceCreateTimesheetDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? result = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TimesheetExistDataModel,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $TimesheetExistDataModelCopyWith<$Res> get result {
    return $TimesheetExistDataModelCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$SfServiceCreateTimesheetDataModelCopyWith<$Res>
    implements $SfServiceCreateTimesheetDataModelCopyWith<$Res> {
  factory _$SfServiceCreateTimesheetDataModelCopyWith(
          _SfServiceCreateTimesheetDataModel value,
          $Res Function(_SfServiceCreateTimesheetDataModel) then) =
      __$SfServiceCreateTimesheetDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int code, TimesheetExistDataModel result, String message});

  @override
  $TimesheetExistDataModelCopyWith<$Res> get result;
}

/// @nodoc
class __$SfServiceCreateTimesheetDataModelCopyWithImpl<$Res>
    extends _$SfServiceCreateTimesheetDataModelCopyWithImpl<$Res>
    implements _$SfServiceCreateTimesheetDataModelCopyWith<$Res> {
  __$SfServiceCreateTimesheetDataModelCopyWithImpl(
      _SfServiceCreateTimesheetDataModel _value,
      $Res Function(_SfServiceCreateTimesheetDataModel) _then)
      : super(_value, (v) => _then(v as _SfServiceCreateTimesheetDataModel));

  @override
  _SfServiceCreateTimesheetDataModel get _value =>
      super._value as _SfServiceCreateTimesheetDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? result = freezed,
    Object? message = freezed,
  }) {
    return _then(_SfServiceCreateTimesheetDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TimesheetExistDataModel,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SfServiceCreateTimesheetDataModel
    implements _SfServiceCreateTimesheetDataModel {
  const _$_SfServiceCreateTimesheetDataModel(
      {required this.code, required this.result, required this.message});

  factory _$_SfServiceCreateTimesheetDataModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_SfServiceCreateTimesheetDataModelFromJson(json);

  @override
  final int code;
  @override
  final TimesheetExistDataModel result;
  @override
  final String message;

  @override
  String toString() {
    return 'SfServiceCreateTimesheetDataModel(code: $code, result: $result, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SfServiceCreateTimesheetDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$SfServiceCreateTimesheetDataModelCopyWith<
          _SfServiceCreateTimesheetDataModel>
      get copyWith => __$SfServiceCreateTimesheetDataModelCopyWithImpl<
          _SfServiceCreateTimesheetDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SfServiceCreateTimesheetDataModelToJson(this);
  }
}

abstract class _SfServiceCreateTimesheetDataModel
    implements SfServiceCreateTimesheetDataModel {
  const factory _SfServiceCreateTimesheetDataModel(
      {required int code,
      required TimesheetExistDataModel result,
      required String message}) = _$_SfServiceCreateTimesheetDataModel;

  factory _SfServiceCreateTimesheetDataModel.fromJson(
          Map<String, dynamic> json) =
      _$_SfServiceCreateTimesheetDataModel.fromJson;

  @override
  int get code;
  @override
  TimesheetExistDataModel get result;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$SfServiceCreateTimesheetDataModelCopyWith<
          _SfServiceCreateTimesheetDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
