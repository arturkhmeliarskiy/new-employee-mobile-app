import 'package:freezed_annotation/freezed_annotation.dart';

part 'onkosten_regels_data_model.freezed.dart';
part 'onkosten_regels_data_model.g.dart';

@freezed
class OnkostenRegelsDataModel with _$OnkostenRegelsDataModel {
  const factory OnkostenRegelsDataModel({
    required String id,
    required String name,
    required String date,
    required int numberOfUnits,
    required String price,
    required String pricePerPaymentFrequency,
    required String explanation,
    required String sfOrgId,
    required String sfLEId,
    required String amountCostPerUnit,
    required String sfRecordId,
    required String bTW,
    required bool isDividedPerDays,
    required String maximaalBedrag,
    required String sfWithdrawalRemainder,
    required String createdAt,
    required String cpcExpenseTypeConfigId,
    required String invoiceId,
    required String projectId,
    required String timesheetId,
    required String timesheetExpenseTypeId,
  }) = _OnkostenRegelsDataModel;

  factory OnkostenRegelsDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OnkostenRegelsDataModelFromJson(json);
}
