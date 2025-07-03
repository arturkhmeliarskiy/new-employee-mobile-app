import 'package:json_annotation/json_annotation.dart';

part 'cpc_expense_type_conf.g.dart';

@JsonSerializable()
class CpcExpenseTypeConf {
  String? id;
  String? sfRecordId;
  String? sfLEId;
  String? sfOrgId;
  bool? aCPAddPerHour;
  bool? aCPSpecificComponent1;
  bool? aCPSpecificComponent2;
  bool? active;
  String? additionalRows;
  String? allocation;
  @JsonKey(name: 'allowed_Days_of_Week')
  String? allowedDaysOfWeek;
  @JsonKey(name: 'allowed_Number_of_Days')
  int? allowedNumberOfDays;
  bool? cAOAanvullingZiektewet;
  bool? cAOScholing;
  bool? cAOSocialFounds;
  bool? cCPAddPerHour;
  bool? cCPAdditionOfAgencyFactor;
  String? name;
  String? involvedHourTypes;
  String? maximumAmount;
  String? normalSpecialTaxrate;
  bool? oLWGVArbeidsongeschiktheid;
  bool? oLWGVKantoorkosten;
  bool? oLWGVLeeglooprisico;
  bool? pensioenCordaresBouw;
  bool? pensioenCordaresFranchises;
  bool? pensioenCordaresUTA;
  bool? pensioenStiPPBasis;
  bool? pensioenStiPPMaxhourlyrate;
  bool? pensioenStiPPPlusfranchise;
  bool? pensioenStiPPPlusregeling;
  bool? rCPAddPerHour;
  bool? rCPAdditionGrossMargin;
  @JsonKey(name: 'reimbursement_Withdrawal')
  String? reimbursementWithdrawal;
  bool? reserveringADV;
  bool? reserveringFD;
  bool? reserveringKV;
  bool? reserveringPension;
  bool? reserveringTVT;
  bool? reserveringVDB;
  bool? reserveringVDW;
  bool? reserveringVG;
  bool? reserveringWDC;
  bool? sLSectorpremie;
  bool? sLWaoWiaInclKinderopvang;
  bool? sLWhkWgaFlex;
  bool? sLWhkWgaVast;
  bool? sLWhkZwFlex;
  bool? sLWW;
  bool? sLZvw;
  String? taxedUntaxed;
  bool? isUpsertApp;
  bool? isGetLEorg;
  String? amountCostPerUnit;
  String? description;
  String? maximumAmountCostPerUnit;
  double? maximumAmountUnitsPerDay;
  int? amountUnitsPerAllocation;
  @JsonKey(name: 'maximum_amount_cost_per_tp')
  String? maximumAmountCostPerTp;
  String? maximumAmountCostPerAllocation;
  String? invoicePercentage;
  String? maximumAmountUnitsPerAllocation;
  String? overPercentage;
  @JsonKey(name: 'maximum_amount_units_per_tp')
  double? maximumAmountUnitsPerTp;
  int? payrolPercentage;
  String? expenseCreationType;
  bool? visibleOnTimesheet;
  String? validFrom;
  String? validTo;
  String? abbreviatedName;
  String? appliedBehavior;
  String? visibilityForCompany;
  String? visibilityForEmployee;
  String? nameForCompany;
  String? nameForEmployee;
  @JsonKey(name: 'minimum_amount_cost_per_tp')
  String? minimumAmountCostPerTp;
  @JsonKey(name: 'minimum_amount_units_per_tp')
  String? minimumAmountUnitsPerTp;
  @JsonKey(name: 'minimum_amount_cost_per_unit')
  String? minimumAmountCostPerUnit;
  @JsonKey(name: 'minimum_amount_units_per_day')
  String? minimumAmountUnitsPerDay;
  @JsonKey(name: 'apply_below_Hourrate')
  String? applyBelowHourrate;
  @JsonKey(name: 'apply_above_Hourrate')
  String? applyAboveHourrate;
  String? useInDistanceCalculation;
  String? createdAt;
  String? claId;
  String? companyId;
  String? costPrizeCalculationId;
  String? timesheetExpenseTypeId;
  String? placementId;
  String? employeeId;

  CpcExpenseTypeConf(
    this.id,
    this.sfRecordId,
    this.sfLEId,
    this.sfOrgId,
    this.aCPAddPerHour,
    this.aCPSpecificComponent1,
    this.aCPSpecificComponent2,
    this.active,
    this.additionalRows,
    this.allocation,
    this.allowedDaysOfWeek,
    this.allowedNumberOfDays,
    this.cAOAanvullingZiektewet,
    this.cAOScholing,
    this.cAOSocialFounds,
    this.cCPAddPerHour,
    this.cCPAdditionOfAgencyFactor,
    this.name,
    this.involvedHourTypes,
    this.maximumAmount,
    this.normalSpecialTaxrate,
    this.oLWGVArbeidsongeschiktheid,
    this.oLWGVKantoorkosten,
    this.oLWGVLeeglooprisico,
    this.pensioenCordaresBouw,
    this.pensioenCordaresFranchises,
    this.pensioenCordaresUTA,
    this.pensioenStiPPBasis,
    this.pensioenStiPPMaxhourlyrate,
    this.pensioenStiPPPlusfranchise,
    this.pensioenStiPPPlusregeling,
    this.rCPAddPerHour,
    this.rCPAdditionGrossMargin,
    this.reimbursementWithdrawal,
    this.reserveringADV,
    this.reserveringFD,
    this.reserveringKV,
    this.reserveringPension,
    this.reserveringTVT,
    this.reserveringVDB,
    this.reserveringVDW,
    this.reserveringVG,
    this.reserveringWDC,
    this.sLSectorpremie,
    this.sLWaoWiaInclKinderopvang,
    this.sLWhkWgaFlex,
    this.sLWhkWgaVast,
    this.sLWhkZwFlex,
    this.sLWW,
    this.sLZvw,
    this.taxedUntaxed,
    this.isUpsertApp,
    this.isGetLEorg,
    this.amountCostPerUnit,
    this.description,
    this.maximumAmountCostPerUnit,
    this.maximumAmountUnitsPerDay,
    this.amountUnitsPerAllocation,
    this.maximumAmountCostPerTp,
    this.maximumAmountCostPerAllocation,
    this.invoicePercentage,
    this.maximumAmountUnitsPerAllocation,
    this.overPercentage,
    this.maximumAmountUnitsPerTp,
    this.payrolPercentage,
    this.expenseCreationType,
    this.visibleOnTimesheet,
    this.validFrom,
    this.validTo,
    this.abbreviatedName,
    this.appliedBehavior,
    this.visibilityForCompany,
    this.visibilityForEmployee,
    this.nameForCompany,
    this.nameForEmployee,
    this.minimumAmountCostPerTp,
    this.minimumAmountUnitsPerTp,
    this.minimumAmountCostPerUnit,
    this.minimumAmountUnitsPerDay,
    this.applyBelowHourrate,
    this.applyAboveHourrate,
    this.useInDistanceCalculation,
    this.createdAt,
    this.claId,
    this.companyId,
    this.costPrizeCalculationId,
    this.timesheetExpenseTypeId,
    this.placementId,
    this.employeeId,
  );

  factory CpcExpenseTypeConf.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CpcExpenseTypeConfFromJson(json);

  Map<String, dynamic> toJson() => _$CpcExpenseTypeConfToJson(this);

  static const fromJsonFactory = _$CpcExpenseTypeConfFromJson;
}
