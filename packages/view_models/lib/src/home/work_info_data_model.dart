import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/home/content_data_model.dart';

part 'work_info_data_model.freezed.dart';
part 'work_info_data_model.g.dart';

@freezed
class WorkInfoDataModel with _$WorkInfoDataModel {
  const factory WorkInfoDataModel({
    required List<ContentDataModel> content,
    int? code,
  }) = _WorkInfoDataModel;

  factory WorkInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$WorkInfoDataModelFromJson(json);
}
