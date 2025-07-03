// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) => News(
      json['title'] as String?,
      json['content'] as String?,
      json['logo'] as String?,
      json['active'] as bool?,
      json['agencyId'] as String?,
      json['createdAt'] as String?,
      json['updatedAt'] as String?,
    );

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'logo': instance.logo,
      'active': instance.active,
      'agencyId': instance.agencyId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
