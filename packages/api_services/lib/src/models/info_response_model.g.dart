// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoResponseModel _$InfoResponseModelFromJson(Map<String, dynamic> json) =>
    InfoResponseModel(
      json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InfoResponseModelToJson(InfoResponseModel instance) =>
    <String, dynamic>{
      'info': instance.info,
    };
