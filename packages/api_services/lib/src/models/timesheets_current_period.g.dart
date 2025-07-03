// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timesheets_current_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimesheetsCurrentPeriod _$TimesheetsCurrentPeriodFromJson(
        Map<String, dynamic> json) =>
    TimesheetsCurrentPeriod(
      json['id'] as String?,
      json['name'] as String?,
      json['startDate'] as String?,
      json['endDate'] as String?,
      json['status'] as String?,
    );

Map<String, dynamic> _$TimesheetsCurrentPeriodToJson(
        TimesheetsCurrentPeriod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'status': instance.status,
    };
