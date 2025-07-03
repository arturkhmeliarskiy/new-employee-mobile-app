// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_messages_agency_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessagesAgencyDataModel _$$_ChatMessagesAgencyDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChatMessagesAgencyDataModel(
      code: json['code'] as int?,
      chatMessages: (json['chatMessages'] as List<dynamic>?)
          ?.map(
              (e) => ChatMessagesDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ChatMessagesAgencyDataModelToJson(
        _$_ChatMessagesAgencyDataModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'chatMessages': instance.chatMessages,
      'message': instance.message,
    };
