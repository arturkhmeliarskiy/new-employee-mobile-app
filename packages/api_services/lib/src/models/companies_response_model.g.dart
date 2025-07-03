// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompaniesResponseModel _$CompaniesResponseModelFromJson(
        Map<String, dynamic> json) =>
    CompaniesResponseModel(
      json['code'] as int?,
      (json['jobCompanies'] as List<dynamic>?)
          ?.map((e) => JobCompanies.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['count'] as int?,
    );

Map<String, dynamic> _$CompaniesResponseModelToJson(
        CompaniesResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'jobCompanies': instance.jobCompanies,
      'count': instance.count,
    };
