import 'package:json_annotation/json_annotation.dart';

part 'job_companies.g.dart';

@JsonSerializable()
class JobCompanies {
  String? id;
  String? name;
  String? companyName;
  String? firstName;
  String? lastName;
  String? functieName;
  String? startDate;
  String? endDate;
  String? sfRecordId;
  String? agencyId;
  String? employeeId;
  String? approvalClients;
  String? disableEditingTimesheets;
  bool? disableTimesheetsEdition;
  String? loonBijUitzending;
  String? projectName;
  String? responsibleClientPhone;
  String? responsibleClientEmail;
  String? contactInfo;
  String? phone;
  String? email;

  JobCompanies(
    this.id,
    this.name,
    this.companyName,
    this.firstName,
    this.lastName,
    this.functieName,
    this.startDate,
    this.endDate,
    this.sfRecordId,
    this.agencyId,
    this.employeeId,
    this.approvalClients,
    this.disableEditingTimesheets,
    this.disableTimesheetsEdition,
    this.loonBijUitzending,
    this.projectName,
    this.responsibleClientPhone,
    this.responsibleClientEmail,
    this.contactInfo,
    this.phone,
    this.email,
  );

  factory JobCompanies.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$JobCompaniesFromJson(json);

  Map<String, dynamic> toJson() => _$JobCompaniesToJson(this);

  static const fromJsonFactory = _$JobCompaniesFromJson;
}
