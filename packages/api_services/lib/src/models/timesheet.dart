// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'timesheet.g.dart';

@JsonSerializable()
class Timesheet {
  String? id;
  String? name;
  String? startDate;
  String? endDate;
  String? status;
  String? sfOrgId;
  bool? timesheetFilledIn;
  String? submitedById;
  String? sfRecordId;
  String? comment;
  String? employeeFase;
  String? nextApprover;
  String? totalPeriodHours;
  String? workedHours;
  String? timeBasedHours;
  String? createdAt;
  String? employeeId;
  String? payslipId;
  String? placementId;
  bool? dagToggleRes;
  @JsonKey(name: 'ResFD_uitbet')
  bool? resFdUitbet;
  @JsonKey(name: 'ResKV_uitbet')
  bool? resKvUitbet;
  @JsonKey(name: 'ResADV_uitbet')
  bool? resAdvUitbet;
  @JsonKey(name: 'ResTvT_uitbet')
  bool? resTvtUitbet;
  @JsonKey(name: 'ResVG_uitbet')
  bool? resVgUitbet;
  @JsonKey(name: 'ResVDt_uitbet')
  bool? resVDtUitbet;
  @JsonKey(name: 'ResVDw_uitbet')
  bool? resVDwUitbet;
  @JsonKey(name: 'ResVDb_uitbet')
  bool? resVDbUitbet;
  @JsonKey(name: 'WithdrawWk_FD')
  bool? withdrawWkFD;
  @JsonKey(name: 'WithdrawWk_KV')
  bool? withdrawWkKV;
  @JsonKey(name: 'WithdrawWk_ADV')
  bool? withdrawWkADV;
  @JsonKey(name: 'WithdrawWk_TVT')
  bool? withdrawWkTVT;
  @JsonKey(name: 'WithdrawWk_VG')
  bool? withdrawWkVG;
  @JsonKey(name: 'WithdrawWk_VDt')
  bool? withdrawWkVDt;
  @JsonKey(name: 'WithdrawWk_VDw')
  bool? withdrawWkVDw;
  @JsonKey(name: 'WithdrawWk_VDb')
  bool? withdrawWkVDb;

  Timesheet(
    this.id,
    this.name,
    this.startDate,
    this.endDate,
    this.status,
    this.sfOrgId,
    this.timesheetFilledIn,
    this.submitedById,
    this.sfRecordId,
    this.comment,
    this.employeeFase,
    this.nextApprover,
    this.totalPeriodHours,
    this.workedHours,
    this.timeBasedHours,
    this.createdAt,
    this.employeeId,
    this.payslipId,
    this.dagToggleRes,
    this.placementId,
    this.resFdUitbet,
    this.resKvUitbet,
    this.resAdvUitbet,
    this.resTvtUitbet,
    this.resVgUitbet,
    this.resVDtUitbet,
    this.resVDwUitbet,
    this.resVDbUitbet,
    this.withdrawWkFD,
    this.withdrawWkKV,
    this.withdrawWkADV,
    this.withdrawWkTVT,
    this.withdrawWkVG,
    this.withdrawWkVDt,
    this.withdrawWkVDw,
    this.withdrawWkVDb,
  );

  factory Timesheet.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimesheetFromJson(json);

  Map<String, dynamic> toJson() => _$TimesheetToJson(this);

  static const fromJsonFactory = _$TimesheetFromJson;
}
