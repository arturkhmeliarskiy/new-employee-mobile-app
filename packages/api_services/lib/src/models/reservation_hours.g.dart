// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationHours _$ReservationHoursFromJson(Map<String, dynamic> json) =>
    ReservationHours(
      json['id'] as String?,
      json['name'] as String?,
      json['date'] as String?,
      (json['amountOfHours'] as num?)?.toDouble(),
      json['description'] as String?,
      json['sfOrgId'] as String?,
      json['isUpsertApp'] as bool?,
      json['isGetLEorg'] as bool?,
      json['isDeleted'] as bool?,
      json['sfLEId'] as String?,
      json['sfRecordId'] as String?,
      json['uurloonBijUitzending'] as String?,
      json['loonPerc'] as int?,
      json['unraveling'] as bool?,
      json['createdAt'] as String?,
      json['projectId'] as String?,
      json['tarifId'] as String?,
      json['timesheetId'] as String?,
      json['tarifId__al.id'] as String?,
      json['tarifId__al.name'] as String?,
      json['tarifIdAlCompensatPrc'] as int?,
    );

Map<String, dynamic> _$ReservationHoursToJson(ReservationHours instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': instance.date,
      'amountOfHours': instance.amountOfHours,
      'description': instance.description,
      'sfOrgId': instance.sfOrgId,
      'isUpsertApp': instance.isUpsertApp,
      'isGetLEorg': instance.isGetLEorg,
      'isDeleted': instance.isDeleted,
      'sfLEId': instance.sfLEId,
      'sfRecordId': instance.sfRecordId,
      'uurloonBijUitzending': instance.uurloonBijUitzending,
      'loonPerc': instance.loonPerc,
      'unraveling': instance.unraveling,
      'createdAt': instance.createdAt,
      'projectId': instance.projectId,
      'tarifId': instance.tarifId,
      'timesheetId': instance.timesheetId,
      'tarifId__al.id': instance.tarifIdAlId,
      'tarifId__al.name': instance.tarifIdAlName,
      'tarifIdAlCompensatPrc': instance.tarifIdAlCompensatPrc,
    };
