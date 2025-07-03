// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchListModel _$SearchListModelFromJson(Map<String, dynamic> json) =>
    SearchListModel(
      (json['result'] as List<dynamic>)
          .map((e) => SearchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchListModelToJson(SearchListModel instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
