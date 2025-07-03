import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/profile/header_data_model.dart';

part 'style_json_data_model.freezed.dart';
part 'style_json_data_model.g.dart';

@freezed
class StyleJsonDataModel with _$StyleJsonDataModel {
  const factory StyleJsonDataModel({
    HeaderDataModel? header,
  }) = _StyleJsonDataModel;

  factory StyleJsonDataModel.fromJson(Map<String, dynamic> json) =>
      _$StyleJsonDataModelFromJson(json);
}
