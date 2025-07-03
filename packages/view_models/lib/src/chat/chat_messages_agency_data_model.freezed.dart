// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_messages_agency_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessagesAgencyDataModel _$ChatMessagesAgencyDataModelFromJson(
    Map<String, dynamic> json) {
  return _ChatMessagesAgencyDataModel.fromJson(json);
}

/// @nodoc
class _$ChatMessagesAgencyDataModelTearOff {
  const _$ChatMessagesAgencyDataModelTearOff();

  _ChatMessagesAgencyDataModel call(
      {int? code, List<ChatMessagesDataModel>? chatMessages, String? message}) {
    return _ChatMessagesAgencyDataModel(
      code: code,
      chatMessages: chatMessages,
      message: message,
    );
  }

  ChatMessagesAgencyDataModel fromJson(Map<String, Object?> json) {
    return ChatMessagesAgencyDataModel.fromJson(json);
  }
}

/// @nodoc
const $ChatMessagesAgencyDataModel = _$ChatMessagesAgencyDataModelTearOff();

/// @nodoc
mixin _$ChatMessagesAgencyDataModel {
  int? get code => throw _privateConstructorUsedError;
  List<ChatMessagesDataModel>? get chatMessages =>
      throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessagesAgencyDataModelCopyWith<ChatMessagesAgencyDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessagesAgencyDataModelCopyWith<$Res> {
  factory $ChatMessagesAgencyDataModelCopyWith(
          ChatMessagesAgencyDataModel value,
          $Res Function(ChatMessagesAgencyDataModel) then) =
      _$ChatMessagesAgencyDataModelCopyWithImpl<$Res>;
  $Res call(
      {int? code, List<ChatMessagesDataModel>? chatMessages, String? message});
}

/// @nodoc
class _$ChatMessagesAgencyDataModelCopyWithImpl<$Res>
    implements $ChatMessagesAgencyDataModelCopyWith<$Res> {
  _$ChatMessagesAgencyDataModelCopyWithImpl(this._value, this._then);

  final ChatMessagesAgencyDataModel _value;
  // ignore: unused_field
  final $Res Function(ChatMessagesAgencyDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? chatMessages = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      chatMessages: chatMessages == freezed
          ? _value.chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessagesDataModel>?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ChatMessagesAgencyDataModelCopyWith<$Res>
    implements $ChatMessagesAgencyDataModelCopyWith<$Res> {
  factory _$ChatMessagesAgencyDataModelCopyWith(
          _ChatMessagesAgencyDataModel value,
          $Res Function(_ChatMessagesAgencyDataModel) then) =
      __$ChatMessagesAgencyDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? code, List<ChatMessagesDataModel>? chatMessages, String? message});
}

/// @nodoc
class __$ChatMessagesAgencyDataModelCopyWithImpl<$Res>
    extends _$ChatMessagesAgencyDataModelCopyWithImpl<$Res>
    implements _$ChatMessagesAgencyDataModelCopyWith<$Res> {
  __$ChatMessagesAgencyDataModelCopyWithImpl(
      _ChatMessagesAgencyDataModel _value,
      $Res Function(_ChatMessagesAgencyDataModel) _then)
      : super(_value, (v) => _then(v as _ChatMessagesAgencyDataModel));

  @override
  _ChatMessagesAgencyDataModel get _value =>
      super._value as _ChatMessagesAgencyDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? chatMessages = freezed,
    Object? message = freezed,
  }) {
    return _then(_ChatMessagesAgencyDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      chatMessages: chatMessages == freezed
          ? _value.chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessagesDataModel>?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatMessagesAgencyDataModel implements _ChatMessagesAgencyDataModel {
  const _$_ChatMessagesAgencyDataModel(
      {this.code, this.chatMessages, this.message});

  factory _$_ChatMessagesAgencyDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatMessagesAgencyDataModelFromJson(json);

  @override
  final int? code;
  @override
  final List<ChatMessagesDataModel>? chatMessages;
  @override
  final String? message;

  @override
  String toString() {
    return 'ChatMessagesAgencyDataModel(code: $code, chatMessages: $chatMessages, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatMessagesAgencyDataModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.chatMessages, chatMessages) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(chatMessages),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ChatMessagesAgencyDataModelCopyWith<_ChatMessagesAgencyDataModel>
      get copyWith => __$ChatMessagesAgencyDataModelCopyWithImpl<
          _ChatMessagesAgencyDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatMessagesAgencyDataModelToJson(this);
  }
}

abstract class _ChatMessagesAgencyDataModel
    implements ChatMessagesAgencyDataModel {
  const factory _ChatMessagesAgencyDataModel(
      {int? code,
      List<ChatMessagesDataModel>? chatMessages,
      String? message}) = _$_ChatMessagesAgencyDataModel;

  factory _ChatMessagesAgencyDataModel.fromJson(Map<String, dynamic> json) =
      _$_ChatMessagesAgencyDataModel.fromJson;

  @override
  int? get code;
  @override
  List<ChatMessagesDataModel>? get chatMessages;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$ChatMessagesAgencyDataModelCopyWith<_ChatMessagesAgencyDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
