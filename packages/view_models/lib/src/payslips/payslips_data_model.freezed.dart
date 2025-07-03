// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payslips_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PayslipsDataModelTearOff {
  const _$PayslipsDataModelTearOff();

  _PayslipsDataModel call(
      {required int code,
      required String message,
      required List<List<PayslipsInfoDataModel>> agencys}) {
    return _PayslipsDataModel(
      code: code,
      message: message,
      agencys: agencys,
    );
  }
}

/// @nodoc
const $PayslipsDataModel = _$PayslipsDataModelTearOff();

/// @nodoc
mixin _$PayslipsDataModel {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<List<PayslipsInfoDataModel>> get agencys =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PayslipsDataModelCopyWith<PayslipsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayslipsDataModelCopyWith<$Res> {
  factory $PayslipsDataModelCopyWith(
          PayslipsDataModel value, $Res Function(PayslipsDataModel) then) =
      _$PayslipsDataModelCopyWithImpl<$Res>;
  $Res call(
      {int code, String message, List<List<PayslipsInfoDataModel>> agencys});
}

/// @nodoc
class _$PayslipsDataModelCopyWithImpl<$Res>
    implements $PayslipsDataModelCopyWith<$Res> {
  _$PayslipsDataModelCopyWithImpl(this._value, this._then);

  final PayslipsDataModel _value;
  // ignore: unused_field
  final $Res Function(PayslipsDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? agencys = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      agencys: agencys == freezed
          ? _value.agencys
          : agencys // ignore: cast_nullable_to_non_nullable
              as List<List<PayslipsInfoDataModel>>,
    ));
  }
}

/// @nodoc
abstract class _$PayslipsDataModelCopyWith<$Res>
    implements $PayslipsDataModelCopyWith<$Res> {
  factory _$PayslipsDataModelCopyWith(
          _PayslipsDataModel value, $Res Function(_PayslipsDataModel) then) =
      __$PayslipsDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int code, String message, List<List<PayslipsInfoDataModel>> agencys});
}

/// @nodoc
class __$PayslipsDataModelCopyWithImpl<$Res>
    extends _$PayslipsDataModelCopyWithImpl<$Res>
    implements _$PayslipsDataModelCopyWith<$Res> {
  __$PayslipsDataModelCopyWithImpl(
      _PayslipsDataModel _value, $Res Function(_PayslipsDataModel) _then)
      : super(_value, (v) => _then(v as _PayslipsDataModel));

  @override
  _PayslipsDataModel get _value => super._value as _PayslipsDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? agencys = freezed,
  }) {
    return _then(_PayslipsDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      agencys: agencys == freezed
          ? _value.agencys
          : agencys // ignore: cast_nullable_to_non_nullable
              as List<List<PayslipsInfoDataModel>>,
    ));
  }
}

/// @nodoc

class _$_PayslipsDataModel implements _PayslipsDataModel {
  const _$_PayslipsDataModel(
      {required this.code, required this.message, required this.agencys});

  @override
  final int code;
  @override
  final String message;
  @override
  final List<List<PayslipsInfoDataModel>> agencys;

  @override
  String toString() {
    return 'PayslipsDataModel(code: $code, message: $message, agencys: $agencys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PayslipsDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.agencys, agencys));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(agencys));

  @JsonKey(ignore: true)
  @override
  _$PayslipsDataModelCopyWith<_PayslipsDataModel> get copyWith =>
      __$PayslipsDataModelCopyWithImpl<_PayslipsDataModel>(this, _$identity);
}

abstract class _PayslipsDataModel implements PayslipsDataModel {
  const factory _PayslipsDataModel(
          {required int code,
          required String message,
          required List<List<PayslipsInfoDataModel>> agencys}) =
      _$_PayslipsDataModel;

  @override
  int get code;
  @override
  String get message;
  @override
  List<List<PayslipsInfoDataModel>> get agencys;
  @override
  @JsonKey(ignore: true)
  _$PayslipsDataModelCopyWith<_PayslipsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
