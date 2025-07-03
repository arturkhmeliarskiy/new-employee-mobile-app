// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timesheet_info_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimesheetInfoDataModel _$$_TimesheetInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_TimesheetInfoDataModel(
      id: json['id'] as String,
      name: json['name'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      status: json['status'] as String,
      sfOrgId: json['sfOrgId'] as String,
      submitedById: json['submitedById'] as String,
      sfRecordId: json['sfRecordId'] as String,
      timeBasedHours: json['timeBasedHours'] as String,
      employeeId: json['employeeId'] as String,
      payslipId: json['payslipId'] as String,
      placementId: json['placementId'] as String,
      comment: json['comment'] as String,
      employeeFase: json['employeeFase'] as String,
      resFdUitbet: json['resFdUitbet'] as bool,
      resKvUitbet: json['resKvUitbet'] as bool,
      resAdvUitbet: json['resAdvUitbet'] as bool,
      resTvtUitbet: json['resTvtUitbet'] as bool,
      resVgUitbet: json['resVgUitbet'] as bool,
      resVDtUitbet: json['resVDtUitbet'] as bool,
      resVDwUitbet: json['resVDwUitbet'] as bool,
      resVDbUitbet: json['resVDbUitbet'] as bool,
      withdrawWkFD: json['withdrawWkFD'] as bool,
      withdrawWkKV: json['withdrawWkKV'] as bool,
      withdrawWkADV: json['withdrawWkADV'] as bool,
      withdrawWkTVT: json['withdrawWkTVT'] as bool,
      withdrawWkVG: json['withdrawWkVG'] as bool,
      withdrawWkVDt: json['withdrawWkVDt'] as bool,
      withdrawWkVDw: json['withdrawWkVDw'] as bool,
      withdrawWkVDb: json['withdrawWkVDb'] as bool,
    );

Map<String, dynamic> _$$_TimesheetInfoDataModelToJson(
        _$_TimesheetInfoDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'status': instance.status,
      'sfOrgId': instance.sfOrgId,
      'submitedById': instance.submitedById,
      'sfRecordId': instance.sfRecordId,
      'timeBasedHours': instance.timeBasedHours,
      'employeeId': instance.employeeId,
      'payslipId': instance.payslipId,
      'placementId': instance.placementId,
      'comment': instance.comment,
      'employeeFase': instance.employeeFase,
      'resFdUitbet': instance.resFdUitbet,
      'resKvUitbet': instance.resKvUitbet,
      'resAdvUitbet': instance.resAdvUitbet,
      'resTvtUitbet': instance.resTvtUitbet,
      'resVgUitbet': instance.resVgUitbet,
      'resVDtUitbet': instance.resVDtUitbet,
      'resVDwUitbet': instance.resVDwUitbet,
      'resVDbUitbet': instance.resVDbUitbet,
      'withdrawWkFD': instance.withdrawWkFD,
      'withdrawWkKV': instance.withdrawWkKV,
      'withdrawWkADV': instance.withdrawWkADV,
      'withdrawWkTVT': instance.withdrawWkTVT,
      'withdrawWkVG': instance.withdrawWkVG,
      'withdrawWkVDt': instance.withdrawWkVDt,
      'withdrawWkVDw': instance.withdrawWkVDw,
      'withdrawWkVDb': instance.withdrawWkVDb,
    };
