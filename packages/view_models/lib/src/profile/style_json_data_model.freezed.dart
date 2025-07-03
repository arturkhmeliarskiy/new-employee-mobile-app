// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'style_json_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StyleJsonDataModel _$StyleJsonDataModelFromJson(Map<String, dynamic> json) {
  return _StyleJsonDataModel.fromJson(json);
}

/// @nodoc
class _$StyleJsonDataModelTearOff {
  const _$StyleJsonDataModelTearOff();

  _StyleJsonDataModel call({HeaderDataModel? header}) {
    return _StyleJsonDataModel(
      header: header,
    );
  }

  StyleJsonDataModel fromJson(Map<String, Object?> json) {
    return StyleJsonDataModel.fromJson(json);
  }
}

/// @nodoc
const $StyleJsonDataModel = _$StyleJsonDataModelTearOff();

/// @nodoc
mixin _$StyleJsonDataModel {
  HeaderDataModel? get header => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StyleJsonDataModelCopyWith<StyleJsonDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StyleJsonDataModelCopyWith<$Res> {
  factory $StyleJsonDataModelCopyWith(
          StyleJsonDataModel value, $Res Function(StyleJsonDataModel) then) =
      _$StyleJsonDataModelCopyWithImpl<$Res>;
  $Res call({HeaderDataModel? header});

  $HeaderDataModelCopyWith<$Res>? get header;
}

/// @nodoc
class _$StyleJsonDataModelCopyWithImpl<$Res>
    implements $StyleJsonDataModelCopyWith<$Res> {
  _$StyleJsonDataModelCopyWithImpl(this._value, this._then);

  final StyleJsonDataModel _value;
  // ignore: unused_field
  final $Res Function(StyleJsonDataModel) _then;

  @override
  $Res call({
    Object? header = freezed,
  }) {
    return _then(_value.copyWith(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderDataModel?,
    ));
  }

  @override
  $HeaderDataModelCopyWith<$Res>? get header {
    if (_value.header == null) {
      return null;
    }

    return $HeaderDataModelCopyWith<$Res>(_value.header!, (value) {
      return _then(_value.copyWith(header: value));
    });
  }
}

/// @nodoc
abstract class _$StyleJsonDataModelCopyWith<$Res>
    implements $StyleJsonDataModelCopyWith<$Res> {
  factory _$StyleJsonDataModelCopyWith(
          _StyleJsonDataModel value, $Res Function(_StyleJsonDataModel) then) =
      __$StyleJsonDataModelCopyWithImpl<$Res>;
  @override
  $Res call({HeaderDataModel? header});

  @override
  $HeaderDataModelCopyWith<$Res>? get header;
}

/// @nodoc
class __$StyleJsonDataModelCopyWithImpl<$Res>
    extends _$StyleJsonDataModelCopyWithImpl<$Res>
    implements _$StyleJsonDataModelCopyWith<$Res> {
  __$StyleJsonDataModelCopyWithImpl(
      _StyleJsonDataModel _value, $Res Function(_StyleJsonDataModel) _then)
      : super(_value, (v) => _then(v as _StyleJsonDataModel));

  @override
  _StyleJsonDataModel get _value => super._value as _StyleJsonDataModel;

  @override
  $Res call({
    Object? header = freezed,
  }) {
    return _then(_StyleJsonDataModel(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StyleJsonDataModel implements _StyleJsonDataModel {
  const _$_StyleJsonDataModel({this.header});

  factory _$_StyleJsonDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_StyleJsonDataModelFromJson(json);

  @override
  final HeaderDataModel? header;

  @override
  String toString() {
    return 'StyleJsonDataModel(header: $header)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StyleJsonDataModel &&
            const DeepCollectionEquality().equals(other.header, header));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(header));

  @JsonKey(ignore: true)
  @override
  _$StyleJsonDataModelCopyWith<_StyleJsonDataModel> get copyWith =>
      __$StyleJsonDataModelCopyWithImpl<_StyleJsonDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StyleJsonDataModelToJson(this);
  }
}

abstract class _StyleJsonDataModel implements StyleJsonDataModel {
  const factory _StyleJsonDataModel({HeaderDataModel? header}) =
      _$_StyleJsonDataModel;

  factory _StyleJsonDataModel.fromJson(Map<String, dynamic> json) =
      _$_StyleJsonDataModel.fromJson;

  @override
  HeaderDataModel? get header;
  @override
  @JsonKey(ignore: true)
  _$StyleJsonDataModelCopyWith<_StyleJsonDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
