// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_messages_agencies_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessagesAgenciesDataModel _$ChatMessagesAgenciesDataModelFromJson(
    Map<String, dynamic> json) {
  return _ChatMessagesAgenciesDataModel.fromJson(json);
}

/// @nodoc
class _$ChatMessagesAgenciesDataModelTearOff {
  const _$ChatMessagesAgenciesDataModelTearOff();

  _ChatMessagesAgenciesDataModel call(
      {int? code, ChatMessagesDataModel? chatMessages, String? message}) {
    return _ChatMessagesAgenciesDataModel(
      code: code,
      chatMessages: chatMessages,
      message: message,
    );
  }

  ChatMessagesAgenciesDataModel fromJson(Map<String, Object?> json) {
    return ChatMessagesAgenciesDataModel.fromJson(json);
  }
}

/// @nodoc
const $ChatMessagesAgenciesDataModel = _$ChatMessagesAgenciesDataModelTearOff();

/// @nodoc
mixin _$ChatMessagesAgenciesDataModel {
  int? get code => throw _privateConstructorUsedError;
  ChatMessagesDataModel? get chatMessages => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessagesAgenciesDataModelCopyWith<ChatMessagesAgenciesDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessagesAgenciesDataModelCopyWith<$Res> {
  factory $ChatMessagesAgenciesDataModelCopyWith(
          ChatMessagesAgenciesDataModel value,
          $Res Function(ChatMessagesAgenciesDataModel) then) =
      _$ChatMessagesAgenciesDataModelCopyWithImpl<$Res>;
  $Res call({int? code, ChatMessagesDataModel? chatMessages, String? message});

  $ChatMessagesDataModelCopyWith<$Res>? get chatMessages;
}

/// @nodoc
class _$ChatMessagesAgenciesDataModelCopyWithImpl<$Res>
    implements $ChatMessagesAgenciesDataModelCopyWith<$Res> {
  _$ChatMessagesAgenciesDataModelCopyWithImpl(this._value, this._then);

  final ChatMessagesAgenciesDataModel _value;
  // ignore: unused_field
  final $Res Function(ChatMessagesAgenciesDataModel) _then;

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
              as ChatMessagesDataModel?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ChatMessagesDataModelCopyWith<$Res>? get chatMessages {
    if (_value.chatMessages == null) {
      return null;
    }

    return $ChatMessagesDataModelCopyWith<$Res>(_value.chatMessages!, (value) {
      return _then(_value.copyWith(chatMessages: value));
    });
  }
}

/// @nodoc
abstract class _$ChatMessagesAgenciesDataModelCopyWith<$Res>
    implements $ChatMessagesAgenciesDataModelCopyWith<$Res> {
  factory _$ChatMessagesAgenciesDataModelCopyWith(
          _ChatMessagesAgenciesDataModel value,
          $Res Function(_ChatMessagesAgenciesDataModel) then) =
      __$ChatMessagesAgenciesDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int? code, ChatMessagesDataModel? chatMessages, String? message});

  @override
  $ChatMessagesDataModelCopyWith<$Res>? get chatMessages;
}

/// @nodoc
class __$ChatMessagesAgenciesDataModelCopyWithImpl<$Res>
    extends _$ChatMessagesAgenciesDataModelCopyWithImpl<$Res>
    implements _$ChatMessagesAgenciesDataModelCopyWith<$Res> {
  __$ChatMessagesAgenciesDataModelCopyWithImpl(
      _ChatMessagesAgenciesDataModel _value,
      $Res Function(_ChatMessagesAgenciesDataModel) _then)
      : super(_value, (v) => _then(v as _ChatMessagesAgenciesDataModel));

  @override
  _ChatMessagesAgenciesDataModel get _value =>
      super._value as _ChatMessagesAgenciesDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? chatMessages = freezed,
    Object? message = freezed,
  }) {
    return _then(_ChatMessagesAgenciesDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      chatMessages: chatMessages == freezed
          ? _value.chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as ChatMessagesDataModel?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatMessagesAgenciesDataModel
    implements _ChatMessagesAgenciesDataModel {
  const _$_ChatMessagesAgenciesDataModel(
      {this.code, this.chatMessages, this.message});

  factory _$_ChatMessagesAgenciesDataModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ChatMessagesAgenciesDataModelFromJson(json);

  @override
  final int? code;
  @override
  final ChatMessagesDataModel? chatMessages;
  @override
  final String? message;

  @override
  String toString() {
    return 'ChatMessagesAgenciesDataModel(code: $code, chatMessages: $chatMessages, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatMessagesAgenciesDataModel &&
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
  _$ChatMessagesAgenciesDataModelCopyWith<_ChatMessagesAgenciesDataModel>
      get copyWith => __$ChatMessagesAgenciesDataModelCopyWithImpl<
          _ChatMessagesAgenciesDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatMessagesAgenciesDataModelToJson(this);
  }
}

abstract class _ChatMessagesAgenciesDataModel
    implements ChatMessagesAgenciesDataModel {
  const factory _ChatMessagesAgenciesDataModel(
      {int? code,
      ChatMessagesDataModel? chatMessages,
      String? message}) = _$_ChatMessagesAgenciesDataModel;

  factory _ChatMessagesAgenciesDataModel.fromJson(Map<String, dynamic> json) =
      _$_ChatMessagesAgenciesDataModel.fromJson;

  @override
  int? get code;
  @override
  ChatMessagesDataModel? get chatMessages;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$ChatMessagesAgenciesDataModelCopyWith<_ChatMessagesAgenciesDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
