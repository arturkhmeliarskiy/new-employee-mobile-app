import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpc_expense_type_conf_data_model.freezed.dart';
part 'cpc_expense_type_conf_data_model.g.dart';

@freezed
class CpcExpenseTypeConfDataModel with _$CpcExpenseTypeConfDataModel {
  const factory CpcExpenseTypeConfDataModel({
    required String id,
    required String sfRecordId,
    required String sfLEId,
    required String sfOrgId,
    required bool active,
    required String additionalRows,
    required String allocation,
    required String allowedDaysOfWeek,
    required int allowedNumberOfDays,
    required String name,
    required String amountCostPerUnit,
    required String description,
    required String timesheetExpenseTypeId,
    required String placementId,
    required String employeeId,
    required String reimbursementWithdrawal,
    required bool positive,
    required String validFrom,
    required String validTo,
    required String nameForEmployee,
    required String visibilityForEmployee,
    required double maximumAmountCostPerTp,
    required double minimumAmountCostPerTp,
    required double maximumAmountCostPerUnit,
    required double minimumAmountCostPerUnit,
    required double maximumAmountUnitsPerTp,
    required double minimumAmountUnitsPerTp,
    required double maximumAmountUnitsPerDay,
    required double minimumAmountUnitsPerDay,
    required String invoicePercentage,
    String? applyBelowHourrate,
    String? applyAboveHourrate,
  }) = _CpcExpenseTypeConfDataModel;

  factory CpcExpenseTypeConfDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CpcExpenseTypeConfDataModelFromJson(json);
}
