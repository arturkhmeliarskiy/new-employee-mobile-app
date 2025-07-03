// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'header_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HeaderDataModel _$HeaderDataModelFromJson(Map<String, dynamic> json) {
  return _HeaderDataModel.fromJson(json);
}

/// @nodoc
class _$HeaderDataModelTearOff {
  const _$HeaderDataModelTearOff();

  _HeaderDataModel call({String? backgroundColor}) {
    return _HeaderDataModel(
      backgroundColor: backgroundColor,
    );
  }

  HeaderDataModel fromJson(Map<String, Object?> json) {
    return HeaderDataModel.fromJson(json);
  }
}

/// @nodoc
const $HeaderDataModel = _$HeaderDataModelTearOff();

/// @nodoc
mixin _$HeaderDataModel {
  String? get backgroundColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeaderDataModelCopyWith<HeaderDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderDataModelCopyWith<$Res> {
  factory $HeaderDataModelCopyWith(
          HeaderDataModel value, $Res Function(HeaderDataModel) then) =
      _$HeaderDataModelCopyWithImpl<$Res>;
  $Res call({String? backgroundColor});
}

/// @nodoc
class _$HeaderDataModelCopyWithImpl<$Res>
    implements $HeaderDataModelCopyWith<$Res> {
  _$HeaderDataModelCopyWithImpl(this._value, this._then);

  final HeaderDataModel _value;
  // ignore: unused_field
  final $Res Function(HeaderDataModel) _then;

  @override
  $Res call({
    Object? backgroundColor = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundColor: backgroundColor == freezed
          ? _value.dialogBackgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$HeaderDataModelCopyWith<$Res>
    implements $HeaderDataModelCopyWith<$Res> {
  factory _$HeaderDataModelCopyWith(
          _HeaderDataModel value, $Res Function(_HeaderDataModel) then) =
      __$HeaderDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String? backgroundColor});
}

/// @nodoc
class __$HeaderDataModelCopyWithImpl<$Res>
    extends _$HeaderDataModelCopyWithImpl<$Res>
    implements _$HeaderDataModelCopyWith<$Res> {
  __$HeaderDataModelCopyWithImpl(
      _HeaderDataModel _value, $Res Function(_HeaderDataModel) _then)
      : super(_value, (v) => _then(v as _HeaderDataModel));

  @override
  _HeaderDataModel get _value => super._value as _HeaderDataModel;

  @override
  $Res call({
    Object? backgroundColor = freezed,
  }) {
    return _then(_HeaderDataModel(
      backgroundColor: backgroundColor == freezed
          ? _value.dialogBackgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HeaderDataModel implements _HeaderDataModel {
  const _$_HeaderDataModel({this.dialogBackgroundColor});

  factory _$_HeaderDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_HeaderDataModelFromJson(json);

  @override
  final String? backgroundColor;

  @override
  String toString() {
    return 'HeaderDataModel(backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HeaderDataModel &&
            const DeepCollectionEquality()
                .equals(other.dialogBackgroundColor, backgroundColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(backgroundColor));

  @JsonKey(ignore: true)
  @override
  _$HeaderDataModelCopyWith<_HeaderDataModel> get copyWith =>
      __$HeaderDataModelCopyWithImpl<_HeaderDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeaderDataModelToJson(this);
  }
}

abstract class _HeaderDataModel implements HeaderDataModel {
  const factory _HeaderDataModel({String? backgroundColor}) =
      _$_HeaderDataModel;

  factory _HeaderDataModel.fromJson(Map<String, dynamic> json) =
      _$_HeaderDataModel.fromJson;

  @override
  String? get backgroundColor;
  @override
  @JsonKey(ignore: true)
  _$HeaderDataModelCopyWith<_HeaderDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
