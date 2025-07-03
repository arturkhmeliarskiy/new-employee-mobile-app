import 'package:json_annotation/json_annotation.dart';

part 'hours.g.dart';

@JsonSerializable()
class Hours {
  String? id;
  String? name;
  String? date;
  double? amountOfHours;
  String? description;
  String? sfOrgId;
  bool? isUpsertApp;
  bool? isGetLEorg;
  bool? isDeleted;
  String? sfLEId;
  String? sfRecordId;
  String? uurloonBijUitzending;
  double? loonPerc;
  bool? unraveling;
  String? createdAt;
  String? projectId;
  String? tarifId;
  String? timesheetId;
  String? projectIdAlId;
  String? projectIdAlName;
  String? timesheetIdAlId;
  String? timesheetIdAlStartDate;
  String? timesheetIdAlEndDate;
  @JsonKey(name: 'tarifId__al.id')
  String? tarifIdAlId;
  @JsonKey(name: 'tarifId__al.name')
  String? tarifIdAlName;
  int? tarifIdAlCompensatPrc;
  int? tarifIdAlInvoicePercentage;
  String? tarifIdAlValidFrom;
  String? tarifIdAlValidUntil;
  String? tarifIdAlInvoiceFactor;
  String? tarifIdAlInvoiceBedrag;
  String? tarifIdAlInvoiceFactorPremie;
  String? tarifIdAlRaise;
  String? tarifIdAlMaxUsagePerDay;
  String? tarifIdAlMaxUsagePerWeek;

  Hours({
    this.id,
    this.name,
    this.date,
    this.amountOfHours,
    this.description,
    this.sfOrgId,
    this.isUpsertApp,
    this.isGetLEorg,
    this.isDeleted,
    this.sfLEId,
    this.sfRecordId,
    this.uurloonBijUitzending,
    this.loonPerc,
    this.unraveling,
    this.createdAt,
    this.projectId,
    this.tarifId,
    this.timesheetId,
    this.projectIdAlId,
    this.projectIdAlName,
    this.timesheetIdAlId,
    this.timesheetIdAlStartDate,
    this.timesheetIdAlEndDate,
    this.tarifIdAlId,
    this.tarifIdAlName,
    this.tarifIdAlCompensatPrc,
    this.tarifIdAlInvoicePercentage,
    this.tarifIdAlValidFrom,
    this.tarifIdAlValidUntil,
    this.tarifIdAlInvoiceFactor,
    this.tarifIdAlInvoiceBedrag,
    this.tarifIdAlInvoiceFactorPremie,
    this.tarifIdAlRaise,
    this.tarifIdAlMaxUsagePerDay,
    this.tarifIdAlMaxUsagePerWeek,
  });

  factory Hours.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$HoursFromJson(json);

  Map<String, dynamic> toJson() => _$HoursToJson(this);

  static const fromJsonFactory = _$HoursFromJson;
}
