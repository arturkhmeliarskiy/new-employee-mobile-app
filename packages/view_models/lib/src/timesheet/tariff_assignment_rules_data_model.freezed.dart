// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tariff_assignment_rules_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TariffAssignmentRulesDataModel _$TariffAssignmentRulesDataModelFromJson(
    Map<String, dynamic> json) {
  return _TariffAssignmentRulesDataModel.fromJson(json);
}

/// @nodoc
class _$TariffAssignmentRulesDataModelTearOff {
  const _$TariffAssignmentRulesDataModelTearOff();

  _TariffAssignmentRulesDataModel call(
      {required String validFrom, required List<dynamic> usedUnravelingTypes}) {
    return _TariffAssignmentRulesDataModel(
      validFrom: validFrom,
      usedUnravelingTypes: usedUnravelingTypes,
    );
  }

  TariffAssignmentRulesDataModel fromJson(Map<String, Object?> json) {
    return TariffAssignmentRulesDataModel.fromJson(json);
  }
}

/// @nodoc
const $TariffAssignmentRulesDataModel =
    _$TariffAssignmentRulesDataModelTearOff();

/// @nodoc
mixin _$TariffAssignmentRulesDataModel {
  String get validFrom => throw _privateConstructorUsedError;
  List<dynamic> get usedUnravelingTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TariffAssignmentRulesDataModelCopyWith<TariffAssignmentRulesDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TariffAssignmentRulesDataModelCopyWith<$Res> {
  factory $TariffAssignmentRulesDataModelCopyWith(
          TariffAssignmentRulesDataModel value,
          $Res Function(TariffAssignmentRulesDataModel) then) =
      _$TariffAssignmentRulesDataModelCopyWithImpl<$Res>;
  $Res call({String validFrom, List<dynamic> usedUnravelingTypes});
}

/// @nodoc
class _$TariffAssignmentRulesDataModelCopyWithImpl<$Res>
    implements $TariffAssignmentRulesDataModelCopyWith<$Res> {
  _$TariffAssignmentRulesDataModelCopyWithImpl(this._value, this._then);

  final TariffAssignmentRulesDataModel _value;
  // ignore: unused_field
  final $Res Function(TariffAssignmentRulesDataModel) _then;

  @override
  $Res call({
    Object? validFrom = freezed,
    Object? usedUnravelingTypes = freezed,
  }) {
    return _then(_value.copyWith(
      validFrom: validFrom == freezed
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as String,
      usedUnravelingTypes: usedUnravelingTypes == freezed
          ? _value.usedUnravelingTypes
          : usedUnravelingTypes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$TariffAssignmentRulesDataModelCopyWith<$Res>
    implements $TariffAssignmentRulesDataModelCopyWith<$Res> {
  factory _$TariffAssignmentRulesDataModelCopyWith(
          _TariffAssignmentRulesDataModel value,
          $Res Function(_TariffAssignmentRulesDataModel) then) =
      __$TariffAssignmentRulesDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String validFrom, List<dynamic> usedUnravelingTypes});
}

/// @nodoc
class __$TariffAssignmentRulesDataModelCopyWithImpl<$Res>
    extends _$TariffAssignmentRulesDataModelCopyWithImpl<$Res>
    implements _$TariffAssignmentRulesDataModelCopyWith<$Res> {
  __$TariffAssignmentRulesDataModelCopyWithImpl(
      _TariffAssignmentRulesDataModel _value,
      $Res Function(_TariffAssignmentRulesDataModel) _then)
      : super(_value, (v) => _then(v as _TariffAssignmentRulesDataModel));

  @override
  _TariffAssignmentRulesDataModel get _value =>
      super._value as _TariffAssignmentRulesDataModel;

  @override
  $Res call({
    Object? validFrom = freezed,
    Object? usedUnravelingTypes = freezed,
  }) {
    return _then(_TariffAssignmentRulesDataModel(
      validFrom: validFrom == freezed
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as String,
      usedUnravelingTypes: usedUnravelingTypes == freezed
          ? _value.usedUnravelingTypes
          : usedUnravelingTypes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TariffAssignmentRulesDataModel
    implements _TariffAssignmentRulesDataModel {
  const _$_TariffAssignmentRulesDataModel(
      {required this.validFrom, required this.usedUnravelingTypes});

  factory _$_TariffAssignmentRulesDataModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_TariffAssignmentRulesDataModelFromJson(json);

  @override
  final String validFrom;
  @override
  final List<dynamic> usedUnravelingTypes;

  @override
  String toString() {
    return 'TariffAssignmentRulesDataModel(validFrom: $validFrom, usedUnravelingTypes: $usedUnravelingTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TariffAssignmentRulesDataModel &&
            const DeepCollectionEquality().equals(other.validFrom, validFrom) &&
            const DeepCollectionEquality()
                .equals(other.usedUnravelingTypes, usedUnravelingTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(validFrom),
      const DeepCollectionEquality().hash(usedUnravelingTypes));

  @JsonKey(ignore: true)
  @override
  _$TariffAssignmentRulesDataModelCopyWith<_TariffAssignmentRulesDataModel>
      get copyWith => __$TariffAssignmentRulesDataModelCopyWithImpl<
          _TariffAssignmentRulesDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TariffAssignmentRulesDataModelToJson(this);
  }
}

abstract class _TariffAssignmentRulesDataModel
    implements TariffAssignmentRulesDataModel {
  const factory _TariffAssignmentRulesDataModel(
          {required String validFrom,
          required List<dynamic> usedUnravelingTypes}) =
      _$_TariffAssignmentRulesDataModel;

  factory _TariffAssignmentRulesDataModel.fromJson(Map<String, dynamic> json) =
      _$_TariffAssignmentRulesDataModel.fromJson;

  @override
  String get validFrom;
  @override
  List<dynamic> get usedUnravelingTypes;
  @override
  @JsonKey(ignore: true)
  _$TariffAssignmentRulesDataModelCopyWith<_TariffAssignmentRulesDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
