import 'package:api_services/src/models/job_companies.dart';
import 'package:json_annotation/json_annotation.dart';

part 'companies_response_model.g.dart';

@JsonSerializable()
class CompaniesResponseModel {
  int? code;
  List<JobCompanies>? jobCompanies;
  int? count;

  CompaniesResponseModel(
    this.code,
    this.jobCompanies,
    this.count,
  );

  factory CompaniesResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CompaniesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesResponseModelToJson(this);

  static const fromJsonFactory = _$CompaniesResponseModelFromJson;
}
