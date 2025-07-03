// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_sorted_map_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExpensesSortedMapModel _$$_ExpensesSortedMapModelFromJson(
        Map<String, dynamic> json) =>
    _$_ExpensesSortedMapModel(
      toInsert: (json['toInsert'] as List<dynamic>)
          .map((e) => ExpensesDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      toUpdate: (json['toUpdate'] as List<dynamic>)
          .map((e) => ExpensesDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      toDelete: (json['toDelete'] as List<dynamic>)
          .map((e) => ExpensesDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExpensesSortedMapModelToJson(
        _$_ExpensesSortedMapModel instance) =>
    <String, dynamic>{
      'toInsert': instance.toInsert,
      'toUpdate': instance.toUpdate,
      'toDelete': instance.toDelete,
    };
