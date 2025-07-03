// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarifs_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TarifsDataModel _$$_TarifsDataModelFromJson(Map<String, dynamic> json) =>
    _$_TarifsDataModel(
      id: json['id'] as String,
      name: json['name'] as String,
      nameTariffLineForce: json['nameTariffLineForce'] as String,
      hourCategoryDescription: json['hourCategoryDescription'] as String,
      validFrom: json['validFrom'] as String,
      validUntil: json['validUntil'] as String,
      compensatPrc: (json['compensatPrc'] as num).toDouble(),
      tariffNumber: json['tariffNumber'] as String,
      isGetLEorg: json['isGetLEorg'] as bool,
      sfOrgId: json['sfOrgId'] as String,
      sfLEId: json['sfLEId'] as String,
      isDeleted: json['isDeleted'] as bool,
      sfRecordId: json['sfRecordId'] as String,
      createdAt: json['createdAt'] as String,
      tariffPackId: json['tariffPackId'] as String,
      maxUsagePerDay: json['maxUsagePerDay'] as String,
      maxUsagePerWeek: json['maxUsagePerWeek'] as String,
      visibilityOnAppFor: json['visibilityOnAppFor'] as String,
      visibilityOnApp: json['visibilityOnApp'] as bool,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$_TarifsDataModelToJson(_$_TarifsDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameTariffLineForce': instance.nameTariffLineForce,
      'hourCategoryDescription': instance.hourCategoryDescription,
      'validFrom': instance.validFrom,
      'validUntil': instance.validUntil,
      'compensatPrc': instance.compensatPrc,
      'tariffNumber': instance.tariffNumber,
      'isGetLEorg': instance.isGetLEorg,
      'sfOrgId': instance.sfOrgId,
      'sfLEId': instance.sfLEId,
      'isDeleted': instance.isDeleted,
      'sfRecordId': instance.sfRecordId,
      'createdAt': instance.createdAt,
      'tariffPackId': instance.tariffPackId,
      'maxUsagePerDay': instance.maxUsagePerDay,
      'maxUsagePerWeek': instance.maxUsagePerWeek,
      'visibilityOnAppFor': instance.visibilityOnAppFor,
      'visibilityOnApp': instance.visibilityOnApp,
      'isActive': instance.isActive,
    };
