// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'worked_hours_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkedHoursDataModel _$WorkedHoursDataModelFromJson(Map<String, dynamic> json) {
  return _WorkedHoursDataModel.fromJson(json);
}

/// @nodoc
class _$WorkedHoursDataModelTearOff {
  const _$WorkedHoursDataModelTearOff();

  _WorkedHoursDataModel call(
      {required double week, required double month, required double total}) {
    return _WorkedHoursDataModel(
      week: week,
      month: month,
      total: total,
    );
  }

  WorkedHoursDataModel fromJson(Map<String, Object?> json) {
    return WorkedHoursDataModel.fromJson(json);
  }
}

/// @nodoc
const $WorkedHoursDataModel = _$WorkedHoursDataModelTearOff();

/// @nodoc
mixin _$WorkedHoursDataModel {
  double get week => throw _privateConstructorUsedError;
  double get month => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkedHoursDataModelCopyWith<WorkedHoursDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkedHoursDataModelCopyWith<$Res> {
  factory $WorkedHoursDataModelCopyWith(WorkedHoursDataModel value,
          $Res Function(WorkedHoursDataModel) then) =
      _$WorkedHoursDataModelCopyWithImpl<$Res>;
  $Res call({double week, double month, double total});
}

/// @nodoc
class _$WorkedHoursDataModelCopyWithImpl<$Res>
    implements $WorkedHoursDataModelCopyWith<$Res> {
  _$WorkedHoursDataModelCopyWithImpl(this._value, this._then);

  final WorkedHoursDataModel _value;
  // ignore: unused_field
  final $Res Function(WorkedHoursDataModel) _then;

  @override
  $Res call({
    Object? week = freezed,
    Object? month = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as double,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$WorkedHoursDataModelCopyWith<$Res>
    implements $WorkedHoursDataModelCopyWith<$Res> {
  factory _$WorkedHoursDataModelCopyWith(_WorkedHoursDataModel value,
          $Res Function(_WorkedHoursDataModel) then) =
      __$WorkedHoursDataModelCopyWithImpl<$Res>;
  @override
  $Res call({double week, double month, double total});
}

/// @nodoc
class __$WorkedHoursDataModelCopyWithImpl<$Res>
    extends _$WorkedHoursDataModelCopyWithImpl<$Res>
    implements _$WorkedHoursDataModelCopyWith<$Res> {
  __$WorkedHoursDataModelCopyWithImpl(
      _WorkedHoursDataModel _value, $Res Function(_WorkedHoursDataModel) _then)
      : super(_value, (v) => _then(v as _WorkedHoursDataModel));

  @override
  _WorkedHoursDataModel get _value => super._value as _WorkedHoursDataModel;

  @override
  $Res call({
    Object? week = freezed,
    Object? month = freezed,
    Object? total = freezed,
  }) {
    return _then(_WorkedHoursDataModel(
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as double,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkedHoursDataModel implements _WorkedHoursDataModel {
  const _$_WorkedHoursDataModel(
      {required this.week, required this.month, required this.total});

  factory _$_WorkedHoursDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorkedHoursDataModelFromJson(json);

  @override
  final double week;
  @override
  final double month;
  @override
  final double total;

  @override
  String toString() {
    return 'WorkedHoursDataModel(week: $week, month: $month, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkedHoursDataModel &&
            const DeepCollectionEquality().equals(other.week, week) &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(week),
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$WorkedHoursDataModelCopyWith<_WorkedHoursDataModel> get copyWith =>
      __$WorkedHoursDataModelCopyWithImpl<_WorkedHoursDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkedHoursDataModelToJson(this);
  }
}

abstract class _WorkedHoursDataModel implements WorkedHoursDataModel {
  const factory _WorkedHoursDataModel(
      {required double week,
      required double month,
      required double total}) = _$_WorkedHoursDataModel;

  factory _WorkedHoursDataModel.fromJson(Map<String, dynamic> json) =
      _$_WorkedHoursDataModel.fromJson;

  @override
  double get week;
  @override
  double get month;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$WorkedHoursDataModelCopyWith<_WorkedHoursDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
