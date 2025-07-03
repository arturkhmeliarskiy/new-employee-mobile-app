// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentDataModel _$ContentDataModelFromJson(Map<String, dynamic> json) {
  return _ContentDataModel.fromJson(json);
}

/// @nodoc
class _$ContentDataModelTearOff {
  const _$ContentDataModelTearOff();

  _ContentDataModel call(
      {required String agencyId,
      required String orgName,
      required String orgLogo,
      required String colorAgency,
      required String phone,
      required WorkedHoursDataModel workedHoursDataModel,
      required AccruedReservationsDataModel accruedReservations,
      required AverageWorkedHoursDataModel averageWorkedHoursDataModel}) {
    return _ContentDataModel(
      agencyId: agencyId,
      orgName: orgName,
      orgLogo: orgLogo,
      colorAgency: colorAgency,
      phone: phone,
      workedHoursDataModel: workedHoursDataModel,
      accruedReservations: accruedReservations,
      averageWorkedHoursDataModel: averageWorkedHoursDataModel,
    );
  }

  ContentDataModel fromJson(Map<String, Object?> json) {
    return ContentDataModel.fromJson(json);
  }
}

/// @nodoc
const $ContentDataModel = _$ContentDataModelTearOff();

/// @nodoc
mixin _$ContentDataModel {
  String get agencyId => throw _privateConstructorUsedError;
  String get orgName => throw _privateConstructorUsedError;
  String get orgLogo => throw _privateConstructorUsedError;
  String get colorAgency => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  WorkedHoursDataModel get workedHoursDataModel =>
      throw _privateConstructorUsedError;
  AccruedReservationsDataModel get accruedReservations =>
      throw _privateConstructorUsedError;
  AverageWorkedHoursDataModel get averageWorkedHoursDataModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentDataModelCopyWith<ContentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDataModelCopyWith<$Res> {
  factory $ContentDataModelCopyWith(
          ContentDataModel value, $Res Function(ContentDataModel) then) =
      _$ContentDataModelCopyWithImpl<$Res>;
  $Res call(
      {String agencyId,
      String orgName,
      String orgLogo,
      String colorAgency,
      String phone,
      WorkedHoursDataModel workedHoursDataModel,
      AccruedReservationsDataModel accruedReservations,
      AverageWorkedHoursDataModel averageWorkedHoursDataModel});

  $WorkedHoursDataModelCopyWith<$Res> get workedHoursDataModel;
  $AccruedReservationsDataModelCopyWith<$Res> get accruedReservations;
  $AverageWorkedHoursDataModelCopyWith<$Res> get averageWorkedHoursDataModel;
}

/// @nodoc
class _$ContentDataModelCopyWithImpl<$Res>
    implements $ContentDataModelCopyWith<$Res> {
  _$ContentDataModelCopyWithImpl(this._value, this._then);

  final ContentDataModel _value;
  // ignore: unused_field
  final $Res Function(ContentDataModel) _then;

  @override
  $Res call({
    Object? agencyId = freezed,
    Object? orgName = freezed,
    Object? orgLogo = freezed,
    Object? colorAgency = freezed,
    Object? phone = freezed,
    Object? workedHoursDataModel = freezed,
    Object? accruedReservations = freezed,
    Object? averageWorkedHoursDataModel = freezed,
  }) {
    return _then(_value.copyWith(
      agencyId: agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
      orgName: orgName == freezed
          ? _value.orgName
          : orgName // ignore: cast_nullable_to_non_nullable
              as String,
      orgLogo: orgLogo == freezed
          ? _value.orgLogo
          : orgLogo // ignore: cast_nullable_to_non_nullable
              as String,
      colorAgency: colorAgency == freezed
          ? _value.colorAgency
          : colorAgency // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      workedHoursDataModel: workedHoursDataModel == freezed
          ? _value.workedHoursDataModel
          : workedHoursDataModel // ignore: cast_nullable_to_non_nullable
              as WorkedHoursDataModel,
      accruedReservations: accruedReservations == freezed
          ? _value.accruedReservations
          : accruedReservations // ignore: cast_nullable_to_non_nullable
              as AccruedReservationsDataModel,
      averageWorkedHoursDataModel: averageWorkedHoursDataModel == freezed
          ? _value.averageWorkedHoursDataModel
          : averageWorkedHoursDataModel // ignore: cast_nullable_to_non_nullable
              as AverageWorkedHoursDataModel,
    ));
  }

  @override
  $WorkedHoursDataModelCopyWith<$Res> get workedHoursDataModel {
    return $WorkedHoursDataModelCopyWith<$Res>(_value.workedHoursDataModel,
        (value) {
      return _then(_value.copyWith(workedHoursDataModel: value));
    });
  }

  @override
  $AccruedReservationsDataModelCopyWith<$Res> get accruedReservations {
    return $AccruedReservationsDataModelCopyWith<$Res>(
        _value.accruedReservations, (value) {
      return _then(_value.copyWith(accruedReservations: value));
    });
  }

  @override
  $AverageWorkedHoursDataModelCopyWith<$Res> get averageWorkedHoursDataModel {
    return $AverageWorkedHoursDataModelCopyWith<$Res>(
        _value.averageWorkedHoursDataModel, (value) {
      return _then(_value.copyWith(averageWorkedHoursDataModel: value));
    });
  }
}

/// @nodoc
abstract class _$ContentDataModelCopyWith<$Res>
    implements $ContentDataModelCopyWith<$Res> {
  factory _$ContentDataModelCopyWith(
          _ContentDataModel value, $Res Function(_ContentDataModel) then) =
      __$ContentDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String agencyId,
      String orgName,
      String orgLogo,
      String colorAgency,
      String phone,
      WorkedHoursDataModel workedHoursDataModel,
      AccruedReservationsDataModel accruedReservations,
      AverageWorkedHoursDataModel averageWorkedHoursDataModel});

  @override
  $WorkedHoursDataModelCopyWith<$Res> get workedHoursDataModel;
  @override
  $AccruedReservationsDataModelCopyWith<$Res> get accruedReservations;
  @override
  $AverageWorkedHoursDataModelCopyWith<$Res> get averageWorkedHoursDataModel;
}

