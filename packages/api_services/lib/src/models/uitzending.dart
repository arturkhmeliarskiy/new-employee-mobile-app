import 'package:json_annotation/json_annotation.dart';

part 'uitzending.g.dart';

@JsonSerializable()
class Uitzending {
  String? id;
  String? startDate;
  String? endDate;
  String? employeeId;
  String? hoursPerWeek;
  String? defaultProject;
  String? disableEditingTimesheets;
  @JsonKey(name: 'employeeId__al.disableTimesheetsEdition')
  bool? employeeIdAllDisableTimesheetsEdition;
  String? contracttype;
  String? typeHourRegistrationVia;
  String? sfOrgId;
  @JsonKey(name: 'dienstverband_Status')
  String? dienstverbandStatus;
  @JsonKey(name: 'employeeId__al.firstName')
  String? employeeIdAllFirstName;
  @JsonKey(name: 'employeeId__al.lastName')
  String? employeeIdAllLastName;
  @JsonKey(name: 'employeeId__al.sfRecordId')
  String? employeeIdAllSfRecordId;
  @JsonKey(name: 'employeeId__al.sfLEId')
  String? employeeIdAllSfLEId;
  @JsonKey(name: 'employeeId__al.agencyId')
  String? employeeIdAllAgencyId;
  @JsonKey(name: 'employeeId__al.dienstverband_Status')
  String? employeeIdAllDienstverbandStatus;
  @JsonKey(name: 'employeeId__al.fase')
  String? employeeIdAllFase;
  @JsonKey(name: 'employeeId__al.birthdate')
  String? employeeIdAllBirthdate;
  @JsonKey(name: 'employeeId__al.blockedReservations')
  String? employeeIdAllBlockedReservations;
  @JsonKey(name: 'employeeId__al.mailingCountry')
  String? employeeIdAllMailingCountry;
  @JsonKey(name: 'employeeId__al.mailingcity')
  String? employeeIdAllMailingcity;
  @JsonKey(name: 'employeeId__al.mailingStreet')
  String? employeeIdAllMailingStreet;
  @JsonKey(name: 'costPrizeCalculationId__al.contractType')
  String? costPrizeCalculationIdAlContractType;
  @JsonKey(name: 'costPrizeCalculationId__al.placementClause')
  bool? costPrizeCalculationIdAlPlacementClause;
  @JsonKey(name: 'tariffPackId__al.usedUnravelingTypes')
  List<dynamic>? tariffPackIdAlUsedUnravelingTypes;

  Uitzending(
    this.id,
    this.startDate,
    this.endDate,
    this.employeeId,
    this.hoursPerWeek,
    this.defaultProject,
    this.disableEditingTimesheets,
    this.employeeIdAllDisableTimesheetsEdition,
    this.contracttype,
    this.typeHourRegistrationVia,
    this.sfOrgId,
    this.dienstverbandStatus,
    this.employeeIdAllFirstName,
    this.employeeIdAllLastName,
    this.employeeIdAllSfRecordId,
    this.employeeIdAllSfLEId,
    this.employeeIdAllAgencyId,
    this.employeeIdAllDienstverbandStatus,
    this.employeeIdAllFase,
    this.employeeIdAllBirthdate,
    this.employeeIdAllBlockedReservations,
    this.employeeIdAllMailingCountry,
    this.employeeIdAllMailingcity,
    this.employeeIdAllMailingStreet,
    this.costPrizeCalculationIdAlContractType,
    this.costPrizeCalculationIdAlPlacementClause,
    this.tariffPackIdAlUsedUnravelingTypes,
  );

  factory Uitzending.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UitzendingFromJson(json);

  Map<String, dynamic> toJson() => _$UitzendingToJson(this);

  static const fromJsonFactory = _$UitzendingFromJson;
}
