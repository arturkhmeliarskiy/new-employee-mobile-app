// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timesheet_exist_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimesheetExistDataModel _$TimesheetExistDataModelFromJson(
    Map<String, dynamic> json) {
  return _TimesheetExistDataModel.fromJson(json);
}

/// @nodoc
class _$TimesheetExistDataModelTearOff {
  const _$TimesheetExistDataModelTearOff();

  _TimesheetExistDataModel call({String? isTimesheetExist}) {
    return _TimesheetExistDataModel(
      isTimesheetExist: isTimesheetExist,
    );
  }

  TimesheetExistDataModel fromJson(Map<String, Object?> json) {
    return TimesheetExistDataModel.fromJson(json);
  }
}

/// @nodoc
const $TimesheetExistDataModel = _$TimesheetExistDataModelTearOff();

/// @nodoc
mixin _$TimesheetExistDataModel {
  String? get isTimesheetExist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimesheetExistDataModelCopyWith<TimesheetExistDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimesheetExistDataModelCopyWith<$Res> {
  factory $TimesheetExistDataModelCopyWith(TimesheetExistDataModel value,
          $Res Function(TimesheetExistDataModel) then) =
      _$TimesheetExistDataModelCopyWithImpl<$Res>;
  $Res call({String? isTimesheetExist});
}

/// @nodoc
class _$TimesheetExistDataModelCopyWithImpl<$Res>
    implements $TimesheetExistDataModelCopyWith<$Res> {
  _$TimesheetExistDataModelCopyWithImpl(this._value, this._then);

  final TimesheetExistDataModel _value;
  // ignore: unused_field
  final $Res Function(TimesheetExistDataModel) _then;

  @override
  $Res call({
    Object? isTimesheetExist = freezed,
  }) {
    return _then(_value.copyWith(
      isTimesheetExist: isTimesheetExist == freezed
          ? _value.isTimesheetExist
          : isTimesheetExist // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TimesheetExistDataModelCopyWith<$Res>
    implements $TimesheetExistDataModelCopyWith<$Res> {
  factory _$TimesheetExistDataModelCopyWith(_TimesheetExistDataModel value,
          $Res Function(_TimesheetExistDataModel) then) =
      __$TimesheetExistDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String? isTimesheetExist});
}

/// @nodoc
class __$TimesheetExistDataModelCopyWithImpl<$Res>
    extends _$TimesheetExistDataModelCopyWithImpl<$Res>
    implements _$TimesheetExistDataModelCopyWith<$Res> {
  __$TimesheetExistDataModelCopyWithImpl(_TimesheetExistDataModel _value,
      $Res Function(_TimesheetExistDataModel) _then)
      : super(_value, (v) => _then(v as _TimesheetExistDataModel));

  @override
  _TimesheetExistDataModel get _value =>
      super._value as _TimesheetExistDataModel;

  @override
  $Res call({
    Object? isTimesheetExist = freezed,
  }) {
    return _then(_TimesheetExistDataModel(
      isTimesheetExist: isTimesheetExist == freezed
          ? _value.isTimesheetExist
          : isTimesheetExist // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimesheetExistDataModel implements _TimesheetExistDataModel {
  const _$_TimesheetExistDataModel({this.isTimesheetExist});

  factory _$_TimesheetExistDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_TimesheetExistDataModelFromJson(json);

  @override
  final String? isTimesheetExist;

  @override
  String toString() {
    return 'TimesheetExistDataModel(isTimesheetExist: $isTimesheetExist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimesheetExistDataModel &&
            const DeepCollectionEquality()
                .equals(other.isTimesheetExist, isTimesheetExist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isTimesheetExist));

  @JsonKey(ignore: true)
  @override
  _$TimesheetExistDataModelCopyWith<_TimesheetExistDataModel> get copyWith =>
      __$TimesheetExistDataModelCopyWithImpl<_TimesheetExistDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimesheetExistDataModelToJson(this);
  }
}

abstract class _TimesheetExistDataModel implements TimesheetExistDataModel {
  const factory _TimesheetExistDataModel({String? isTimesheetExist}) =
      _$_TimesheetExistDataModel;

  factory _TimesheetExistDataModel.fromJson(Map<String, dynamic> json) =
      _$_TimesheetExistDataModel.fromJson;

  @override
  String? get isTimesheetExist;
  @override
  @JsonKey(ignore: true)
  _$TimesheetExistDataModelCopyWith<_TimesheetExistDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
