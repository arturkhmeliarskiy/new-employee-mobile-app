import 'package:json_annotation/json_annotation.dart';

part 'expense_type.g.dart';

@JsonSerializable()
class ExpenseType {
  String? id;
  String? name;
  String? expensesPrice;
  int? invoicePercentage;
  int? wagePercentage;
  String? recordTypeSFName;
  String? tax;
  String? payoutPer;
  String? units;
  String? type;
  String? sfOrgId;
  bool? isGetLEorg;
  String? sfLEId;
  String? sfRecordId;
  bool? isDeleted;
  String? vergoedingInhouding;
  String? createdAt;

  ExpenseType(
    this.id,
    this.name,
    this.expensesPrice,
    this.invoicePercentage,
    this.wagePercentage,
    this.recordTypeSFName,
    this.tax,
    this.payoutPer,
    this.units,
    this.type,
    this.sfOrgId,
    this.isGetLEorg,
    this.sfLEId,
    this.sfRecordId,
    this.isDeleted,
    this.vergoedingInhouding,
    this.createdAt,
  );

  factory ExpenseType.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ExpenseTypeFromJson(json);

  Map<String, dynamic> toJson() => _$ExpenseTypeToJson(this);

  static const fromJsonFactory = _$ExpenseTypeFromJson;
}
