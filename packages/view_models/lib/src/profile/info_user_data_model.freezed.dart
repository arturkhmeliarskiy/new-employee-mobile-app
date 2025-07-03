// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfoUserDataModel _$InfoUserDataModelFromJson(Map<String, dynamic> json) {
  return _InfoUserDataModel.fromJson(json);
}

/// @nodoc
class _$InfoUserDataModelTearOff {
  const _$InfoUserDataModelTearOff();

  _InfoUserDataModel call(
      {UserDataInfoModel? user,
      List<RecordsDataModel>? recordsData,
      List<AgencyDataModel>? agencyData}) {
    return _InfoUserDataModel(
      user: user,
      recordsData: recordsData,
      agencyData: agencyData,
    );
  }

  InfoUserDataModel fromJson(Map<String, Object?> json) {
    return InfoUserDataModel.fromJson(json);
  }
}

/// @nodoc
const $InfoUserDataModel = _$InfoUserDataModelTearOff();

/// @nodoc
mixin _$InfoUserDataModel {
  UserDataInfoModel? get user => throw _privateConstructorUsedError;
  List<RecordsDataModel>? get recordsData => throw _privateConstructorUsedError;
  List<AgencyDataModel>? get agencyData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoUserDataModelCopyWith<InfoUserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoUserDataModelCopyWith<$Res> {
  factory $InfoUserDataModelCopyWith(
          InfoUserDataModel value, $Res Function(InfoUserDataModel) then) =
      _$InfoUserDataModelCopyWithImpl<$Res>;
  $Res call(
      {UserDataInfoModel? user,
      List<RecordsDataModel>? recordsData,
      List<AgencyDataModel>? agencyData});

  $UserDataInfoModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$InfoUserDataModelCopyWithImpl<$Res>
    implements $InfoUserDataModelCopyWith<$Res> {
  _$InfoUserDataModelCopyWithImpl(this._value, this._then);

  final InfoUserDataModel _value;
  // ignore: unused_field
  final $Res Function(InfoUserDataModel) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? recordsData = freezed,
    Object? agencyData = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDataInfoModel?,
      recordsData: recordsData == freezed
          ? _value.recordsData
          : recordsData // ignore: cast_nullable_to_non_nullable
              as List<RecordsDataModel>?,
      agencyData: agencyData == freezed
          ? _value.agencyData
          : agencyData // ignore: cast_nullable_to_non_nullable
              as List<AgencyDataModel>?,
    ));
  }

  @override
  $UserDataInfoModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDataInfoModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$InfoUserDataModelCopyWith<$Res>
    implements $InfoUserDataModelCopyWith<$Res> {
  factory _$InfoUserDataModelCopyWith(
          _InfoUserDataModel value, $Res Function(_InfoUserDataModel) then) =
      __$InfoUserDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserDataInfoModel? user,
      List<RecordsDataModel>? recordsData,
      List<AgencyDataModel>? agencyData});

  @override
  $UserDataInfoModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$InfoUserDataModelCopyWithImpl<$Res>
    extends _$InfoUserDataModelCopyWithImpl<$Res>
    implements _$InfoUserDataModelCopyWith<$Res> {
  __$InfoUserDataModelCopyWithImpl(
      _InfoUserDataModel _value, $Res Function(_InfoUserDataModel) _then)
      : super(_value, (v) => _then(v as _InfoUserDataModel));

  @override
  _InfoUserDataModel get _value => super._value as _InfoUserDataModel;

  @override
  $Res call({
    Object? user = freezed,
    Object? recordsData = freezed,
    Object? agencyData = freezed,
  }) {
    return _then(_InfoUserDataModel(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDataInfoModel?,
      recordsData: recordsData == freezed
          ? _value.recordsData
          : recordsData // ignore: cast_nullable_to_non_nullable
              as List<RecordsDataModel>?,
      agencyData: agencyData == freezed
          ? _value.agencyData
          : agencyData // ignore: cast_nullable_to_non_nullable
              as List<AgencyDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InfoUserDataModel implements _InfoUserDataModel {
  const _$_InfoUserDataModel({this.user, this.recordsData, this.agencyData});

  factory _$_InfoUserDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_InfoUserDataModelFromJson(json);

  @override
  final UserDataInfoModel? user;
  @override
  final List<RecordsDataModel>? recordsData;
  @override
  final List<AgencyDataModel>? agencyData;

  @override
  String toString() {
    return 'InfoUserDataModel(user: $user, recordsData: $recordsData, agencyData: $agencyData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InfoUserDataModel &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.recordsData, recordsData) &&
            const DeepCollectionEquality()
                .equals(other.agencyData, agencyData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(recordsData),
      const DeepCollectionEquality().hash(agencyData));

  @JsonKey(ignore: true)
  @override
  _$InfoUserDataModelCopyWith<_InfoUserDataModel> get copyWith =>
      __$InfoUserDataModelCopyWithImpl<_InfoUserDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoUserDataModelToJson(this);
  }
}

abstract class _InfoUserDataModel implements InfoUserDataModel {
  const factory _InfoUserDataModel(
      {UserDataInfoModel? user,
      List<RecordsDataModel>? recordsData,
      List<AgencyDataModel>? agencyData}) = _$_InfoUserDataModel;

  factory _InfoUserDataModel.fromJson(Map<String, dynamic> json) =
      _$_InfoUserDataModel.fromJson;

  @override
  UserDataInfoModel? get user;
  @override
  List<RecordsDataModel>? get recordsData;
  @override
  List<AgencyDataModel>? get agencyData;
  @override
  @JsonKey(ignore: true)
  _$InfoUserDataModelCopyWith<_InfoUserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
