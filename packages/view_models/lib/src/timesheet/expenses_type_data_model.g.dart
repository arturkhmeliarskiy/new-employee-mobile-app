// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_type_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExpenseTypeDataModel _$$_ExpenseTypeDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_ExpenseTypeDataModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      expensesPrice: json['expensesPrice'] as String?,
      invoicePercentage: json['invoicePercentage'] as int?,
      wagePercentage: json['wagePercentage'] as int?,
      recordTypeSFName: json['recordTypeSFName'] as String?,
      tax: json['tax'] as String?,
      payoutPer: json['payoutPer'] as String?,
      units: json['units'] as String?,
      type: json['type'] as String?,
      sfOrgId: json['sfOrgId'] as String?,
      isGetLEorg: json['isGetLEorg'] as bool?,
      sfLEId: json['sfLEId'] as String?,
      sfRecordId: json['sfRecordId'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      vergoedingInhouding: json['vergoedingInhouding'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$_ExpenseTypeDataModelToJson(
        _$_ExpenseTypeDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'expensesPrice': instance.expensesPrice,
      'invoicePercentage': instance.invoicePercentage,
      'wagePercentage': instance.wagePercentage,
      'recordTypeSFName': instance.recordTypeSFName,
      'tax': instance.tax,
      'payoutPer': instance.payoutPer,
      'units': instance.units,
      'type': instance.type,
      'sfOrgId': instance.sfOrgId,
      'isGetLEorg': instance.isGetLEorg,
      'sfLEId': instance.sfLEId,
      'sfRecordId': instance.sfRecordId,
      'isDeleted': instance.isDeleted,
      'vergoedingInhouding': instance.vergoedingInhouding,
      'createdAt': instance.createdAt,
    };
