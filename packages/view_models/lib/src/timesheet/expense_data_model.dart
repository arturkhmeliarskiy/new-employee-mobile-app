import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_data_model.freezed.dart';
part 'expense_data_model.g.dart';

@freezed
class ExpenseDataModel with _$ExpenseDataModel {
  const factory ExpenseDataModel({
    required String id,
    required String name,
    required String date,
    required String price,
    required String cardType,
    required double numberOfUnits,
    required double pricePerPaymentFrequency,
    required String explanation,
    required String amountCostPerUnit,
    required String createdAt,
    required String cpcExpenseTypeConfigId,
    required String projectId,
    required String timesheetId,
    required String sfWithdrawalRemainder,
  }) = _ExpenseDataModel;

  factory ExpenseDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ExpenseDataModelFromJson(json);
}
