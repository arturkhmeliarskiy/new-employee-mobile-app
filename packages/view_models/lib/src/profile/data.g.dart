// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModel _$$_DataModelFromJson(Map<String, dynamic> json) => _$_DataModel(
      id: json['id'] as String,
      isRead: json['isRead'] as bool,
      receiverId: json['receiverId'] as String,
      receiverType: json['receiverType'] as String,
      opportunityId: json['opportunityId'] as String,
      orgName: json['orgName'] as String,
      orgLogo: json['orgLogo'] as String,
      relatedObjectType: json['relatedObjectType'] as String,
      relatedObjectId: json['relatedObjectId'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      messageType: json['messageType'] as String,
      count: json['count'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_DataModelToJson(_$_DataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isRead': instance.isRead,
      'receiverId': instance.receiverId,
      'receiverType': instance.receiverType,
      'opportunityId': instance.opportunityId,
      'orgName': instance.orgName,
      'orgLogo': instance.orgLogo,
      'relatedObjectType': instance.relatedObjectType,
      'relatedObjectId': instance.relatedObjectId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'messageType': instance.messageType,
      'count': instance.count,
      'title': instance.title,
    };
