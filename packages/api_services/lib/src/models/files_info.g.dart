// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilesInfo _$FilesInfoFromJson(Map<String, dynamic> json) => FilesInfo(
      json['id'] as String?,
      json['name'] as String?,
      json['type'] as String?,
      json['path'] as String?,
      json['isShared'] as bool?,
      json['expirationDate'] as String?,
      json['typeDocument'] as String?,
      json['createdAt'] as String?,
      json['size'] as String?,
      json['employeeId'] as String?,
      json['parentCloudFileId'] as String?,
    );

Map<String, dynamic> _$FilesInfoToJson(FilesInfo instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'path': instance.path,
      'isShared': instance.isShared,
      'expirationDate': instance.expirationDate,
      'typeDocument': instance.typeDocument,
      'createdAt': instance.createdAt,
      'size': instance.size,
      'employeeId': instance.employeeId,
      'parentCloudFileId': instance.parentCloudFileId,
    };
