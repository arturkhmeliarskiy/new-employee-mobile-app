// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpc_expense_type_conf_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CpcExpenseTypeConfDataModel _$$_CpcExpenseTypeConfDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_CpcExpenseTypeConfDataModel(
      id: json['id'] as String,
      sfRecordId: json['sfRecordId'] as String,
      sfLEId: json['sfLEId'] as String,
      sfOrgId: json['sfOrgId'] as String,
      active: json['active'] as bool,
      additionalRows: json['additionalRows'] as String,
      allocation: json['allocation'] as String,
      allowedDaysOfWeek: json['allowedDaysOfWeek'] as String,
      allowedNumberOfDays: json['allowedNumberOfDays'] as int,
      name: json['name'] as String,
      amountCostPerUnit: json['amountCostPerUnit'] as String,
      description: json['description'] as String,
      timesheetExpenseTypeId: json['timesheetExpenseTypeId'] as String,
      placementId: json['placementId'] as String,
      employeeId: json['employeeId'] as String,
      reimbursementWithdrawal: json['reimbursementWithdrawal'] as String,
      positive: json['positive'] as bool,
      validFrom: json['validFrom'] as String,
      validTo: json['validTo'] as String,
      nameForEmployee: json['nameForEmployee'] as String,
      visibilityForEmployee: json['visibilityForEmployee'] as String,
      maximumAmountCostPerTp:
          (json['maximumAmountCostPerTp'] as num).toDouble(),
      minimumAmountCostPerTp:
          (json['minimumAmountCostPerTp'] as num).toDouble(),
      maximumAmountCostPerUnit:
          (json['maximumAmountCostPerUnit'] as num).toDouble(),
      minimumAmountCostPerUnit:
          (json['minimumAmountCostPerUnit'] as num).toDouble(),
      maximumAmountUnitsPerTp:
          (json['maximumAmountUnitsPerTp'] as num).toDouble(),
      minimumAmountUnitsPerTp:
          (json['minimumAmountUnitsPerTp'] as num).toDouble(),
      maximumAmountUnitsPerDay:
          (json['maximumAmountUnitsPerDay'] as num).toDouble(),
      minimumAmountUnitsPerDay:
          (json['minimumAmountUnitsPerDay'] as num).toDouble(),
      invoicePercentage: json['invoicePercentage'] as String,
      applyBelowHourrate: json['applyBelowHourrate'] as String?,
      applyAboveHourrate: json['applyAboveHourrate'] as String?,
    );

Map<String, dynamic> _$$_CpcExpenseTypeConfDataModelToJson(
        _$_CpcExpenseTypeConfDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sfRecordId': instance.sfRecordId,
      'sfLEId': instance.sfLEId,
      'sfOrgId': instance.sfOrgId,
      'active': instance.active,
      'additionalRows': instance.additionalRows,
      'allocation': instance.allocation,
      'allowedDaysOfWeek': instance.allowedDaysOfWeek,
      'allowedNumberOfDays': instance.allowedNumberOfDays,
      'name': instance.name,
      'amountCostPerUnit': instance.amountCostPerUnit,
      'description': instance.description,
      'timesheetExpenseTypeId': instance.timesheetExpenseTypeId,
      'placementId': instance.placementId,
      'employeeId': instance.employeeId,
      'reimbursementWithdrawal': instance.reimbursementWithdrawal,
      'positive': instance.positive,
      'validFrom': instance.validFrom,
      'validTo': instance.validTo,
      'nameForEmployee': instance.nameForEmployee,
      'visibilityForEmployee': instance.visibilityForEmployee,
      'maximumAmountCostPerTp': instance.maximumAmountCostPerTp,
      'minimumAmountCostPerTp': instance.minimumAmountCostPerTp,
      'maximumAmountCostPerUnit': instance.maximumAmountCostPerUnit,
      'minimumAmountCostPerUnit': instance.minimumAmountCostPerUnit,
      'maximumAmountUnitsPerTp': instance.maximumAmountUnitsPerTp,
      'minimumAmountUnitsPerTp': instance.minimumAmountUnitsPerTp,
      'maximumAmountUnitsPerDay': instance.maximumAmountUnitsPerDay,
      'minimumAmountUnitsPerDay': instance.minimumAmountUnitsPerDay,
      'invoicePercentage': instance.invoicePercentage,
      'applyBelowHourrate': instance.applyBelowHourrate,
      'applyAboveHourrate': instance.applyAboveHourrate,
    };
