import 'package:freezed_annotation/freezed_annotation.dart';

part 'wdc_onkosten_regel_data_model.freezed.dart';
part 'wdc_onkosten_regel_data_model.g.dart';

@freezed
class WdcOnkostenregelDataModel with _$WdcOnkostenregelDataModel {
  const factory WdcOnkostenregelDataModel({
    required String id,
    required String name,
    required String date,
    required String numberOfUnits,
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
    required String departureAddress,
    required String destinationAddress,
    required bool returnRoute,
    required String cpcExpenseTypeConfigId,
  }) = _WdcOnkostenregelDataModel;

  factory WdcOnkostenregelDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WdcOnkostenregelDataModelFromJson(json);
}
