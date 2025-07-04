// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_messages_read_all_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationMessagesReadAllDataModel
    _$NotificationMessagesReadAllDataModelFromJson(Map<String, dynamic> json) {
  return _NotificationMessagesReadAllDataModel.fromJson(json);
}

/// @nodoc
class _$NotificationMessagesReadAllDataModelTearOff {
  const _$NotificationMessagesReadAllDataModelTearOff();

  _NotificationMessagesReadAllDataModel call(
      {required int code, required String message, required int count}) {
    return _NotificationMessagesReadAllDataModel(
      code: code,
      message: message,
      count: count,
    );
  }

  NotificationMessagesReadAllDataModel fromJson(Map<String, Object?> json) {
    return NotificationMessagesReadAllDataModel.fromJson(json);
  }
}

/// @nodoc
const $NotificationMessagesReadAllDataModel =
    _$NotificationMessagesReadAllDataModelTearOff();

/// @nodoc
mixin _$NotificationMessagesReadAllDataModel {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationMessagesReadAllDataModelCopyWith<
          NotificationMessagesReadAllDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMessagesReadAllDataModelCopyWith<$Res> {
  factory $NotificationMessagesReadAllDataModelCopyWith(
          NotificationMessagesReadAllDataModel value,
          $Res Function(NotificationMessagesReadAllDataModel) then) =
      _$NotificationMessagesReadAllDataModelCopyWithImpl<$Res>;
  $Res call({int code, String message, int count});
}

/// @nodoc
class _$NotificationMessagesReadAllDataModelCopyWithImpl<$Res>
    implements $NotificationMessagesReadAllDataModelCopyWith<$Res> {
  _$NotificationMessagesReadAllDataModelCopyWithImpl(this._value, this._then);

  final NotificationMessagesReadAllDataModel _value;
  // ignore: unused_field
  final $Res Function(NotificationMessagesReadAllDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? count = freezed,
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
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$NotificationMessagesReadAllDataModelCopyWith<$Res>
    implements $NotificationMessagesReadAllDataModelCopyWith<$Res> {
  factory _$NotificationMessagesReadAllDataModelCopyWith(
          _NotificationMessagesReadAllDataModel value,
          $Res Function(_NotificationMessagesReadAllDataModel) then) =
      __$NotificationMessagesReadAllDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int code, String message, int count});
}

/// @nodoc
class __$NotificationMessagesReadAllDataModelCopyWithImpl<$Res>
    extends _$NotificationMessagesReadAllDataModelCopyWithImpl<$Res>
    implements _$NotificationMessagesReadAllDataModelCopyWith<$Res> {
  __$NotificationMessagesReadAllDataModelCopyWithImpl(
      _NotificationMessagesReadAllDataModel _value,
      $Res Function(_NotificationMessagesReadAllDataModel) _then)
      : super(_value, (v) => _then(v as _NotificationMessagesReadAllDataModel));

  @override
  _NotificationMessagesReadAllDataModel get _value =>
      super._value as _NotificationMessagesReadAllDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? count = freezed,
  }) {
    return _then(_NotificationMessagesReadAllDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationMessagesReadAllDataModel
    implements _NotificationMessagesReadAllDataModel {
  const _$_NotificationMessagesReadAllDataModel(
      {required this.code, required this.message, required this.count});

  factory _$_NotificationMessagesReadAllDataModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_NotificationMessagesReadAllDataModelFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final int count;

  @override
  String toString() {
    return 'NotificationMessagesReadAllDataModel(code: $code, message: $message, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationMessagesReadAllDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$NotificationMessagesReadAllDataModelCopyWith<
          _NotificationMessagesReadAllDataModel>
      get copyWith => __$NotificationMessagesReadAllDataModelCopyWithImpl<
          _NotificationMessagesReadAllDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationMessagesReadAllDataModelToJson(this);
  }
}

abstract class _NotificationMessagesReadAllDataModel
    implements NotificationMessagesReadAllDataModel {
  const factory _NotificationMessagesReadAllDataModel(
      {required int code,
      required String message,
      required int count}) = _$_NotificationMessagesReadAllDataModel;

  factory _NotificationMessagesReadAllDataModel.fromJson(
          Map<String, dynamic> json) =
      _$_NotificationMessagesReadAllDataModel.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$NotificationMessagesReadAllDataModelCopyWith<
          _NotificationMessagesReadAllDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
