// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchInputModelTearOff {
  const _$SearchInputModelTearOff();

  _SearchInputModel call(
      {required String id,
      required String name,
      required String altLabels,
      required String code,
      required int iscoGroup}) {
    return _SearchInputModel(
      id: id,
      name: name,
      altLabels: altLabels,
      code: code,
      iscoGroup: iscoGroup,
    );
  }
}

/// @nodoc
const $SearchInputModel = _$SearchInputModelTearOff();

/// @nodoc
mixin _$SearchInputModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get altLabels => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get iscoGroup => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchInputModelCopyWith<SearchInputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchInputModelCopyWith<$Res> {
  factory $SearchInputModelCopyWith(
          SearchInputModel value, $Res Function(SearchInputModel) then) =
      _$SearchInputModelCopyWithImpl<$Res>;
  $Res call(
      {String id, String name, String altLabels, String code, int iscoGroup});
}

/// @nodoc
class _$SearchInputModelCopyWithImpl<$Res>
    implements $SearchInputModelCopyWith<$Res> {
  _$SearchInputModelCopyWithImpl(this._value, this._then);

  final SearchInputModel _value;
  // ignore: unused_field
  final $Res Function(SearchInputModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? altLabels = freezed,
    Object? code = freezed,
    Object? iscoGroup = freezed,
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
      altLabels: altLabels == freezed
          ? _value.altLabels
          : altLabels // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      iscoGroup: iscoGroup == freezed
          ? _value.iscoGroup
          : iscoGroup // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SearchInputModelCopyWith<$Res>
    implements $SearchInputModelCopyWith<$Res> {
  factory _$SearchInputModelCopyWith(
          _SearchInputModel value, $Res Function(_SearchInputModel) then) =
      __$SearchInputModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String name, String altLabels, String code, int iscoGroup});
}

/// @nodoc
class __$SearchInputModelCopyWithImpl<$Res>
    extends _$SearchInputModelCopyWithImpl<$Res>
    implements _$SearchInputModelCopyWith<$Res> {
  __$SearchInputModelCopyWithImpl(
      _SearchInputModel _value, $Res Function(_SearchInputModel) _then)
      : super(_value, (v) => _then(v as _SearchInputModel));

  @override
  _SearchInputModel get _value => super._value as _SearchInputModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? altLabels = freezed,
    Object? code = freezed,
    Object? iscoGroup = freezed,
  }) {
    return _then(_SearchInputModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      altLabels: altLabels == freezed
          ? _value.altLabels
          : altLabels // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      iscoGroup: iscoGroup == freezed
          ? _value.iscoGroup
          : iscoGroup // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SearchInputModel implements _SearchInputModel {
  const _$_SearchInputModel(
      {required this.id,
      required this.name,
      required this.altLabels,
      required this.code,
      required this.iscoGroup});

  @override
  final String id;
  @override
  final String name;
  @override
  final String altLabels;
  @override
  final String code;
  @override
  final int iscoGroup;

  @override
  String toString() {
    return 'SearchInputModel(id: $id, name: $name, altLabels: $altLabels, code: $code, iscoGroup: $iscoGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchInputModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.altLabels, altLabels) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.iscoGroup, iscoGroup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(altLabels),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(iscoGroup));

  @JsonKey(ignore: true)
  @override
  _$SearchInputModelCopyWith<_SearchInputModel> get copyWith =>
      __$SearchInputModelCopyWithImpl<_SearchInputModel>(this, _$identity);
}

abstract class _SearchInputModel implements SearchInputModel {
  const factory _SearchInputModel(
      {required String id,
      required String name,
      required String altLabels,
      required String code,
      required int iscoGroup}) = _$_SearchInputModel;

  @override
  String get id;
  @override
  String get name;
  @override
  String get altLabels;
  @override
  String get code;
  @override
  int get iscoGroup;
  @override
  @JsonKey(ignore: true)
  _$SearchInputModelCopyWith<_SearchInputModel> get copyWith =>
      throw _privateConstructorUsedError;
}
