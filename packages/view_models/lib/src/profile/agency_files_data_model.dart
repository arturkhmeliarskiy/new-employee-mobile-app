import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/profile/agency_files_info_data_model.dart';

part 'agency_files_data_model.freezed.dart';
part 'agency_files_data_model.g.dart';

@freezed
class AgencyFilesDataModel with _$AgencyFilesDataModel {
  const factory AgencyFilesDataModel({
    required List<AgencyFilesInfoDataModel> files,
    int? code,
  }) = _AgencyFilesDataModel;

  factory AgencyFilesDataModel.fromJson(Map<String, dynamic> json) =>
      _$AgencyFilesDataModelFromJson(json);
}
