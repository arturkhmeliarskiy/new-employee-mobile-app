// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'do_save_expenses_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoSaveExpensesModel _$DoSaveExpensesModelFromJson(Map<String, dynamic> json) {
  return _DoSaveExpensesModel.fromJson(json);
}

/// @nodoc
class _$DoSaveExpensesModelTearOff {
  const _$DoSaveExpensesModelTearOff();

  _DoSaveExpensesModel call(
      {required String sortedExpensesMapAsJSON,
      required ExpensesSortedMapModel sortedExpensesMap}) {
    return _DoSaveExpensesModel(
      sortedExpensesMapAsJSON: sortedExpensesMapAsJSON,
      sortedExpensesMap: sortedExpensesMap,
    );
  }

  DoSaveExpensesModel fromJson(Map<String, Object?> json) {
    return DoSaveExpensesModel.fromJson(json);
  }
}

/// @nodoc
const $DoSaveExpensesModel = _$DoSaveExpensesModelTearOff();

/// @nodoc
mixin _$DoSaveExpensesModel {
  String get sortedExpensesMapAsJSON => throw _privateConstructorUsedError;
  ExpensesSortedMapModel get sortedExpensesMap =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoSaveExpensesModelCopyWith<DoSaveExpensesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoSaveExpensesModelCopyWith<$Res> {
  factory $DoSaveExpensesModelCopyWith(
          DoSaveExpensesModel value, $Res Function(DoSaveExpensesModel) then) =
      _$DoSaveExpensesModelCopyWithImpl<$Res>;
  $Res call(
      {String sortedExpensesMapAsJSON,
      ExpensesSortedMapModel sortedExpensesMap});

  $ExpensesSortedMapModelCopyWith<$Res> get sortedExpensesMap;
}

/// @nodoc
class _$DoSaveExpensesModelCopyWithImpl<$Res>
    implements $DoSaveExpensesModelCopyWith<$Res> {
  _$DoSaveExpensesModelCopyWithImpl(this._value, this._then);

  final DoSaveExpensesModel _value;
  // ignore: unused_field
  final $Res Function(DoSaveExpensesModel) _then;

  @override
  $Res call({
    Object? sortedExpensesMapAsJSON = freezed,
    Object? sortedExpensesMap = freezed,
  }) {
    return _then(_value.copyWith(
      sortedExpensesMapAsJSON: sortedExpensesMapAsJSON == freezed
          ? _value.sortedExpensesMapAsJSON
          : sortedExpensesMapAsJSON // ignore: cast_nullable_to_non_nullable
              as String,
      sortedExpensesMap: sortedExpensesMap == freezed
          ? _value.sortedExpensesMap
          : sortedExpensesMap // ignore: cast_nullable_to_non_nullable
              as ExpensesSortedMapModel,
    ));
  }

  @override
  $ExpensesSortedMapModelCopyWith<$Res> get sortedExpensesMap {
    return $ExpensesSortedMapModelCopyWith<$Res>(_value.sortedExpensesMap,
        (value) {
      return _then(_value.copyWith(sortedExpensesMap: value));
    });
  }
}

/// @nodoc
abstract class _$DoSaveExpensesModelCopyWith<$Res>
    implements $DoSaveExpensesModelCopyWith<$Res> {
  factory _$DoSaveExpensesModelCopyWith(_DoSaveExpensesModel value,
          $Res Function(_DoSaveExpensesModel) then) =
      __$DoSaveExpensesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String sortedExpensesMapAsJSON,
      ExpensesSortedMapModel sortedExpensesMap});

  @override
  $ExpensesSortedMapModelCopyWith<$Res> get sortedExpensesMap;
}

/// @nodoc
class __$DoSaveExpensesModelCopyWithImpl<$Res>
    extends _$DoSaveExpensesModelCopyWithImpl<$Res>
    implements _$DoSaveExpensesModelCopyWith<$Res> {
  __$DoSaveExpensesModelCopyWithImpl(
      _DoSaveExpensesModel _value, $Res Function(_DoSaveExpensesModel) _then)
      : super(_value, (v) => _then(v as _DoSaveExpensesModel));

  @override
  _DoSaveExpensesModel get _value => super._value as _DoSaveExpensesModel;

  @override
  $Res call({
    Object? sortedExpensesMapAsJSON = freezed,
    Object? sortedExpensesMap = freezed,
  }) {
    return _then(_DoSaveExpensesModel(
      sortedExpensesMapAsJSON: sortedExpensesMapAsJSON == freezed
          ? _value.sortedExpensesMapAsJSON
          : sortedExpensesMapAsJSON // ignore: cast_nullable_to_non_nullable
              as String,
      sortedExpensesMap: sortedExpensesMap == freezed
          ? _value.sortedExpensesMap
          : sortedExpensesMap // ignore: cast_nullable_to_non_nullable
              as ExpensesSortedMapModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DoSaveExpensesModel implements _DoSaveExpensesModel {
  const _$_DoSaveExpensesModel(
      {required this.sortedExpensesMapAsJSON, required this.sortedExpensesMap});

  factory _$_DoSaveExpensesModel.fromJson(Map<String, dynamic> json) =>
      _$$_DoSaveExpensesModelFromJson(json);

  @override
  final String sortedExpensesMapAsJSON;
  @override
  final ExpensesSortedMapModel sortedExpensesMap;

  @override
  String toString() {
    return 'DoSaveExpensesModel(sortedExpensesMapAsJSON: $sortedExpensesMapAsJSON, sortedExpensesMap: $sortedExpensesMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoSaveExpensesModel &&
            const DeepCollectionEquality().equals(
                other.sortedExpensesMapAsJSON, sortedExpensesMapAsJSON) &&
            const DeepCollectionEquality()
                .equals(other.sortedExpensesMap, sortedExpensesMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sortedExpensesMapAsJSON),
      const DeepCollectionEquality().hash(sortedExpensesMap));

  @JsonKey(ignore: true)
  @override
  _$DoSaveExpensesModelCopyWith<_DoSaveExpensesModel> get copyWith =>
      __$DoSaveExpensesModelCopyWithImpl<_DoSaveExpensesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoSaveExpensesModelToJson(this);
  }
}

abstract class _DoSaveExpensesModel implements DoSaveExpensesModel {
  const factory _DoSaveExpensesModel(
          {required String sortedExpensesMapAsJSON,
          required ExpensesSortedMapModel sortedExpensesMap}) =
      _$_DoSaveExpensesModel;

  factory _DoSaveExpensesModel.fromJson(Map<String, dynamic> json) =
      _$_DoSaveExpensesModel.fromJson;

  @override
  String get sortedExpensesMapAsJSON;
  @override
  ExpensesSortedMapModel get sortedExpensesMap;
  @override
  @JsonKey(ignore: true)
  _$DoSaveExpensesModelCopyWith<_DoSaveExpensesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
