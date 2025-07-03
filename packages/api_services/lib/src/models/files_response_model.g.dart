// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilesResponseModel _$FilesResponseModelFromJson(Map<String, dynamic> json) =>
    FilesResponseModel(
      json['code'] as int?,
      (json['files'] as List<dynamic>?)
          ?.map((e) => FilesInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FilesResponseModelToJson(FilesResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'files': instance.files,
    };
