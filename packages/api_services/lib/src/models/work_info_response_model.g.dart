// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_info_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkInfoResponseModel _$WorkInfoResponseModelFromJson(
        Map<String, dynamic> json) =>
    WorkInfoResponseModel(
      json['code'] as int?,
      (json['content'] as List<dynamic>?)
          ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorkInfoResponseModelToJson(
        WorkInfoResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'content': instance.content,
    };
