import 'package:api_services/api_services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'timesheets_response_model.g.dart';

@JsonSerializable()
class TimesheetsResponseModel {
  int? code;
  String? message;
  List<ExpenseType>? expensesType;
  List<Tarifs>? tarrifs;
  List<Pop>? pop;
  List<AprovalInfo>? approvalInfo;
  List<CpcExpenseTypeConf>? cpcExpenseTypeConf;
  List<Projects>? projects;
  List<Contracts>? contracts;
  Map<String, dynamic>? wmls;
  ContactSetting? contactSetting;
  List<Expense>? expenses;
  Timesheet? timesheet;
  List<Hours>? hours;
  Uitzending? uitzending;
  List<Agency>? agency;
  TotalReservation? totalreservation;
  List<Reservation>? reservation;
  List<OnkostenRegels>? onkostenregels;
  List<ReservationHours>? reservationHours;
  List<WdcOnkostenregel>? wdcOnkostenregel;
  List<TariffAssignmentRules>? tariffAssignmentRules;

  TimesheetsResponseModel(
    this.code,
    this.message,
    this.tarrifs,
    this.pop,
    this.approvalInfo,
    this.projects,
    this.contracts,
    this.contactSetting,
    this.timesheet,
    this.hours,
    this.wmls,
    this.uitzending,
    this.agency,
    this.totalreservation,
    this.reservation,
    this.onkostenregels,
    this.reservationHours,
    this.wdcOnkostenregel,
    this.tariffAssignmentRules,
  );

  factory TimesheetsResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimesheetsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$TimesheetsResponseModelToJson(this);

  static const fromJsonFactory = _$TimesheetsResponseModelFromJson;
}
