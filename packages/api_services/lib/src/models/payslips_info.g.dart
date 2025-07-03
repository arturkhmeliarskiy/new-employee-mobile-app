// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payslips_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayslipsInfo _$PayslipsInfoFromJson(Map<String, dynamic> json) => PayslipsInfo(
      id: json['id'] as String?,
      period: json['period'] as String?,
      link: json['link'] as String?,
      year: json['year'] as int?,
      nettoSalary: json['nettoSalary'] as String?,
      nettoSalaryPeriod: json['nettoSalaryPeriod'] as String?,
      employeeId: json['employeeId'] as String?,
      weeksRange: json['weeksRange'] as String?,
      isAnnualStatement: json['isAnnualStatement'] as bool?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$PayslipsInfoToJson(PayslipsInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'period': instance.period,
      'link': instance.link,
      'year': instance.year,
      'nettoSalary': instance.nettoSalary,
      'nettoSalaryPeriod': instance.nettoSalaryPeriod,
      'employeeId': instance.employeeId,
      'weeksRange': instance.weeksRange,
      'isAnnualStatement': instance.isAnnualStatement,
      'createdAt': instance.createdAt,
    };
