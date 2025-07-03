// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contracts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contracts _$ContractsFromJson(Map<String, dynamic> json) => Contracts(
      id: json['id'] as String?,
      mo: json['mo'] as int?,
      tu: json['tu'] as int?,
      we: json['we'] as int?,
      th: json['th'] as int?,
      fr: json['fr'] as int?,
      su: json['su'] as int?,
      sa: json['sa'] as int?,
      writtenContract: json['writtenContract'] as String?,
      validation: json['validation'] as String?,
      totalNumberHoursPerWeek: json['totalNumberHoursPerWeek'] as int?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      nameContract: json['nameContract'] as String?,
      fase: json['fase'] as String?,
      influenceObligedInsurance: json['influenceObligedInsurance'] as String?,
      contractType: json['contractType'] as String?,
      entity: json['entity'] as String?,
      sfOrgId: json['sfOrgId'] as String?,
      isGetLEorg: json['isGetLEorg'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
      sfLEId: json['sfLEId'] as String?,
      sfRecordId: json['sfRecordId'] as String?,
      createdAt: json['createdAt'] as String?,
      employeeId: json['employeeId'] as String?,
    );

Map<String, dynamic> _$ContractsToJson(Contracts instance) => <String, dynamic>{
      'id': instance.id,
      'mo': instance.mo,
      'tu': instance.tu,
      'we': instance.we,
      'th': instance.th,
      'fr': instance.fr,
      'su': instance.su,
      'sa': instance.sa,
      'writtenContract': instance.writtenContract,
      'validation': instance.validation,
      'totalNumberHoursPerWeek': instance.totalNumberHoursPerWeek,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'nameContract': instance.nameContract,
      'fase': instance.fase,
      'influenceObligedInsurance': instance.influenceObligedInsurance,
      'contractType': instance.contractType,
      'entity': instance.entity,
      'sfOrgId': instance.sfOrgId,
      'isGetLEorg': instance.isGetLEorg,
      'isDeleted': instance.isDeleted,
      'sfLEId': instance.sfLEId,
      'sfRecordId': instance.sfRecordId,
      'createdAt': instance.createdAt,
      'employeeId': instance.employeeId,
    };
