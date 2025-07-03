// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timesheets_info_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimesheetsInfoDataModel _$$_TimesheetsInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_TimesheetsInfoDataModel(
      code: json['code'] as int,
      totalCount: json['totalCount'] as int,
      timesheets: (json['timesheets'] as List<dynamic>)
          .map((e) => TimesheetsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TimesheetsInfoDataModelToJson(
        _$_TimesheetsInfoDataModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'totalCount': instance.totalCount,
      'timesheets': instance.timesheets,
    };
