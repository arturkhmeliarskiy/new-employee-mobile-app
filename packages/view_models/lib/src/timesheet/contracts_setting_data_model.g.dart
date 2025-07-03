// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contracts_setting_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContractsSettingDataModel _$$_ContractsSettingDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_ContractsSettingDataModel(
      id: json['id'] as String,
      name: json['name'] as String,
      stallPayment: json['stallPayment'] as bool,
      vakkrachtBouw: json['vakkrachtBouw'] as bool,
      vakkrachtBouwUTA: json['vakkrachtBouwUTA'] as bool,
      entity: json['entity'] as String,
      contactEntity: json['contactEntity'] as String,
      wekenteller: json['wekenteller'] as int,
      fase: json['fase'] as String,
      sfOrgId: json['sfOrgId'] as String,
      sfLEId: json['sfLEId'] as String,
      sfRecordId: json['sfRecordId'] as String,
      isNegativeReservationsAllowed:
          json['isNegativeReservationsAllowed'] as bool,
      ignoreWML: json['ignoreWML'] as bool,
      spAdv: json['spAdv'] as bool,
      spFd: json['spFd'] as bool,
      spKv: json['spKv'] as bool,
      spTvt: json['spTvt'] as bool,
      spVdb: json['spVdb'] as bool,
      spVdw: json['spVdw'] as bool,
      spVg: json['spVg'] as bool,
    );

Map<String, dynamic> _$$_ContractsSettingDataModelToJson(
        _$_ContractsSettingDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'stallPayment': instance.stallPayment,
      'vakkrachtBouw': instance.vakkrachtBouw,
      'vakkrachtBouwUTA': instance.vakkrachtBouwUTA,
      'entity': instance.entity,
      'contactEntity': instance.contactEntity,
      'wekenteller': instance.wekenteller,
      'fase': instance.fase,
      'sfOrgId': instance.sfOrgId,
      'sfLEId': instance.sfLEId,
      'sfRecordId': instance.sfRecordId,
      'isNegativeReservationsAllowed': instance.isNegativeReservationsAllowed,
      'ignoreWML': instance.ignoreWML,
      'spAdv': instance.spAdv,
      'spFd': instance.spFd,
      'spKv': instance.spKv,
      'spTvt': instance.spTvt,
      'spVdb': instance.spVdb,
      'spVdw': instance.spVdw,
      'spVg': instance.spVg,
    };
