// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_info_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkInfoDataModel _$$_WorkInfoDataModelFromJson(Map<String, dynamic> json) =>
    _$_WorkInfoDataModel(
      content: (json['content'] as List<dynamic>)
          .map((e) => ContentDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as int?,
    );

Map<String, dynamic> _$$_WorkInfoDataModelToJson(
        _$_WorkInfoDataModel instance) =>
    <String, dynamic>{
      'content': instance.content,
      'code': instance.code,
    };
