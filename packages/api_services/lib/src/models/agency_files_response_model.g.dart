// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agency_files_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgencyFilesResponseModel _$AgencyFilesResponseModelFromJson(
        Map<String, dynamic> json) =>
    AgencyFilesResponseModel(
      json['code'] as int?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => AgencyFilesInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AgencyFilesResponseModelToJson(
        AgencyFilesResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'items': instance.items,
    };
