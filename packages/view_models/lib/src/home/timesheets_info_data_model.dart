import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/home/timesheets_data_model.dart';

part 'timesheets_info_data_model.freezed.dart';
part 'timesheets_info_data_model.g.dart';

@freezed
class TimesheetsInfoDataModel with _$TimesheetsInfoDataModel {
  const factory TimesheetsInfoDataModel({
    required int code,
    required int totalCount,
    required List<TimesheetsDataModel> timesheets,
  }) = _TimesheetsInfoDataModel;

  factory TimesheetsInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$TimesheetsInfoDataModelFromJson(json);
}
