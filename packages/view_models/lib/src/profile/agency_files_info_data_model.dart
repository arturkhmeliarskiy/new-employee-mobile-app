import 'package:freezed_annotation/freezed_annotation.dart';

part 'agency_files_info_data_model.freezed.dart';
part 'agency_files_info_data_model.g.dart';

@freezed
class AgencyFilesInfoDataModel with _$AgencyFilesInfoDataModel {
  const factory AgencyFilesInfoDataModel({
    required String id,
    required String sfFileId,
    required String sfRecordId,
    required String name,
    required String type,
    required bool isAttached,
    required String expirationDate,
    required int size,
    required String createdAt,
    required String employeeId,
    required String agencyName,
  }) = _AgencyFilesInfoDataModel;

  factory AgencyFilesInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$AgencyFilesInfoDataModelFromJson(json);
}