/// @nodoc
class __$ContentDataModelCopyWithImpl<$Res>
    extends _$ContentDataModelCopyWithImpl<$Res>
    implements _$ContentDataModelCopyWith<$Res> {
  __$ContentDataModelCopyWithImpl(
      _ContentDataModel _value, $Res Function(_ContentDataModel) _then)
      : super(_value, (v) => _then(v as _ContentDataModel));

  @override
  _ContentDataModel get _value => super._value as _ContentDataModel;

  @override
  $Res call({
    Object? agencyId = freezed,
    Object? orgName = freezed,
    Object? orgLogo = freezed,
    Object? colorAgency = freezed,
    Object? phone = freezed,
    Object? workedHoursDataModel = freezed,
    Object? accruedReservations = freezed,
    Object? averageWorkedHoursDataModel = freezed,
  }) {
    return _then(_ContentDataModel(
      agencyId: agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
      orgName: orgName == freezed
          ? _value.orgName
          : orgName // ignore: cast_nullable_to_non_nullable
              as String,
      orgLogo: orgLogo == freezed
          ? _value.orgLogo
          : orgLogo // ignore: cast_nullable_to_non_nullable
              as String,
      colorAgency: colorAgency == freezed
          ? _value.colorAgency
          : colorAgency // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      workedHoursDataModel: workedHoursDataModel == freezed
          ? _value.workedHoursDataModel
          : workedHoursDataModel // ignore: cast_nullable_to_non_nullable
              as WorkedHoursDataModel,
      accruedReservations: accruedReservations == freezed
          ? _value.accruedReservations
          : accruedReservations // ignore: cast_nullable_to_non_nullable
              as AccruedReservationsDataModel,
      averageWorkedHoursDataModel: averageWorkedHoursDataModel == freezed
          ? _value.averageWorkedHoursDataModel
          : averageWorkedHoursDataModel // ignore: cast_nullable_to_non_nullable
              as AverageWorkedHoursDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContentDataModel implements _ContentDataModel {
  const _$_ContentDataModel(
      {required this.agencyId,
      required this.orgName,
      required this.orgLogo,
      required this.colorAgency,
      required this.phone,
      required this.workedHoursDataModel,
      required this.accruedReservations,
      required this.averageWorkedHoursDataModel});

  factory _$_ContentDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ContentDataModelFromJson(json);

  @override
  final String agencyId;
  @override
  final String orgName;
  @override
  final String orgLogo;
  @override
  final String colorAgency;
  @override
  final String phone;
  @override
  final WorkedHoursDataModel workedHoursDataModel;
  @override
  final AccruedReservationsDataModel accruedReservations;
  @override
  final AverageWorkedHoursDataModel averageWorkedHoursDataModel;

  @override
  String toString() {
    return 'ContentDataModel(agencyId: $agencyId, orgName: $orgName, orgLogo: $orgLogo, colorAgency: $colorAgency, phone: $phone, workedHoursDataModel: $workedHoursDataModel, accruedReservations: $accruedReservations, averageWorkedHoursDataModel: $averageWorkedHoursDataModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContentDataModel &&
            const DeepCollectionEquality().equals(other.agencyId, agencyId) &&
            const DeepCollectionEquality().equals(other.orgName, orgName) &&
            const DeepCollectionEquality().equals(other.orgLogo, orgLogo) &&
            const DeepCollectionEquality()
                .equals(other.colorAgency, colorAgency) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.workedHoursDataModel, workedHoursDataModel) &&
            const DeepCollectionEquality()
                .equals(other.accruedReservations, accruedReservations) &&
            const DeepCollectionEquality().equals(
                other.averageWorkedHoursDataModel,
                averageWorkedHoursDataModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(agencyId),
      const DeepCollectionEquality().hash(orgName),
      const DeepCollectionEquality().hash(orgLogo),
      const DeepCollectionEquality().hash(colorAgency),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(workedHoursDataModel),
      const DeepCollectionEquality().hash(accruedReservations),
      const DeepCollectionEquality().hash(averageWorkedHoursDataModel));

  @JsonKey(ignore: true)
  @override
  _$ContentDataModelCopyWith<_ContentDataModel> get copyWith =>
      __$ContentDataModelCopyWithImpl<_ContentDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentDataModelToJson(this);
  }
}

abstract class _ContentDataModel implements ContentDataModel {
  const factory _ContentDataModel(
          {required String agencyId,
          required String orgName,
          required String orgLogo,
          required String colorAgency,
          required String phone,
          required WorkedHoursDataModel workedHoursDataModel,
          required AccruedReservationsDataModel accruedReservations,
          required AverageWorkedHoursDataModel averageWorkedHoursDataModel}) =
      _$_ContentDataModel;

  factory _ContentDataModel.fromJson(Map<String, dynamic> json) =
      _$_ContentDataModel.fromJson;

  @override
  String get agencyId;
  @override
  String get orgName;
  @override
  String get orgLogo;
  @override
  String get colorAgency;
  @override
  String get phone;
  @override
  WorkedHoursDataModel get workedHoursDataModel;
  @override
  AccruedReservationsDataModel get accruedReservations;
  @override
  AverageWorkedHoursDataModel get averageWorkedHoursDataModel;
  @override
  @JsonKey(ignore: true)
  _$ContentDataModelCopyWith<_ContentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
