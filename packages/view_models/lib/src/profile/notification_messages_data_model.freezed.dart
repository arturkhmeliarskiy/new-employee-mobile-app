// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_messages_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationMessagesDataModel _$NotificationMessagesDataModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationMessagesDataModel.fromJson(json);
}

/// @nodoc
class _$NotificationMessagesDataModelTearOff {
  const _$NotificationMessagesDataModelTearOff();

  _NotificationMessagesDataModel call(
      {required int code,
      required String message,
      required List<DataModel> dataModel}) {
    return _NotificationMessagesDataModel(
      code: code,
      message: message,
      dataModel: dataModel,
    );
  }

  NotificationMessagesDataModel fromJson(Map<String, Object?> json) {
    return NotificationMessagesDataModel.fromJson(json);
  }
}

/// @nodoc
const $NotificationMessagesDataModel = _$NotificationMessagesDataModelTearOff();

/// @nodoc
mixin _$NotificationMessagesDataModel {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<DataModel> get dataModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationMessagesDataModelCopyWith<NotificationMessagesDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMessagesDataModelCopyWith<$Res> {
  factory $NotificationMessagesDataModelCopyWith(
          NotificationMessagesDataModel value,
          $Res Function(NotificationMessagesDataModel) then) =
      _$NotificationMessagesDataModelCopyWithImpl<$Res>;
  $Res call({int code, String message, List<DataModel> dataModel});
}

/// @nodoc
class _$NotificationMessagesDataModelCopyWithImpl<$Res>
    implements $NotificationMessagesDataModelCopyWith<$Res> {
  _$NotificationMessagesDataModelCopyWithImpl(this._value, this._then);

  final NotificationMessagesDataModel _value;
  // ignore: unused_field
  final $Res Function(NotificationMessagesDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? dataModel = freezed,
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
      dataModel: dataModel == freezed
          ? _value.dataModel
          : dataModel // ignore: cast_nullable_to_non_nullable
              as List<DataModel>,
    ));
  }
}

/// @nodoc
abstract class _$NotificationMessagesDataModelCopyWith<$Res>
    implements $NotificationMessagesDataModelCopyWith<$Res> {
  factory _$NotificationMessagesDataModelCopyWith(
          _NotificationMessagesDataModel value,
          $Res Function(_NotificationMessagesDataModel) then) =
      __$NotificationMessagesDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int code, String message, List<DataModel> dataModel});
}

/// @nodoc
class __$NotificationMessagesDataModelCopyWithImpl<$Res>
    extends _$NotificationMessagesDataModelCopyWithImpl<$Res>
    implements _$NotificationMessagesDataModelCopyWith<$Res> {
  __$NotificationMessagesDataModelCopyWithImpl(
      _NotificationMessagesDataModel _value,
      $Res Function(_NotificationMessagesDataModel) _then)
      : super(_value, (v) => _then(v as _NotificationMessagesDataModel));

  @override
  _NotificationMessagesDataModel get _value =>
      super._value as _NotificationMessagesDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? dataModel = freezed,
  }) {
    return _then(_NotificationMessagesDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      dataModel: dataModel == freezed
          ? _value.dataModel
          : dataModel // ignore: cast_nullable_to_non_nullable
              as List<DataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationMessagesDataModel
    implements _NotificationMessagesDataModel {
  const _$_NotificationMessagesDataModel(
      {required this.code, required this.message, required this.dataModel});

  factory _$_NotificationMessagesDataModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_NotificationMessagesDataModelFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final List<DataModel> dataModel;

  @override
  String toString() {
    return 'NotificationMessagesDataModel(code: $code, message: $message, dataModel: $dataModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationMessagesDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.dataModel, dataModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(dataModel));

  @JsonKey(ignore: true)
  @override
  _$NotificationMessagesDataModelCopyWith<_NotificationMessagesDataModel>
      get copyWith => __$NotificationMessagesDataModelCopyWithImpl<
          _NotificationMessagesDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationMessagesDataModelToJson(this);
  }
}

abstract class _NotificationMessagesDataModel
    implements NotificationMessagesDataModel {
  const factory _NotificationMessagesDataModel(
      {required int code,
      required String message,
      required List<DataModel> dataModel}) = _$_NotificationMessagesDataModel;

  factory _NotificationMessagesDataModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationMessagesDataModel.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  List<DataModel> get dataModel;
  @override
  @JsonKey(ignore: true)
  _$NotificationMessagesDataModelCopyWith<_NotificationMessagesDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
