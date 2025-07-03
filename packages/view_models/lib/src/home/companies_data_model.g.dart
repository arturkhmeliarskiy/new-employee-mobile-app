// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompaniesDataModel _$$_CompaniesDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_CompaniesDataModel(
      code: json['code'] as int?,
      jobCompanies: (json['jobCompanies'] as List<dynamic>?)
          ?.map(
              (e) => JobCompaniesDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_CompaniesDataModelToJson(
        _$_CompaniesDataModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'jobCompanies': instance.jobCompanies,
      'count': instance.count,
    };
