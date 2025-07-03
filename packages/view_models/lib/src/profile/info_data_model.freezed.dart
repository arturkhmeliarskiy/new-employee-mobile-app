// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfoDataModel _$InfoDataModelFromJson(Map<String, dynamic> json) {
  return _InfoDataModel.fromJson(json);
}

/// @nodoc
class _$InfoDataModelTearOff {
  const _$InfoDataModelTearOff();

  _InfoDataModel call({InfoUserDataModel? infoUser}) {
    return _InfoDataModel(
      infoUser: infoUser,
    );
  }

  InfoDataModel fromJson(Map<String, Object?> json) {
    return InfoDataModel.fromJson(json);
  }
}

/// @nodoc
const $InfoDataModel = _$InfoDataModelTearOff();

/// @nodoc
mixin _$InfoDataModel {
  InfoUserDataModel? get infoUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoDataModelCopyWith<InfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoDataModelCopyWith<$Res> {
  factory $InfoDataModelCopyWith(
          InfoDataModel value, $Res Function(InfoDataModel) then) =
      _$InfoDataModelCopyWithImpl<$Res>;
  $Res call({InfoUserDataModel? infoUser});

  $InfoUserDataModelCopyWith<$Res>? get infoUser;
}

/// @nodoc
class _$InfoDataModelCopyWithImpl<$Res>
    implements $InfoDataModelCopyWith<$Res> {
  _$InfoDataModelCopyWithImpl(this._value, this._then);

  final InfoDataModel _value;
  // ignore: unused_field
  final $Res Function(InfoDataModel) _then;

  @override
  $Res call({
    Object? infoUser = freezed,
  }) {
    return _then(_value.copyWith(
      infoUser: infoUser == freezed
          ? _value.infoUser
          : infoUser // ignore: cast_nullable_to_non_nullable
              as InfoUserDataModel?,
    ));
  }

  @override
  $InfoUserDataModelCopyWith<$Res>? get infoUser {
    if (_value.infoUser == null) {
      return null;
    }

    return $InfoUserDataModelCopyWith<$Res>(_value.infoUser!, (value) {
      return _then(_value.copyWith(infoUser: value));
    });
  }
}

/// @nodoc
abstract class _$InfoDataModelCopyWith<$Res>
    implements $InfoDataModelCopyWith<$Res> {
  factory _$InfoDataModelCopyWith(
          _InfoDataModel value, $Res Function(_InfoDataModel) then) =
      __$InfoDataModelCopyWithImpl<$Res>;
  @override
  $Res call({InfoUserDataModel? infoUser});

  @override
  $InfoUserDataModelCopyWith<$Res>? get infoUser;
}

/// @nodoc
class __$InfoDataModelCopyWithImpl<$Res>
    extends _$InfoDataModelCopyWithImpl<$Res>
    implements _$InfoDataModelCopyWith<$Res> {
  __$InfoDataModelCopyWithImpl(
      _InfoDataModel _value, $Res Function(_InfoDataModel) _then)
      : super(_value, (v) => _then(v as _InfoDataModel));

  @override
  _InfoDataModel get _value => super._value as _InfoDataModel;

  @override
  $Res call({
    Object? infoUser = freezed,
  }) {
    return _then(_InfoDataModel(
      infoUser: infoUser == freezed
          ? _value.infoUser
          : infoUser // ignore: cast_nullable_to_non_nullable
              as InfoUserDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InfoDataModel implements _InfoDataModel {
  const _$_InfoDataModel({this.infoUser});

  factory _$_InfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_InfoDataModelFromJson(json);

  @override
  final InfoUserDataModel? infoUser;

  @override
  String toString() {
    return 'InfoDataModel(infoUser: $infoUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InfoDataModel &&
            const DeepCollectionEquality().equals(other.infoUser, infoUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(infoUser));

  @JsonKey(ignore: true)
  @override
  _$InfoDataModelCopyWith<_InfoDataModel> get copyWith =>
      __$InfoDataModelCopyWithImpl<_InfoDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoDataModelToJson(this);
  }
}

abstract class _InfoDataModel implements InfoDataModel {
  const factory _InfoDataModel({InfoUserDataModel? infoUser}) =
      _$_InfoDataModel;

  factory _InfoDataModel.fromJson(Map<String, dynamic> json) =
      _$_InfoDataModel.fromJson;

  @override
  InfoUserDataModel? get infoUser;
  @override
  @JsonKey(ignore: true)
  _$InfoDataModelCopyWith<_InfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
