// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_groups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatGroups _$ChatGroupsFromJson(Map<String, dynamic> json) => ChatGroups(
      json['id'] as String?,
      json['employeeGroupName'] as String?,
      json['companyGroupName'] as String?,
      json['agencyGroupName'] as String?,
      json['isActive'] as bool?,
      json['subject'] as String?,
      json['onlyExternalMessages'] as bool?,
      json['createdAt'] as String?,
      json['updatedAt'] as String?,
      json['agencyId'] as String?,
      json['employeeId'] as String?,
      json['companyId'] as String?,
    );

Map<String, dynamic> _$ChatGroupsToJson(ChatGroups instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeGroupName': instance.employeeGroupName,
      'companyGroupName': instance.companyGroupName,
      'agencyGroupName': instance.agencyGroupName,
      'isActive': instance.isActive,
      'subject': instance.subject,
      'onlyExternalMessages': instance.onlyExternalMessages,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'agencyId': instance.agencyId,
      'employeeId': instance.employeeId,
      'companyId': instance.companyId,
    };
