// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'average_worked_hours_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AverageWorkedHoursDataModel _$AverageWorkedHoursDataModelFromJson(
    Map<String, dynamic> json) {
  return _AverageWorkedHoursDataModel.fromJson(json);
}

/// @nodoc
class _$AverageWorkedHoursDataModelTearOff {
  const _$AverageWorkedHoursDataModelTearOff();

  _AverageWorkedHoursDataModel call({required double weekly}) {
    return _AverageWorkedHoursDataModel(
      weekly: weekly,
    );
  }

  AverageWorkedHoursDataModel fromJson(Map<String, Object?> json) {
    return AverageWorkedHoursDataModel.fromJson(json);
  }
}

/// @nodoc
const $AverageWorkedHoursDataModel = _$AverageWorkedHoursDataModelTearOff();

/// @nodoc
mixin _$AverageWorkedHoursDataModel {
  double get weekly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AverageWorkedHoursDataModelCopyWith<AverageWorkedHoursDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AverageWorkedHoursDataModelCopyWith<$Res> {
  factory $AverageWorkedHoursDataModelCopyWith(
          AverageWorkedHoursDataModel value,
          $Res Function(AverageWorkedHoursDataModel) then) =
      _$AverageWorkedHoursDataModelCopyWithImpl<$Res>;
  $Res call({double weekly});
}

/// @nodoc
class _$AverageWorkedHoursDataModelCopyWithImpl<$Res>
    implements $AverageWorkedHoursDataModelCopyWith<$Res> {
  _$AverageWorkedHoursDataModelCopyWithImpl(this._value, this._then);

  final AverageWorkedHoursDataModel _value;
  // ignore: unused_field
  final $Res Function(AverageWorkedHoursDataModel) _then;

  @override
  $Res call({
    Object? weekly = freezed,
  }) {
    return _then(_value.copyWith(
      weekly: weekly == freezed
          ? _value.weekly
          : weekly // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$AverageWorkedHoursDataModelCopyWith<$Res>
    implements $AverageWorkedHoursDataModelCopyWith<$Res> {
  factory _$AverageWorkedHoursDataModelCopyWith(
          _AverageWorkedHoursDataModel value,
          $Res Function(_AverageWorkedHoursDataModel) then) =
      __$AverageWorkedHoursDataModelCopyWithImpl<$Res>;
  @override
  $Res call({double weekly});
}

/// @nodoc
class __$AverageWorkedHoursDataModelCopyWithImpl<$Res>
    extends _$AverageWorkedHoursDataModelCopyWithImpl<$Res>
    implements _$AverageWorkedHoursDataModelCopyWith<$Res> {
  __$AverageWorkedHoursDataModelCopyWithImpl(
      _AverageWorkedHoursDataModel _value,
      $Res Function(_AverageWorkedHoursDataModel) _then)
      : super(_value, (v) => _then(v as _AverageWorkedHoursDataModel));

  @override
  _AverageWorkedHoursDataModel get _value =>
      super._value as _AverageWorkedHoursDataModel;

  @override
  $Res call({
    Object? weekly = freezed,
  }) {
    return _then(_AverageWorkedHoursDataModel(
      weekly: weekly == freezed
          ? _value.weekly
          : weekly // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AverageWorkedHoursDataModel implements _AverageWorkedHoursDataModel {
  const _$_AverageWorkedHoursDataModel({required this.weekly});

  factory _$_AverageWorkedHoursDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_AverageWorkedHoursDataModelFromJson(json);

  @override
  final double weekly;

  @override
  String toString() {
    return 'AverageWorkedHoursDataModel(weekly: $weekly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AverageWorkedHoursDataModel &&
            const DeepCollectionEquality().equals(other.weekly, weekly));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(weekly));

  @JsonKey(ignore: true)
  @override
  _$AverageWorkedHoursDataModelCopyWith<_AverageWorkedHoursDataModel>
      get copyWith => __$AverageWorkedHoursDataModelCopyWithImpl<
          _AverageWorkedHoursDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AverageWorkedHoursDataModelToJson(this);
  }
}

abstract class _AverageWorkedHoursDataModel
    implements AverageWorkedHoursDataModel {
  const factory _AverageWorkedHoursDataModel({required double weekly}) =
      _$_AverageWorkedHoursDataModel;

  factory _AverageWorkedHoursDataModel.fromJson(Map<String, dynamic> json) =
      _$_AverageWorkedHoursDataModel.fromJson;

  @override
  double get weekly;
  @override
  @JsonKey(ignore: true)
  _$AverageWorkedHoursDataModelCopyWith<_AverageWorkedHoursDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
