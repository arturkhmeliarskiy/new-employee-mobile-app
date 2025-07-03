import 'package:json_annotation/json_annotation.dart';

part 'contracts.g.dart';

@JsonSerializable()
class Contracts {
  String? id;
  int? mo;
  int? tu;
  int? we;
  int? th;
  int? fr;
  int? su;
  int? sa;
  String? writtenContract;
  String? validation;
  int? totalNumberHoursPerWeek;
  String? startDate;
  String? endDate;
  String? nameContract;
  String? fase;
  String? influenceObligedInsurance;
  String? contractType;
  String? entity;
  String? sfOrgId;
  bool? isGetLEorg;
  bool? isDeleted;
  String? sfLEId;
  String? sfRecordId;
  String? createdAt;
  String? employeeId;

  Contracts({
    this.id,
    this.mo,
    this.tu,
    this.we,
    this.th,
    this.fr,
    this.su,
    this.sa,
    this.writtenContract,
    this.validation,
    this.totalNumberHoursPerWeek,
    this.startDate,
    this.endDate,
    this.nameContract,
    this.fase,
    this.influenceObligedInsurance,
    this.contractType,
    this.entity,
    this.sfOrgId,
    this.isGetLEorg,
    this.isDeleted,
    this.sfLEId,
    this.sfRecordId,
    this.createdAt,
    this.employeeId,
  });

  factory Contracts.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ContractsFromJson(json);

  Map<String, dynamic> toJson() => _$ContractsToJson(this);

  static const fromJsonFactory = _$ContractsFromJson;
}
