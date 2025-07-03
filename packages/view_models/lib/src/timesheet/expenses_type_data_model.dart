import 'package:freezed_annotation/freezed_annotation.dart';

part 'expenses_type_data_model.freezed.dart';
part 'expenses_type_data_model.g.dart';

@freezed
class ExpenseTypeDataModel with _$ExpenseTypeDataModel {
  const factory ExpenseTypeDataModel({
    String? id,
    String? name,
    String? expensesPrice,
    int? invoicePercentage,
    int? wagePercentage,
    String? recordTypeSFName,
    String? tax,
    String? payoutPer,
    String? units,
    String? type,
    String? sfOrgId,
    bool? isGetLEorg,
    String? sfLEId,
    String? sfRecordId,
    bool? isDeleted,
    String? vergoedingInhouding,
    String? createdAt,
  }) = _ExpenseTypeDataModel;

  factory ExpenseTypeDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ExpenseTypeDataModelFromJson(json);
}
