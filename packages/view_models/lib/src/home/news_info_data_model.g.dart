// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_info_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsInfoDataModel _$$_NewsInfoDataModelFromJson(Map<String, dynamic> json) =>
    _$_NewsInfoDataModel(
      news: (json['news'] as List<dynamic>)
          .map((e) => NewsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int,
      code: json['code'] as int,
    );

Map<String, dynamic> _$$_NewsInfoDataModelToJson(
        _$_NewsInfoDataModel instance) =>
    <String, dynamic>{
      'news': instance.news,
      'totalCount': instance.totalCount,
      'code': instance.code,
    };
