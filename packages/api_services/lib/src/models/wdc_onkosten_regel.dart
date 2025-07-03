import 'package:json_annotation/json_annotation.dart';

part 'wdc_onkosten_regel.g.dart';

@JsonSerializable()
class WdcOnkostenregel {
  WdcOnkostenregel(
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
  );
  String? id;
  String? name;
  String? date;
  String? numberOfUnits;
  String? price;
  String? pricePerPaymentFrequency;
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

  factory WdcOnkostenregel.fromJson(Map<String, dynamic> json) =>
      _$WdcOnkostenregelFromJson(json);
}
