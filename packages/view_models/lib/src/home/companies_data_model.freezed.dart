// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'companies_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompaniesDataModel _$CompaniesDataModelFromJson(Map<String, dynamic> json) {
  return _CompaniesDataModel.fromJson(json);
}

/// @nodoc
class _$CompaniesDataModelTearOff {
  const _$CompaniesDataModelTearOff();

  _CompaniesDataModel call(
      {required int? code,
      required List<JobCompaniesDataModel>? jobCompanies,
      required int? count}) {
    return _CompaniesDataModel(
      code: code,
      jobCompanies: jobCompanies,
      count: count,
    );
  }

  CompaniesDataModel fromJson(Map<String, Object?> json) {
    return CompaniesDataModel.fromJson(json);
  }
}

/// @nodoc
const $CompaniesDataModel = _$CompaniesDataModelTearOff();

/// @nodoc
mixin _$CompaniesDataModel {
  int? get code => throw _privateConstructorUsedError;
  List<JobCompaniesDataModel>? get jobCompanies =>
      throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompaniesDataModelCopyWith<CompaniesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompaniesDataModelCopyWith<$Res> {
  factory $CompaniesDataModelCopyWith(
          CompaniesDataModel value, $Res Function(CompaniesDataModel) then) =
      _$CompaniesDataModelCopyWithImpl<$Res>;
  $Res call({int? code, List<JobCompaniesDataModel>? jobCompanies, int? count});
}

/// @nodoc
class _$CompaniesDataModelCopyWithImpl<$Res>
    implements $CompaniesDataModelCopyWith<$Res> {
  _$CompaniesDataModelCopyWithImpl(this._value, this._then);

  final CompaniesDataModel _value;
  // ignore: unused_field
  final $Res Function(CompaniesDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? jobCompanies = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      jobCompanies: jobCompanies == freezed
          ? _value.jobCompanies
          : jobCompanies // ignore: cast_nullable_to_non_nullable
              as List<JobCompaniesDataModel>?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CompaniesDataModelCopyWith<$Res>
    implements $CompaniesDataModelCopyWith<$Res> {
  factory _$CompaniesDataModelCopyWith(
          _CompaniesDataModel value, $Res Function(_CompaniesDataModel) then) =
      __$CompaniesDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int? code, List<JobCompaniesDataModel>? jobCompanies, int? count});
}

/// @nodoc
class __$CompaniesDataModelCopyWithImpl<$Res>
    extends _$CompaniesDataModelCopyWithImpl<$Res>
    implements _$CompaniesDataModelCopyWith<$Res> {
  __$CompaniesDataModelCopyWithImpl(
      _CompaniesDataModel _value, $Res Function(_CompaniesDataModel) _then)
      : super(_value, (v) => _then(v as _CompaniesDataModel));

  @override
  _CompaniesDataModel get _value => super._value as _CompaniesDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? jobCompanies = freezed,
    Object? count = freezed,
  }) {
    return _then(_CompaniesDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      jobCompanies: jobCompanies == freezed
          ? _value.jobCompanies
          : jobCompanies // ignore: cast_nullable_to_non_nullable
              as List<JobCompaniesDataModel>?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompaniesDataModel implements _CompaniesDataModel {
  const _$_CompaniesDataModel(
      {required this.code, required this.jobCompanies, required this.count});

  factory _$_CompaniesDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CompaniesDataModelFromJson(json);

  @override
  final int? code;
  @override
  final List<JobCompaniesDataModel>? jobCompanies;
  @override
  final int? count;

  @override
  String toString() {
    return 'CompaniesDataModel(code: $code, jobCompanies: $jobCompanies, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompaniesDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.jobCompanies, jobCompanies) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(jobCompanies),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$CompaniesDataModelCopyWith<_CompaniesDataModel> get copyWith =>
      __$CompaniesDataModelCopyWithImpl<_CompaniesDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompaniesDataModelToJson(this);
  }
}

abstract class _CompaniesDataModel implements CompaniesDataModel {
  const factory _CompaniesDataModel(
      {required int? code,
      required List<JobCompaniesDataModel>? jobCompanies,
      required int? count}) = _$_CompaniesDataModel;

  factory _CompaniesDataModel.fromJson(Map<String, dynamic> json) =
      _$_CompaniesDataModel.fromJson;

  @override
  int? get code;
  @override
  List<JobCompaniesDataModel>? get jobCompanies;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$CompaniesDataModelCopyWith<_CompaniesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
