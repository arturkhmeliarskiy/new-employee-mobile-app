// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'expenses_sorted_map_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExpensesSortedMapModel _$ExpensesSortedMapModelFromJson(
    Map<String, dynamic> json) {
  return _ExpensesSortedMapModel.fromJson(json);
}

/// @nodoc
class _$ExpensesSortedMapModelTearOff {
  const _$ExpensesSortedMapModelTearOff();

  _ExpensesSortedMapModel call(
      {required List<ExpensesDayModel> toInsert,
      required List<ExpensesDayModel> toUpdate,
      required List<ExpensesDayModel> toDelete}) {
    return _ExpensesSortedMapModel(
      toInsert: toInsert,
      toUpdate: toUpdate,
      toDelete: toDelete,
    );
  }

  ExpensesSortedMapModel fromJson(Map<String, Object?> json) {
    return ExpensesSortedMapModel.fromJson(json);
  }
}

/// @nodoc
const $ExpensesSortedMapModel = _$ExpensesSortedMapModelTearOff();

/// @nodoc
mixin _$ExpensesSortedMapModel {
  List<ExpensesDayModel> get toInsert => throw _privateConstructorUsedError;
  List<ExpensesDayModel> get toUpdate => throw _privateConstructorUsedError;
  List<ExpensesDayModel> get toDelete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpensesSortedMapModelCopyWith<ExpensesSortedMapModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesSortedMapModelCopyWith<$Res> {
  factory $ExpensesSortedMapModelCopyWith(ExpensesSortedMapModel value,
          $Res Function(ExpensesSortedMapModel) then) =
      _$ExpensesSortedMapModelCopyWithImpl<$Res>;
  $Res call(
      {List<ExpensesDayModel> toInsert,
      List<ExpensesDayModel> toUpdate,
      List<ExpensesDayModel> toDelete});
}

/// @nodoc
class _$ExpensesSortedMapModelCopyWithImpl<$Res>
    implements $ExpensesSortedMapModelCopyWith<$Res> {
  _$ExpensesSortedMapModelCopyWithImpl(this._value, this._then);

  final ExpensesSortedMapModel _value;
  // ignore: unused_field
  final $Res Function(ExpensesSortedMapModel) _then;

  @override
  $Res call({
    Object? toInsert = freezed,
    Object? toUpdate = freezed,
    Object? toDelete = freezed,
  }) {
    return _then(_value.copyWith(
      toInsert: toInsert == freezed
          ? _value.toInsert
          : toInsert // ignore: cast_nullable_to_non_nullable
              as List<ExpensesDayModel>,
      toUpdate: toUpdate == freezed
          ? _value.toUpdate
          : toUpdate // ignore: cast_nullable_to_non_nullable
              as List<ExpensesDayModel>,
      toDelete: toDelete == freezed
          ? _value.toDelete
          : toDelete // ignore: cast_nullable_to_non_nullable
              as List<ExpensesDayModel>,
    ));
  }
}

/// @nodoc
abstract class _$ExpensesSortedMapModelCopyWith<$Res>
    implements $ExpensesSortedMapModelCopyWith<$Res> {
  factory _$ExpensesSortedMapModelCopyWith(_ExpensesSortedMapModel value,
          $Res Function(_ExpensesSortedMapModel) then) =
      __$ExpensesSortedMapModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ExpensesDayModel> toInsert,
      List<ExpensesDayModel> toUpdate,
      List<ExpensesDayModel> toDelete});
}

/// @nodoc
class __$ExpensesSortedMapModelCopyWithImpl<$Res>
    extends _$ExpensesSortedMapModelCopyWithImpl<$Res>
    implements _$ExpensesSortedMapModelCopyWith<$Res> {
  __$ExpensesSortedMapModelCopyWithImpl(_ExpensesSortedMapModel _value,
      $Res Function(_ExpensesSortedMapModel) _then)
      : super(_value, (v) => _then(v as _ExpensesSortedMapModel));

  @override
  _ExpensesSortedMapModel get _value => super._value as _ExpensesSortedMapModel;

  @override
  $Res call({
    Object? toInsert = freezed,
    Object? toUpdate = freezed,
    Object? toDelete = freezed,
  }) {
    return _then(_ExpensesSortedMapModel(
      toInsert: toInsert == freezed
          ? _value.toInsert
          : toInsert // ignore: cast_nullable_to_non_nullable
              as List<ExpensesDayModel>,
      toUpdate: toUpdate == freezed
          ? _value.toUpdate
          : toUpdate // ignore: cast_nullable_to_non_nullable
              as List<ExpensesDayModel>,
      toDelete: toDelete == freezed
          ? _value.toDelete
          : toDelete // ignore: cast_nullable_to_non_nullable
              as List<ExpensesDayModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpensesSortedMapModel implements _ExpensesSortedMapModel {
  const _$_ExpensesSortedMapModel(
      {required this.toInsert, required this.toUpdate, required this.toDelete});

  factory _$_ExpensesSortedMapModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExpensesSortedMapModelFromJson(json);

  @override
  final List<ExpensesDayModel> toInsert;
  @override
  final List<ExpensesDayModel> toUpdate;
  @override
  final List<ExpensesDayModel> toDelete;

  @override
  String toString() {
    return 'ExpensesSortedMapModel(toInsert: $toInsert, toUpdate: $toUpdate, toDelete: $toDelete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpensesSortedMapModel &&
            const DeepCollectionEquality().equals(other.toInsert, toInsert) &&
            const DeepCollectionEquality().equals(other.toUpdate, toUpdate) &&
            const DeepCollectionEquality().equals(other.toDelete, toDelete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(toInsert),
      const DeepCollectionEquality().hash(toUpdate),
      const DeepCollectionEquality().hash(toDelete));

  @JsonKey(ignore: true)
  @override
  _$ExpensesSortedMapModelCopyWith<_ExpensesSortedMapModel> get copyWith =>
      __$ExpensesSortedMapModelCopyWithImpl<_ExpensesSortedMapModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpensesSortedMapModelToJson(this);
  }
}

abstract class _ExpensesSortedMapModel implements ExpensesSortedMapModel {
  const factory _ExpensesSortedMapModel(
      {required List<ExpensesDayModel> toInsert,
      required List<ExpensesDayModel> toUpdate,
      required List<ExpensesDayModel> toDelete}) = _$_ExpensesSortedMapModel;

  factory _ExpensesSortedMapModel.fromJson(Map<String, dynamic> json) =
      _$_ExpensesSortedMapModel.fromJson;

  @override
  List<ExpensesDayModel> get toInsert;
  @override
  List<ExpensesDayModel> get toUpdate;
  @override
  List<ExpensesDayModel> get toDelete;
  @override
  @JsonKey(ignore: true)
  _$ExpensesSortedMapModelCopyWith<_ExpensesSortedMapModel> get copyWith =>
      throw _privateConstructorUsedError;
}
