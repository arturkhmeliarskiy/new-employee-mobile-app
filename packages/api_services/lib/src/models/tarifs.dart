import 'package:json_annotation/json_annotation.dart';

part 'tarifs.g.dart';

@JsonSerializable()
class Tarifs {
  String? id;
  String? name;
  String? nameTariffCustomer;
  String? nameTariffLineForce;
  String? hourCategoryDescription;
  String? validUntil;
  String? validFrom;
  double? invoicePercentage;
  String? invoiceFactor;
  String? invoiceBedrag;
  String? invoiceFactorPremie;
  String? raise;
  double? compensatPrc;
  String? tariffNumber;
  bool? isGetLEorg;
  String? sfOrgId;
  String? sfLEId;
  bool? isDeleted;
  String? sfRecordId;
  bool? visibilityOnApp;
  String? visibilityOnAppFor;
  String? maxUsagePerDay;
  String? maxUsagePerWeek;
  bool? isActive;
  String? createdAt;
  String? tariffPackId;

  Tarifs(
    this.id,
    this.name,
    this.nameTariffCustomer,
    this.nameTariffLineForce,
    this.hourCategoryDescription,
    this.validUntil,
    this.validFrom,
    this.invoicePercentage,
    this.invoiceFactor,
    this.invoiceBedrag,
    this.invoiceFactorPremie,
    this.raise,
    this.compensatPrc,
    this.tariffNumber,
    this.isGetLEorg,
    this.sfOrgId,
    this.sfLEId,
    this.isDeleted,
    this.sfRecordId,
    this.visibilityOnApp,
    this.visibilityOnAppFor,
    this.maxUsagePerDay,
    this.maxUsagePerWeek,
    this.isActive,
    this.createdAt,
    this.tariffPackId,
  );

  factory Tarifs.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TarifsFromJson(json);

  Map<String, dynamic> toJson() => _$TarifsToJson(this);

  static const fromJsonFactory = _$TarifsFromJson;
}
