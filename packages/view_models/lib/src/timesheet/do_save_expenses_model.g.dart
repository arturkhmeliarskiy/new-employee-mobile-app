// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'do_save_expenses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DoSaveExpensesModel _$$_DoSaveExpensesModelFromJson(
        Map<String, dynamic> json) =>
    _$_DoSaveExpensesModel(
      sortedExpensesMapAsJSON: json['sortedExpensesMapAsJSON'] as String,
      sortedExpensesMap: ExpensesSortedMapModel.fromJson(
          json['sortedExpensesMap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DoSaveExpensesModelToJson(
        _$_DoSaveExpensesModel instance) =>
    <String, dynamic>{
      'sortedExpensesMapAsJSON': instance.sortedExpensesMapAsJSON,
      'sortedExpensesMap': instance.sortedExpensesMap,
    };
