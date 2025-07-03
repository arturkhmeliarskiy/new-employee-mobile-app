// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uitzending.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Uitzending _$UitzendingFromJson(Map<String, dynamic> json) => Uitzending(
      json['id'] as String?,
      json['startDate'] as String?,
      json['endDate'] as String?,
      json['employeeId'] as String?,
      json['hoursPerWeek'] as String?,
      json['defaultProject'] as String?,
      json['disableEditingTimesheets'] as String?,
      json['employeeId__al.disableTimesheetsEdition'] as bool?,
      json['contracttype'] as String?,
      json['typeHourRegistrationVia'] as String?,
      json['sfOrgId'] as String?,
      json['dienstverband_Status'] as String?,
      json['employeeId__al.firstName'] as String?,
      json['employeeId__al.lastName'] as String?,
      json['employeeId__al.sfRecordId'] as String?,
      json['employeeId__al.sfLEId'] as String?,
      json['employeeId__al.agencyId'] as String?,
      json['employeeId__al.dienstverband_Status'] as String?,
      json['employeeId__al.fase'] as String?,
      json['employeeId__al.birthdate'] as String?,
      json['employeeId__al.blockedReservations'] as String?,
      json['employeeId__al.mailingCountry'] as String?,
      json['employeeId__al.mailingcity'] as String?,
      json['employeeId__al.mailingStreet'] as String?,
      json['costPrizeCalculationId__al.contractType'] as String?,
      json['costPrizeCalculationId__al.placementClause'] as bool?,
      json['tariffPackId__al.usedUnravelingTypes'] as List<dynamic>?,
    );

Map<String, dynamic> _$UitzendingToJson(Uitzending instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'employeeId': instance.employeeId,
      'hoursPerWeek': instance.hoursPerWeek,
      'defaultProject': instance.defaultProject,
      'disableEditingTimesheets': instance.disableEditingTimesheets,
      'employeeId__al.disableTimesheetsEdition':
          instance.employeeIdAllDisableTimesheetsEdition,
      'contracttype': instance.contracttype,
      'typeHourRegistrationVia': instance.typeHourRegistrationVia,
      'sfOrgId': instance.sfOrgId,
      'dienstverband_Status': instance.dienstverbandStatus,
      'employeeId__al.firstName': instance.employeeIdAllFirstName,
      'employeeId__al.lastName': instance.employeeIdAllLastName,
      'employeeId__al.sfRecordId': instance.employeeIdAllSfRecordId,
      'employeeId__al.sfLEId': instance.employeeIdAllSfLEId,
      'employeeId__al.agencyId': instance.employeeIdAllAgencyId,
      'employeeId__al.dienstverband_Status':
          instance.employeeIdAllDienstverbandStatus,
      'employeeId__al.fase': instance.employeeIdAllFase,
      'employeeId__al.birthdate': instance.employeeIdAllBirthdate,
      'employeeId__al.blockedReservations':
          instance.employeeIdAllBlockedReservations,
      'employeeId__al.mailingCountry': instance.employeeIdAllMailingCountry,
      'employeeId__al.mailingcity': instance.employeeIdAllMailingcity,
      'employeeId__al.mailingStreet': instance.employeeIdAllMailingStreet,
      'costPrizeCalculationId__al.contractType':
          instance.costPrizeCalculationIdAlContractType,
      'costPrizeCalculationId__al.placementClause':
          instance.costPrizeCalculationIdAlPlacementClause,
      'tariffPackId__al.usedUnravelingTypes':
          instance.tariffPackIdAlUsedUnravelingTypes,
    };
