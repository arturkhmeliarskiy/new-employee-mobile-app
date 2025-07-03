// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Projects _$ProjectsFromJson(Map<String, dynamic> json) => Projects(
      id: json['id'] as String?,
      name: json['name'] as String?,
      acceptedWork: json['acceptedWork'] as bool?,
      sfOrgId: json['sfOrgId'] as String?,
      isGetLEorg: json['isGetLEorg'] as bool?,
      sfLEId: json['sfLEId'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      sfRecordId: json['sfRecordId'] as String?,
      activeProject: json['activeProject'] as bool?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      postalcode: json['postalcode'] as String?,
      createdAt: json['createdAt'] as String?,
      companyId: json['companyId'] as String?,
    );

Map<String, dynamic> _$ProjectsToJson(Projects instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'acceptedWork': instance.acceptedWork,
      'sfOrgId': instance.sfOrgId,
      'isGetLEorg': instance.isGetLEorg,
      'sfLEId': instance.sfLEId,
      'isDeleted': instance.isDeleted,
      'sfRecordId': instance.sfRecordId,
      'activeProject': instance.activeProject,
      'country': instance.country,
      'city': instance.city,
      'street': instance.street,
      'postalcode': instance.postalcode,
      'createdAt': instance.createdAt,
      'companyId': instance.companyId,
    };
