// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_messages_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessagesResponseModel _$ChatMessagesResponseModelFromJson(
        Map<String, dynamic> json) =>
    ChatMessagesResponseModel(
      json['code'] as int?,
      json['sentChatMessage'] == null
          ? null
          : ChatMessages.fromJson(
              json['sentChatMessage'] as Map<String, dynamic>),
      json['message'] as String?,
    );

Map<String, dynamic> _$ChatMessagesResponseModelToJson(
        ChatMessagesResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'sentChatMessage': instance.sentChatMessage,
      'message': instance.message,
    };
