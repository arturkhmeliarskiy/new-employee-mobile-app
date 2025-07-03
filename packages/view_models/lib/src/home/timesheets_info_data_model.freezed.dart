// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timesheets_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimesheetsInfoDataModel _$TimesheetsInfoDataModelFromJson(
    Map<String, dynamic> json) {
  return _TimesheetsInfoDataModel.fromJson(json);
}

/// @nodoc
class _$TimesheetsInfoDataModelTearOff {
  const _$TimesheetsInfoDataModelTearOff();

  _TimesheetsInfoDataModel call(
      {required int code,
      required int totalCount,
      required List<TimesheetsDataModel> timesheets}) {
    return _TimesheetsInfoDataModel(
      code: code,
      totalCount: totalCount,
      timesheets: timesheets,
    );
  }

  TimesheetsInfoDataModel fromJson(Map<String, Object?> json) {
    return TimesheetsInfoDataModel.fromJson(json);
  }
}

/// @nodoc
const $TimesheetsInfoDataModel = _$TimesheetsInfoDataModelTearOff();

/// @nodoc
mixin _$TimesheetsInfoDataModel {
  int get code => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  List<TimesheetsDataModel> get timesheets =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimesheetsInfoDataModelCopyWith<TimesheetsInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimesheetsInfoDataModelCopyWith<$Res> {
  factory $TimesheetsInfoDataModelCopyWith(TimesheetsInfoDataModel value,
          $Res Function(TimesheetsInfoDataModel) then) =
      _$TimesheetsInfoDataModelCopyWithImpl<$Res>;
  $Res call({int code, int totalCount, List<TimesheetsDataModel> timesheets});
}

/// @nodoc
class _$TimesheetsInfoDataModelCopyWithImpl<$Res>
    implements $TimesheetsInfoDataModelCopyWith<$Res> {
  _$TimesheetsInfoDataModelCopyWithImpl(this._value, this._then);

  final TimesheetsInfoDataModel _value;
  // ignore: unused_field
  final $Res Function(TimesheetsInfoDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? totalCount = freezed,
    Object? timesheets = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      timesheets: timesheets == freezed
          ? _value.timesheets
          : timesheets // ignore: cast_nullable_to_non_nullable
              as List<TimesheetsDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$TimesheetsInfoDataModelCopyWith<$Res>
    implements $TimesheetsInfoDataModelCopyWith<$Res> {
  factory _$TimesheetsInfoDataModelCopyWith(_TimesheetsInfoDataModel value,
          $Res Function(_TimesheetsInfoDataModel) then) =
      __$TimesheetsInfoDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int code, int totalCount, List<TimesheetsDataModel> timesheets});
}

/// @nodoc
class __$TimesheetsInfoDataModelCopyWithImpl<$Res>
    extends _$TimesheetsInfoDataModelCopyWithImpl<$Res>
    implements _$TimesheetsInfoDataModelCopyWith<$Res> {
  __$TimesheetsInfoDataModelCopyWithImpl(_TimesheetsInfoDataModel _value,
      $Res Function(_TimesheetsInfoDataModel) _then)
      : super(_value, (v) => _then(v as _TimesheetsInfoDataModel));

  @override
  _TimesheetsInfoDataModel get _value =>
      super._value as _TimesheetsInfoDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? totalCount = freezed,
    Object? timesheets = freezed,
  }) {
    return _then(_TimesheetsInfoDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      timesheets: timesheets == freezed
          ? _value.timesheets
          : timesheets // ignore: cast_nullable_to_non_nullable
              as List<TimesheetsDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimesheetsInfoDataModel implements _TimesheetsInfoDataModel {
  const _$_TimesheetsInfoDataModel(
      {required this.code, required this.totalCount, required this.timesheets});

  factory _$_TimesheetsInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_TimesheetsInfoDataModelFromJson(json);

  @override
  final int code;
  @override
  final int totalCount;
  @override
  final List<TimesheetsDataModel> timesheets;

  @override
  String toString() {
    return 'TimesheetsInfoDataModel(code: $code, totalCount: $totalCount, timesheets: $timesheets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimesheetsInfoDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality()
                .equals(other.timesheets, timesheets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(timesheets));

  @JsonKey(ignore: true)
  @override
  _$TimesheetsInfoDataModelCopyWith<_TimesheetsInfoDataModel> get copyWith =>
      __$TimesheetsInfoDataModelCopyWithImpl<_TimesheetsInfoDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimesheetsInfoDataModelToJson(this);
  }
}

abstract class _TimesheetsInfoDataModel implements TimesheetsInfoDataModel {
  const factory _TimesheetsInfoDataModel(
          {required int code,
          required int totalCount,
          required List<TimesheetsDataModel> timesheets}) =
      _$_TimesheetsInfoDataModel;

  factory _TimesheetsInfoDataModel.fromJson(Map<String, dynamic> json) =
      _$_TimesheetsInfoDataModel.fromJson;

  @override
  int get code;
  @override
  int get totalCount;
  @override
  List<TimesheetsDataModel> get timesheets;
  @override
  @JsonKey(ignore: true)
  _$TimesheetsInfoDataModelCopyWith<_TimesheetsInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
