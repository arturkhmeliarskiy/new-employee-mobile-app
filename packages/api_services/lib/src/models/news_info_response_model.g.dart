// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_info_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsInfoResponseModel _$NewsInfoResponseModelFromJson(
        Map<String, dynamic> json) =>
    NewsInfoResponseModel(
      json['code'] as int?,
      (json['news'] as List<dynamic>?)
          ?.map((e) => News.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['totalCount'] as int?,
    );

Map<String, dynamic> _$NewsInfoResponseModelToJson(
        NewsInfoResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'news': instance.news,
      'totalCount': instance.totalCount,
    };
