// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_messages_agency_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessagesAgencyResponseModel _$ChatMessagesAgencyResponseModelFromJson(
        Map<String, dynamic> json) =>
    ChatMessagesAgencyResponseModel(
      json['code'] as int?,
      (json['chatMessages'] as List<dynamic>?)
          ?.map((e) => ChatMessages.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['message'] as String?,
    );

Map<String, dynamic> _$ChatMessagesAgencyResponseModelToJson(
        ChatMessagesAgencyResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'chatMessages': instance.chatMessages,
      'message': instance.message,
    };
