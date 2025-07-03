import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/home/job_companies_data_model.dart';

part 'companies_data_model.freezed.dart';
part 'companies_data_model.g.dart';

@freezed
class CompaniesDataModel with _$CompaniesDataModel {
  const factory CompaniesDataModel({
    required int? code,
    required List<JobCompaniesDataModel>? jobCompanies,
    required int? count,
  }) = _CompaniesDataModel;

  factory CompaniesDataModel.fromJson(Map<String, dynamic> json) =>
      _$CompaniesDataModelFromJson(json);
}
