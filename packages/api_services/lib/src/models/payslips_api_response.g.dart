// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payslips_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayslipsApiResponse _$PayslipsApiResponseFromJson(Map<String, dynamic> json) =>
    PayslipsApiResponse(
      json['code'] as int,
      json['message'] as String,
      PayslipsResponseModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PayslipsApiResponseToJson(
        PayslipsApiResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
