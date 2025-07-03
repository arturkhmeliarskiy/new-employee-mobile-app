// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarifs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tarifs _$TarifsFromJson(Map<String, dynamic> json) => Tarifs(
      json['id'] as String?,
      json['name'] as String?,
      json['nameTariffCustomer'] as String?,
      json['nameTariffLineForce'] as String?,
      json['hourCategoryDescription'] as String?,
      json['validUntil'] as String?,
      json['validFrom'] as String?,
      (json['invoicePercentage'] as num?)?.toDouble(),
      json['invoiceFactor'] as String?,
      json['invoiceBedrag'] as String?,
      json['invoiceFactorPremie'] as String?,
      json['raise'] as String?,
      (json['compensatPrc'] as num?)?.toDouble(),
      json['tariffNumber'] as String?,
      json['isGetLEorg'] as bool?,
      json['sfOrgId'] as String?,
      json['sfLEId'] as String?,
      json['isDeleted'] as bool?,
      json['sfRecordId'] as String?,
      json['visibilityOnApp'] as bool?,
      json['visibilityOnAppFor'] as String?,
      json['maxUsagePerDay'] as String?,
      json['maxUsagePerWeek'] as String?,
      json['isActive'] as bool?,
      json['createdAt'] as String?,
      json['tariffPackId'] as String?,
    );

Map<String, dynamic> _$TarifsToJson(Tarifs instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameTariffCustomer': instance.nameTariffCustomer,
      'nameTariffLineForce': instance.nameTariffLineForce,
      'hourCategoryDescription': instance.hourCategoryDescription,
      'validUntil': instance.validUntil,
      'validFrom': instance.validFrom,
      'invoicePercentage': instance.invoicePercentage,
      'invoiceFactor': instance.invoiceFactor,
      'invoiceBedrag': instance.invoiceBedrag,
      'invoiceFactorPremie': instance.invoiceFactorPremie,
      'raise': instance.raise,
      'compensatPrc': instance.compensatPrc,
      'tariffNumber': instance.tariffNumber,
      'isGetLEorg': instance.isGetLEorg,
      'sfOrgId': instance.sfOrgId,
      'sfLEId': instance.sfLEId,
      'isDeleted': instance.isDeleted,
      'sfRecordId': instance.sfRecordId,
      'visibilityOnApp': instance.visibilityOnApp,
      'visibilityOnAppFor': instance.visibilityOnAppFor,
      'maxUsagePerDay': instance.maxUsagePerDay,
      'maxUsagePerWeek': instance.maxUsagePerWeek,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt,
      'tariffPackId': instance.tariffPackId,
    };
