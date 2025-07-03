import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_companies_data_model.freezed.dart';
part 'job_companies_data_model.g.dart';

@freezed
class JobCompaniesDataModel with _$JobCompaniesDataModel {
  const factory JobCompaniesDataModel({
    required String id,
    required String name,
    required String companyName,
    required String firstName,
    required String lastName,
    required String functieName,
    required String startDate,
    required String endDate,
    required String sfRecordId,
    required String approvalClients,
    required String agencyId,
    required String orgName,
    required String agencyColor,
    required String orgLogo,
    required String employeeId,
    required String disableEditingTimesheets,
    required bool disableTimesheetsEdition,
    required String loonBijUitzending,
    required String projectName,
    required String responsibleClientPhone,
    required String responsibleClientEmail,
    required String contactInfo,
    required String phone,
    required String email,
  }) = _JobCompaniesDataModel;

  factory JobCompaniesDataModel.fromJson(Map<String, dynamic> json) =>
      _$JobCompaniesDataModelFromJson(json);
}
