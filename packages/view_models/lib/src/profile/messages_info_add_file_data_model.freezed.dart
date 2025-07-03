// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messages_info_add_file_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessagesInfoAddFileDataModel _$MessagesInfoAddFileDataModelFromJson(
    Map<String, dynamic> json) {
  return _MessagesInfoAddFileDataModel.fromJson(json);
}

/// @nodoc
class _$MessagesInfoAddFileDataModelTearOff {
  const _$MessagesInfoAddFileDataModelTearOff();

  _MessagesInfoAddFileDataModel call(
      {required int code, required List<int> added, required String message}) {
    return _MessagesInfoAddFileDataModel(
      code: code,
      added: added,
      message: message,
    );
  }

  MessagesInfoAddFileDataModel fromJson(Map<String, Object?> json) {
    return MessagesInfoAddFileDataModel.fromJson(json);
  }
}

/// @nodoc
const $MessagesInfoAddFileDataModel = _$MessagesInfoAddFileDataModelTearOff();

/// @nodoc
mixin _$MessagesInfoAddFileDataModel {
  int get code => throw _privateConstructorUsedError;
  List<int> get added => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesInfoAddFileDataModelCopyWith<MessagesInfoAddFileDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesInfoAddFileDataModelCopyWith<$Res> {
  factory $MessagesInfoAddFileDataModelCopyWith(
          MessagesInfoAddFileDataModel value,
          $Res Function(MessagesInfoAddFileDataModel) then) =
      _$MessagesInfoAddFileDataModelCopyWithImpl<$Res>;
  $Res call({int code, List<int> added, String message});
}

/// @nodoc
class _$MessagesInfoAddFileDataModelCopyWithImpl<$Res>
    implements $MessagesInfoAddFileDataModelCopyWith<$Res> {
  _$MessagesInfoAddFileDataModelCopyWithImpl(this._value, this._then);

  final MessagesInfoAddFileDataModel _value;
  // ignore: unused_field
  final $Res Function(MessagesInfoAddFileDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? added = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      added: added == freezed
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as List<int>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MessagesInfoAddFileDataModelCopyWith<$Res>
    implements $MessagesInfoAddFileDataModelCopyWith<$Res> {
  factory _$MessagesInfoAddFileDataModelCopyWith(
          _MessagesInfoAddFileDataModel value,
          $Res Function(_MessagesInfoAddFileDataModel) then) =
      __$MessagesInfoAddFileDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int code, List<int> added, String message});
}

/// @nodoc
class __$MessagesInfoAddFileDataModelCopyWithImpl<$Res>
    extends _$MessagesInfoAddFileDataModelCopyWithImpl<$Res>
    implements _$MessagesInfoAddFileDataModelCopyWith<$Res> {
  __$MessagesInfoAddFileDataModelCopyWithImpl(
      _MessagesInfoAddFileDataModel _value,
      $Res Function(_MessagesInfoAddFileDataModel) _then)
      : super(_value, (v) => _then(v as _MessagesInfoAddFileDataModel));

  @override
  _MessagesInfoAddFileDataModel get _value =>
      super._value as _MessagesInfoAddFileDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? added = freezed,
    Object? message = freezed,
  }) {
    return _then(_MessagesInfoAddFileDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      added: added == freezed
          ? _value.added
          : added // ignore: cast_nullable_to_non_nullable
              as List<int>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessagesInfoAddFileDataModel implements _MessagesInfoAddFileDataModel {
  const _$_MessagesInfoAddFileDataModel(
      {required this.code, required this.added, required this.message});

  factory _$_MessagesInfoAddFileDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessagesInfoAddFileDataModelFromJson(json);

  @override
  final int code;
  @override
  final List<int> added;
  @override
  final String message;

  @override
  String toString() {
    return 'MessagesInfoAddFileDataModel(code: $code, added: $added, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessagesInfoAddFileDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.added, added) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(added),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$MessagesInfoAddFileDataModelCopyWith<_MessagesInfoAddFileDataModel>
      get copyWith => __$MessagesInfoAddFileDataModelCopyWithImpl<
          _MessagesInfoAddFileDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessagesInfoAddFileDataModelToJson(this);
  }
}

abstract class _MessagesInfoAddFileDataModel
    implements MessagesInfoAddFileDataModel {
  const factory _MessagesInfoAddFileDataModel(
      {required int code,
      required List<int> added,
      required String message}) = _$_MessagesInfoAddFileDataModel;

  factory _MessagesInfoAddFileDataModel.fromJson(Map<String, dynamic> json) =
      _$_MessagesInfoAddFileDataModel.fromJson;

  @override
  int get code;
  @override
  List<int> get added;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$MessagesInfoAddFileDataModelCopyWith<_MessagesInfoAddFileDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
