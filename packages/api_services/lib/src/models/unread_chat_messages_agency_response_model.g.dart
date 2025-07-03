// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unread_chat_messages_agency_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnreadChatMessagesAgencyResponseModel
    _$UnreadChatMessagesAgencyResponseModelFromJson(
            Map<String, dynamic> json) =>
        UnreadChatMessagesAgencyResponseModel(
          json['code'] as int?,
          (json['unreadChatMessages'] as List<dynamic>?)
              ?.map((e) => ChatMessages.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$UnreadChatMessagesAgencyResponseModelToJson(
        UnreadChatMessagesAgencyResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'unreadChatMessages': instance.unreadChatMessages,
    };
