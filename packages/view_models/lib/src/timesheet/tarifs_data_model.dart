import 'package:freezed_annotation/freezed_annotation.dart';

part 'tarifs_data_model.freezed.dart';
part 'tarifs_data_model.g.dart';

@freezed
class TarifsDataModel with _$TarifsDataModel {
  const factory TarifsDataModel({
    required String id,
    required String name,
    required String nameTariffLineForce,
    required String hourCategoryDescription,
    required String validFrom,
    required String validUntil,
    required double compensatPrc,
    required String tariffNumber,
    required bool isGetLEorg,
    required String sfOrgId,
    required String sfLEId,
    required bool isDeleted,
    required String sfRecordId,
    required String createdAt,
    required String tariffPackId,
    required String maxUsagePerDay,
    required String maxUsagePerWeek,
    required String visibilityOnAppFor,
    required bool visibilityOnApp,
    required bool isActive,
  }) = _TarifsDataModel;

  factory TarifsDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TarifsDataModelFromJson(json);
}
