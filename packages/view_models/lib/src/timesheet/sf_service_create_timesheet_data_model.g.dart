// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sf_service_create_timesheet_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SfServiceCreateTimesheetDataModel
    _$$_SfServiceCreateTimesheetDataModelFromJson(Map<String, dynamic> json) =>
        _$_SfServiceCreateTimesheetDataModel(
          code: json['code'] as int,
          result: TimesheetExistDataModel.fromJson(
              json['result'] as Map<String, dynamic>),
          message: json['message'] as String,
        );

Map<String, dynamic> _$$_SfServiceCreateTimesheetDataModelToJson(
        _$_SfServiceCreateTimesheetDataModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'result': instance.result,
      'message': instance.message,
    };
