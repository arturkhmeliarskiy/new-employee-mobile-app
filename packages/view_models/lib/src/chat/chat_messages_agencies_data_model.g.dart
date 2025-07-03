// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_messages_agencies_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessagesAgenciesDataModel _$$_ChatMessagesAgenciesDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChatMessagesAgenciesDataModel(
      code: json['code'] as int?,
      chatMessages: json['chatMessages'] == null
          ? null
          : ChatMessagesDataModel.fromJson(
              json['chatMessages'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ChatMessagesAgenciesDataModelToJson(
        _$_ChatMessagesAgenciesDataModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'chatMessages': instance.chatMessages,
      'message': instance.message,
    };
