// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExpenseDataModel _$$_ExpenseDataModelFromJson(Map<String, dynamic> json) =>
    _$_ExpenseDataModel(
      id: json['id'] as String,
      name: json['name'] as String,
      date: json['date'] as String,
      price: json['price'] as String,
      cardType: json['cardType'] as String,
      numberOfUnits: (json['numberOfUnits'] as num).toDouble(),
      pricePerPaymentFrequency:
          (json['pricePerPaymentFrequency'] as num).toDouble(),
      explanation: json['explanation'] as String,
      amountCostPerUnit: json['amountCostPerUnit'] as String,
      createdAt: json['createdAt'] as String,
      cpcExpenseTypeConfigId: json['cpcExpenseTypeConfigId'] as String,
      projectId: json['projectId'] as String,
      timesheetId: json['timesheetId'] as String,
      sfWithdrawalRemainder: json['sfWithdrawalRemainder'] as String,
    );

Map<String, dynamic> _$$_ExpenseDataModelToJson(_$_ExpenseDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': instance.date,
      'price': instance.price,
      'cardType': instance.cardType,
      'numberOfUnits': instance.numberOfUnits,
      'pricePerPaymentFrequency': instance.pricePerPaymentFrequency,
      'explanation': instance.explanation,
      'amountCostPerUnit': instance.amountCostPerUnit,
      'createdAt': instance.createdAt,
      'cpcExpenseTypeConfigId': instance.cpcExpenseTypeConfigId,
      'projectId': instance.projectId,
      'timesheetId': instance.timesheetId,
      'sfWithdrawalRemainder': instance.sfWithdrawalRemainder,
    };
