// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agency_files_info_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AgencyFilesInfoDataModel _$$_AgencyFilesInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_AgencyFilesInfoDataModel(
      id: json['id'] as String,
      sfFileId: json['sfFileId'] as String,
      sfRecordId: json['sfRecordId'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      isAttached: json['isAttached'] as bool,
      expirationDate: json['expirationDate'] as String,
      size: json['size'] as int,
      createdAt: json['createdAt'] as String,
      employeeId: json['employeeId'] as String,
      agencyName: json['agencyName'] as String,
    );

Map<String, dynamic> _$$_AgencyFilesInfoDataModelToJson(
        _$_AgencyFilesInfoDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sfFileId': instance.sfFileId,
      'sfRecordId': instance.sfRecordId,
      'name': instance.name,
      'type': instance.type,
      'isAttached': instance.isAttached,
      'expirationDate': instance.expirationDate,
      'size': instance.size,
      'createdAt': instance.createdAt,
      'employeeId': instance.employeeId,
      'agencyName': instance.agencyName,
    };
