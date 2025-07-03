// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_json_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StyleJsonDataModel _$$_StyleJsonDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_StyleJsonDataModel(
      header: json['header'] == null
          ? null
          : HeaderDataModel.fromJson(json['header'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StyleJsonDataModelToJson(
        _$_StyleJsonDataModel instance) =>
    <String, dynamic>{
      'header': instance.header,
    };
