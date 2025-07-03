// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'approval_Info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApprovalInfoDataModel _$ApprovalInfoDataModelFromJson(
    Map<String, dynamic> json) {
  return _ApprovalInfoDataModel.fromJson(json);
}

/// @nodoc
class _$ApprovalInfoDataModelTearOff {
  const _$ApprovalInfoDataModelTearOff();

  _ApprovalInfoDataModel call({required String id, required String status}) {
    return _ApprovalInfoDataModel(
      id: id,
      status: status,
    );
  }

  ApprovalInfoDataModel fromJson(Map<String, Object?> json) {
    return ApprovalInfoDataModel.fromJson(json);
  }
}

/// @nodoc
const $ApprovalInfoDataModel = _$ApprovalInfoDataModelTearOff();

/// @nodoc
mixin _$ApprovalInfoDataModel {
  String get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApprovalInfoDataModelCopyWith<ApprovalInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalInfoDataModelCopyWith<$Res> {
  factory $ApprovalInfoDataModelCopyWith(ApprovalInfoDataModel value,
          $Res Function(ApprovalInfoDataModel) then) =
      _$ApprovalInfoDataModelCopyWithImpl<$Res>;
  $Res call({String id, String status});
}

/// @nodoc
class _$ApprovalInfoDataModelCopyWithImpl<$Res>
    implements $ApprovalInfoDataModelCopyWith<$Res> {
  _$ApprovalInfoDataModelCopyWithImpl(this._value, this._then);

  final ApprovalInfoDataModel _value;
  // ignore: unused_field
  final $Res Function(ApprovalInfoDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApprovalInfoDataModelCopyWith<$Res>
    implements $ApprovalInfoDataModelCopyWith<$Res> {
  factory _$ApprovalInfoDataModelCopyWith(_ApprovalInfoDataModel value,
          $Res Function(_ApprovalInfoDataModel) then) =
      __$ApprovalInfoDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String status});
}

/// @nodoc
class __$ApprovalInfoDataModelCopyWithImpl<$Res>
    extends _$ApprovalInfoDataModelCopyWithImpl<$Res>
    implements _$ApprovalInfoDataModelCopyWith<$Res> {
  __$ApprovalInfoDataModelCopyWithImpl(_ApprovalInfoDataModel _value,
      $Res Function(_ApprovalInfoDataModel) _then)
      : super(_value, (v) => _then(v as _ApprovalInfoDataModel));

  @override
  _ApprovalInfoDataModel get _value => super._value as _ApprovalInfoDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_ApprovalInfoDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApprovalInfoDataModel implements _ApprovalInfoDataModel {
  const _$_ApprovalInfoDataModel({required this.id, required this.status});

  factory _$_ApprovalInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApprovalInfoDataModelFromJson(json);

  @override
  final String id;
  @override
  final String status;

  @override
  String toString() {
    return 'ApprovalInfoDataModel(id: $id, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApprovalInfoDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$ApprovalInfoDataModelCopyWith<_ApprovalInfoDataModel> get copyWith =>
      __$ApprovalInfoDataModelCopyWithImpl<_ApprovalInfoDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApprovalInfoDataModelToJson(this);
  }
}

abstract class _ApprovalInfoDataModel implements ApprovalInfoDataModel {
  const factory _ApprovalInfoDataModel(
      {required String id, required String status}) = _$_ApprovalInfoDataModel;

  factory _ApprovalInfoDataModel.fromJson(Map<String, dynamic> json) =
      _$_ApprovalInfoDataModel.fromJson;

  @override
  String get id;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$ApprovalInfoDataModelCopyWith<_ApprovalInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
