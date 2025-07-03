// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wdc_onkosten_regel_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WdcOnkostenregelDataModel _$$_WdcOnkostenregelDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_WdcOnkostenregelDataModel(
      id: json['id'] as String,
      name: json['name'] as String,
      date: json['date'] as String,
      numberOfUnits: json['numberOfUnits'] as String,
      price: json['price'] as String,
      pricePerPaymentFrequency: json['pricePerPaymentFrequency'] as String,
      explanation: json['explanation'] as String,
      sfOrgId: json['sfOrgId'] as String,
      sfLEId: json['sfLEId'] as String,
      amountCostPerUnit: json['amountCostPerUnit'] as String,
      sfRecordId: json['sfRecordId'] as String,
      bTW: json['bTW'] as String,
      isDividedPerDays: json['isDividedPerDays'] as bool,
      maximaalBedrag: json['maximaalBedrag'] as String,
      departureAddress: json['departureAddress'] as String,
      destinationAddress: json['destinationAddress'] as String,
      returnRoute: json['returnRoute'] as bool,
      cpcExpenseTypeConfigId: json['cpcExpenseTypeConfigId'] as String,
    );

Map<String, dynamic> _$$_WdcOnkostenregelDataModelToJson(
        _$_WdcOnkostenregelDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': instance.date,
      'numberOfUnits': instance.numberOfUnits,
      'price': instance.price,
      'pricePerPaymentFrequency': instance.pricePerPaymentFrequency,
      'explanation': instance.explanation,
      'sfOrgId': instance.sfOrgId,
      'sfLEId': instance.sfLEId,
      'amountCostPerUnit': instance.amountCostPerUnit,
      'sfRecordId': instance.sfRecordId,
      'bTW': instance.bTW,
      'isDividedPerDays': instance.isDividedPerDays,
      'maximaalBedrag': instance.maximaalBedrag,
      'departureAddress': instance.departureAddress,
      'destinationAddress': instance.destinationAddress,
      'returnRoute': instance.returnRoute,
      'cpcExpenseTypeConfigId': instance.cpcExpenseTypeConfigId,
    };
