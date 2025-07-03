import 'package:api_services/src/models/approval_requests.dart';
import 'package:json_annotation/json_annotation.dart';

part 'timesheets.g.dart';

@JsonSerializable()
class Timesheets {
  String? id;
  String? employeeId;
  int? weekNumber;
  String? startDate;
  String? endDate;
  String? status;
  String? hours;
  String? functionName;
  String? companyName;
  String? placementId;
  double? expensesCost;
  List<ApprovalRequests>? approvalRequests;

  Timesheets(
    this.id,
    this.employeeId,
    this.weekNumber,
    this.startDate,
    this.endDate,
    this.status,
    this.hours,
    this.functionName,
    this.companyName,
    this.placementId,
    this.expensesCost,
    this.approvalRequests,
  );

  factory Timesheets.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimesheetsFromJson(json);

  Map<String, dynamic> toJson() => _$TimesheetsToJson(this);

  static const fromJsonFactory = _$TimesheetsFromJson;
}
