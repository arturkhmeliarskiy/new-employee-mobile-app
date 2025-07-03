// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worked_hours_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkedHoursDataModel _$$_WorkedHoursDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_WorkedHoursDataModel(
      week: (json['week'] as num).toDouble(),
      month: (json['month'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$$_WorkedHoursDataModelToJson(
        _$_WorkedHoursDataModel instance) =>
    <String, dynamic>{
      'week': instance.week,
      'month': instance.month,
      'total': instance.total,
    };
