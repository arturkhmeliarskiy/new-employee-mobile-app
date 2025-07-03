import 'package:freezed_annotation/freezed_annotation.dart';

part 'contracts_setting_data_model.freezed.dart';
part 'contracts_setting_data_model.g.dart';

@freezed
class ContractsSettingDataModel with _$ContractsSettingDataModel {
  const factory ContractsSettingDataModel({
    required String id,
    required String name,
    required bool stallPayment,
    required bool vakkrachtBouw,
    required bool vakkrachtBouwUTA,
    required String entity,
    required String contactEntity,
    required int wekenteller,
    required String fase,
    required String sfOrgId,
    required String sfLEId,
    required String sfRecordId,
    required bool isNegativeReservationsAllowed,
    required bool ignoreWML,
    required bool spAdv,
    required bool spFd,
    required bool spKv,
    required bool spTvt,
    required bool spVdb,
    required bool spVdw,
    required bool spVg,
  }) = _ContractsSettingDataModel;

  factory ContractsSettingDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ContractsSettingDataModelFromJson(json);
}
