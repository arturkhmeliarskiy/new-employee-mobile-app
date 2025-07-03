// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_messages_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationMessagesResponseModel _$NotificationMessagesResponseModelFromJson(
        Map<String, dynamic> json) =>
    NotificationMessagesResponseModel(
      json['code'] as int?,
      json['message'] as String?,
      (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NotificationMessagesResponseModelToJson(
        NotificationMessagesResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
