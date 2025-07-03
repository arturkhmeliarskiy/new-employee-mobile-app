// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_messages_read_all_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationMessagesReadAllResponseModel
    _$NotificationMessagesReadAllResponseModelFromJson(
            Map<String, dynamic> json) =>
        NotificationMessagesReadAllResponseModel(
          json['code'] as int?,
          json['message'] as String?,
          json['count'] as int?,
        );

Map<String, dynamic> _$NotificationMessagesReadAllResponseModelToJson(
        NotificationMessagesReadAllResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'count': instance.count,
    };
