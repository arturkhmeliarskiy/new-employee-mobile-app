import 'package:freezed_annotation/freezed_annotation.dart';

part 'timesheet_exist_data_model.freezed.dart';
part 'timesheet_exist_data_model.g.dart';

@freezed
class TimesheetExistDataModel with _$TimesheetExistDataModel {
  const factory TimesheetExistDataModel({
    String? isTimesheetExist,
  }) = _TimesheetExistDataModel;

  factory TimesheetExistDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimesheetExistDataModelFromJson(json);
}
