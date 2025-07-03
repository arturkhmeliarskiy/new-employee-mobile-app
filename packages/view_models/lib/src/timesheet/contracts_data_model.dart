import 'package:freezed_annotation/freezed_annotation.dart';

part 'contracts_data_model.freezed.dart';
part 'contracts_data_model.g.dart';

@freezed
class ContractsDataModel with _$ContractsDataModel {
  const factory ContractsDataModel({
    required String id,
    required String validation,
    required int totalNumberHoursPerWeek,
    required String startDate,
    required String endDate,
    required bool isDeleted,
    required String sfRecordId,
    required String createdAt,
    required String employeeId,
  }) = _ContractsDataModel;

  factory ContractsDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ContractsDataModelFromJson(json);
}
