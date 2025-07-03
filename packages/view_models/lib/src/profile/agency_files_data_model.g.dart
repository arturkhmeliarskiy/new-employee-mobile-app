// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agency_files_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AgencyFilesDataModel _$$_AgencyFilesDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_AgencyFilesDataModel(
      files: (json['files'] as List<dynamic>)
          .map((e) =>
              AgencyFilesInfoDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as int?,
    );

Map<String, dynamic> _$$_AgencyFilesDataModelToJson(
        _$_AgencyFilesDataModel instance) =>
    <String, dynamic>{
      'files': instance.files,
      'code': instance.code,
    };
