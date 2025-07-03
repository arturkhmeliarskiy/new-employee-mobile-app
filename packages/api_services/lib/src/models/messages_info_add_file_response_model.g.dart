// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_info_add_file_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessagesInfoAddFileResponseModel _$MessagesInfoAddFileResponseModelFromJson(
        Map<String, dynamic> json) =>
    MessagesInfoAddFileResponseModel(
      json['code'] as int?,
      (json['added'] as List<dynamic>?)?.map((e) => e as int).toList(),
      json['message'] as String?,
    );

Map<String, dynamic> _$MessagesInfoAddFileResponseModelToJson(
        MessagesInfoAddFileResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'added': instance.added,
      'message': instance.message,
    };
