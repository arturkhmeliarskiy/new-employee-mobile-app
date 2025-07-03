// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_groups_agency_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatGroupsAgencyResponseModel _$ChatGroupsAgencyResponseModelFromJson(
        Map<String, dynamic> json) =>
    ChatGroupsAgencyResponseModel(
      json['code'] as int?,
      (json['chatGroups'] as List<dynamic>?)
          ?.map((e) => ChatGroups.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatGroupsAgencyResponseModelToJson(
        ChatGroupsAgencyResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'chatGroups': instance.chatGroups,
    };
