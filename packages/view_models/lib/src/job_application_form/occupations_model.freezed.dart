// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'occupations_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OccupationsModel _$OccupationsModelFromJson(Map<String, dynamic> json) {
  return _OccupationsModel.fromJson(json);
}

/// @nodoc
class _$OccupationsModelTearOff {
  const _$OccupationsModelTearOff();

  _OccupationsModel call({required String id, required String name}) {
    return _OccupationsModel(
      id: id,
      name: name,
    );
  }

  OccupationsModel fromJson(Map<String, Object?> json) {
    return OccupationsModel.fromJson(json);
  }
}

/// @nodoc
const $OccupationsModel = _$OccupationsModelTearOff();

/// @nodoc
mixin _$OccupationsModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccupationsModelCopyWith<OccupationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccupationsModelCopyWith<$Res> {
  factory $OccupationsModelCopyWith(
          OccupationsModel value, $Res Function(OccupationsModel) then) =
      _$OccupationsModelCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$OccupationsModelCopyWithImpl<$Res>
    implements $OccupationsModelCopyWith<$Res> {
  _$OccupationsModelCopyWithImpl(this._value, this._then);

  final OccupationsModel _value;
  // ignore: unused_field
  final $Res Function(OccupationsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OccupationsModelCopyWith<$Res>
    implements $OccupationsModelCopyWith<$Res> {
  factory _$OccupationsModelCopyWith(
          _OccupationsModel value, $Res Function(_OccupationsModel) then) =
      __$OccupationsModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$OccupationsModelCopyWithImpl<$Res>
    extends _$OccupationsModelCopyWithImpl<$Res>
    implements _$OccupationsModelCopyWith<$Res> {
  __$OccupationsModelCopyWithImpl(
      _OccupationsModel _value, $Res Function(_OccupationsModel) _then)
      : super(_value, (v) => _then(v as _OccupationsModel));

  @override
  _OccupationsModel get _value => super._value as _OccupationsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_OccupationsModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OccupationsModel implements _OccupationsModel {
  const _$_OccupationsModel({required this.id, required this.name});

  factory _$_OccupationsModel.fromJson(Map<String, dynamic> json) =>
      _$$_OccupationsModelFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'OccupationsModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OccupationsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$OccupationsModelCopyWith<_OccupationsModel> get copyWith =>
      __$OccupationsModelCopyWithImpl<_OccupationsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OccupationsModelToJson(this);
  }
}

abstract class _OccupationsModel implements OccupationsModel {
  const factory _OccupationsModel({required String id, required String name}) =
      _$_OccupationsModel;

  factory _OccupationsModel.fromJson(Map<String, dynamic> json) =
      _$_OccupationsModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$OccupationsModelCopyWith<_OccupationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
