// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactSetting _$ContactSettingFromJson(Map<String, dynamic> json) =>
    ContactSetting(
      json['id'] as String?,
      json['name'] as String?,
      json['stallPayment'] as bool?,
      json['sp_adv'] as bool?,
      json['sp_fd'] as bool?,
      json['sp_kv'] as bool?,
      json['sp_tvt'] as bool?,
      json['sp_vdb'] as bool?,
      json['sp_vdw'] as bool?,
      json['sp_vg'] as bool?,
      json['stiplu'] as bool?,
      json['stipp'] as bool?,
      json['vakkrachtBouw'] as bool?,
      json['vakkrachtBouwUTA'] as bool?,
      json['entity'] as String?,
      json['contactEntity'] as String?,
      json['wekenteller'] as int?,
      json['fase'] as String?,
      json['isUpsertApp'] as bool?,
      json['isGetLEorg'] as bool?,
      json['isDeleted'] as bool?,
      json['sfOrgId'] as String?,
      json['sfLEId'] as String?,
      json['sfRecordId'] as String?,
      json['isNegativeReservationsAllowed'] as bool?,
      json['ignoreWML'] as bool?,
      json['createdAt'] as String?,
      json['employeeId'] as String?,
    );

Map<String, dynamic> _$ContactSettingToJson(ContactSetting instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'stallPayment': instance.stallPayment,
      'sp_adv': instance.spAdv,
      'sp_fd': instance.spFd,
      'sp_kv': instance.spKv,
      'sp_tvt': instance.spTvt,
      'sp_vdb': instance.spVdb,
      'sp_vdw': instance.spVdw,
      'sp_vg': instance.spVg,
      'stiplu': instance.stiplu,
      'stipp': instance.stipp,
      'vakkrachtBouw': instance.vakkrachtBouw,
      'vakkrachtBouwUTA': instance.vakkrachtBouwUTA,
      'entity': instance.entity,
      'contactEntity': instance.contactEntity,
      'wekenteller': instance.wekenteller,
      'fase': instance.fase,
      'isUpsertApp': instance.isUpsertApp,
      'isGetLEorg': instance.isGetLEorg,
      'isDeleted': instance.isDeleted,
      'sfOrgId': instance.sfOrgId,
      'sfLEId': instance.sfLEId,
      'sfRecordId': instance.sfRecordId,
      'isNegativeReservationsAllowed': instance.isNegativeReservationsAllowed,
      'ignoreWML': instance.ignoreWML,
      'createdAt': instance.createdAt,
      'employeeId': instance.employeeId,
    };
