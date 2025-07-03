import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/profile/index.dart';

part 'files_data_model.freezed.dart';
part 'files_data_model.g.dart';

@freezed
class FilesDataModel with _$FilesDataModel {
  const factory FilesDataModel({
    required int code,
    required List<FilesInfoDataModel> files,
  }) = _FilesDataModel;

  factory FilesDataModel.fromJson(Map<String, dynamic> json) =>
      _$FilesDataModelFromJson(json);
}
