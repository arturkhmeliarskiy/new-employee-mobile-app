import 'package:freezed_annotation/freezed_annotation.dart';

part 'files_info_data_model.freezed.dart';
part 'files_info_data_model.g.dart';

@freezed
class FilesInfoDataModel with _$FilesInfoDataModel {
  const factory FilesInfoDataModel({
    required String id,
    required String name,
    required String type,
    required String path,
    required bool isShared,
    required String expirationDate,
    required String typeDocument,
    required String createdAt,
    required String size,
    required String employeeId,
    required String parentCloudFileId,
    required List<String> sharedAgencys,
  }) = _FilesInfoDataModel;

  factory FilesInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$FilesInfoDataModelFromJson(json);
}
