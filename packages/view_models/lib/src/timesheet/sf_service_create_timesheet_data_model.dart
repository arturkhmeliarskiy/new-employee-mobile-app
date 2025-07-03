import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/view_models.dart';

part 'sf_service_create_timesheet_data_model.freezed.dart';
part 'sf_service_create_timesheet_data_model.g.dart';

@freezed
class SfServiceCreateTimesheetDataModel
    with _$SfServiceCreateTimesheetDataModel {
  const factory SfServiceCreateTimesheetDataModel({
    required int code,
    required TimesheetExistDataModel result,
    required String message,
  }) = _SfServiceCreateTimesheetDataModel;

  factory SfServiceCreateTimesheetDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SfServiceCreateTimesheetDataModelFromJson(json);
}
