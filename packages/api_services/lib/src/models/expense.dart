import 'package:json_annotation/json_annotation.dart';

part 'expense.g.dart';

@JsonSerializable()
class Expense {
  String? id;
  String? name;
  String? date;
  double? numberOfUnits;
  String? price;
  double? pricePerPaymentFrequency;
  String? explanation;
  String? recordTypeSFName;
  String? sfOrgId;
  bool? isUpsertApp;
  bool? isGetLEorg;
  bool? isDeleted;
  String? sfLEId;
  String? amountCostPerUnit;
  String? sfRecordId;
  String? bTW;
  bool? isDividedPerDays;
  String? maximaalBedrag;
  String? uitbetalingsfrequentie;
  String? uitbetalingsfrequentieFilter;
  String? sfWithdrawalRemainder;
  String? departureAddress;
  String? destinationAddress;
  bool? returnRoute;
  String? createdAt;
  String? cpcExpenseTypeConfigId;
  String? invoiceId;
  String? projectId;
  String? timesheetId;
  String? timesheetExpenseTypeId;
  String? projectIdAlId;
  String? projectIdAlName;
  String? timesheetExpenseTypeIdAlId;
  String? timesheetExpenseTypeIdAlName;
  String? cpcExpenseTypeConfigIdAlId;
  String? cpcExpenseTypeConfigIdAlName;

  Expense(
    this.id,
    this.name,
    this.date,
    this.numberOfUnits,
    this.price,
    this.pricePerPaymentFrequency,
    this.explanation,
    this.recordTypeSFName,
    this.sfOrgId,
    this.isUpsertApp,
    this.isGetLEorg,
    this.isDeleted,
    this.sfLEId,
    this.amountCostPerUnit,
    this.sfRecordId,
    this.bTW,
    this.isDividedPerDays,
    this.maximaalBedrag,
    this.uitbetalingsfrequentie,
    this.uitbetalingsfrequentieFilter,
    this.sfWithdrawalRemainder,
    this.departureAddress,
    this.destinationAddress,
    this.returnRoute,
    this.createdAt,
    this.cpcExpenseTypeConfigId,
    this.invoiceId,
    this.projectId,
    this.timesheetId,
    this.timesheetExpenseTypeId,
    this.projectIdAlId,
    this.projectIdAlName,
    this.timesheetExpenseTypeIdAlId,
    this.timesheetExpenseTypeIdAlName,
    this.cpcExpenseTypeConfigIdAlId,
    this.cpcExpenseTypeConfigIdAlName,
  );

  factory Expense.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ExpenseFromJson(json);

  Map<String, dynamic> toJson() => _$ExpenseToJson(this);

  static const fromJsonFactory = _$ExpenseFromJson;
}
