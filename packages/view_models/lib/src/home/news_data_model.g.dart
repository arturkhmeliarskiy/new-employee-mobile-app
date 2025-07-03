// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsDataModel _$$_NewsDataModelFromJson(Map<String, dynamic> json) =>
    _$_NewsDataModel(
      title: json['title'] as String,
      content: json['content'] as String,
      logo: json['logo'] as String,
      active: json['active'] as bool,
      agencyId: json['agencyId'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$_NewsDataModelToJson(_$_NewsDataModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'logo': instance.logo,
      'active': instance.active,
      'agencyId': instance.agencyId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'color': instance.color,
    };
