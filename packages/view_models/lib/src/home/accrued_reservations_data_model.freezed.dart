// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'accrued_reservations_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccruedReservationsDataModel _$AccruedReservationsDataModelFromJson(
    Map<String, dynamic> json) {
  return _AccruedReservationsDataModel.fromJson(json);
}

/// @nodoc
class _$AccruedReservationsDataModelTearOff {
  const _$AccruedReservationsDataModelTearOff();

  _AccruedReservationsDataModel call(
      {required double currency, required double hours}) {
    return _AccruedReservationsDataModel(
      currency: currency,
      hours: hours,
    );
  }

  AccruedReservationsDataModel fromJson(Map<String, Object?> json) {
    return AccruedReservationsDataModel.fromJson(json);
  }
}

/// @nodoc
const $AccruedReservationsDataModel = _$AccruedReservationsDataModelTearOff();

/// @nodoc
mixin _$AccruedReservationsDataModel {
  double get currency => throw _privateConstructorUsedError;
  double get hours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccruedReservationsDataModelCopyWith<AccruedReservationsDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccruedReservationsDataModelCopyWith<$Res> {
  factory $AccruedReservationsDataModelCopyWith(
          AccruedReservationsDataModel value,
          $Res Function(AccruedReservationsDataModel) then) =
      _$AccruedReservationsDataModelCopyWithImpl<$Res>;
  $Res call({double currency, double hours});
}

/// @nodoc
class _$AccruedReservationsDataModelCopyWithImpl<$Res>
    implements $AccruedReservationsDataModelCopyWith<$Res> {
  _$AccruedReservationsDataModelCopyWithImpl(this._value, this._then);

  final AccruedReservationsDataModel _value;
  // ignore: unused_field
  final $Res Function(AccruedReservationsDataModel) _then;

  @override
  $Res call({
    Object? currency = freezed,
    Object? hours = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as double,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$AccruedReservationsDataModelCopyWith<$Res>
    implements $AccruedReservationsDataModelCopyWith<$Res> {
  factory _$AccruedReservationsDataModelCopyWith(
          _AccruedReservationsDataModel value,
          $Res Function(_AccruedReservationsDataModel) then) =
      __$AccruedReservationsDataModelCopyWithImpl<$Res>;
  @override
  $Res call({double currency, double hours});
}

/// @nodoc
class __$AccruedReservationsDataModelCopyWithImpl<$Res>
    extends _$AccruedReservationsDataModelCopyWithImpl<$Res>
    implements _$AccruedReservationsDataModelCopyWith<$Res> {
  __$AccruedReservationsDataModelCopyWithImpl(
      _AccruedReservationsDataModel _value,
      $Res Function(_AccruedReservationsDataModel) _then)
      : super(_value, (v) => _then(v as _AccruedReservationsDataModel));

  @override
  _AccruedReservationsDataModel get _value =>
      super._value as _AccruedReservationsDataModel;

  @override
  $Res call({
    Object? currency = freezed,
    Object? hours = freezed,
  }) {
    return _then(_AccruedReservationsDataModel(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as double,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccruedReservationsDataModel implements _AccruedReservationsDataModel {
  const _$_AccruedReservationsDataModel(
      {required this.currency, required this.hours});

  factory _$_AccruedReservationsDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccruedReservationsDataModelFromJson(json);

  @override
  final double currency;
  @override
  final double hours;

  @override
  String toString() {
    return 'AccruedReservationsDataModel(currency: $currency, hours: $hours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccruedReservationsDataModel &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.hours, hours));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(hours));

  @JsonKey(ignore: true)
  @override
  _$AccruedReservationsDataModelCopyWith<_AccruedReservationsDataModel>
      get copyWith => __$AccruedReservationsDataModelCopyWithImpl<
          _AccruedReservationsDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccruedReservationsDataModelToJson(this);
  }
}

abstract class _AccruedReservationsDataModel
    implements AccruedReservationsDataModel {
  const factory _AccruedReservationsDataModel(
      {required double currency,
      required double hours}) = _$_AccruedReservationsDataModel;

  factory _AccruedReservationsDataModel.fromJson(Map<String, dynamic> json) =
      _$_AccruedReservationsDataModel.fromJson;

  @override
  double get currency;
  @override
  double get hours;
  @override
  @JsonKey(ignore: true)
  _$AccruedReservationsDataModelCopyWith<_AccruedReservationsDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
