import 'package:freezed_annotation/freezed_annotation.dart';

part 'timesheet_info_data_model.freezed.dart';
part 'timesheet_info_data_model.g.dart';

@freezed
class TimesheetInfoDataModel with _$TimesheetInfoDataModel {
  const factory TimesheetInfoDataModel({
    required String id,
    required String name,
    required String startDate,
    required String endDate,
    required String status,
    required String sfOrgId,
    required String submitedById,
    required String sfRecordId,
    required String timeBasedHours,
    required String employeeId,
    required String payslipId,
    required String placementId,
    required String comment,
    required String employeeFase,
    required bool resFdUitbet,
    required bool resKvUitbet,
    required bool resAdvUitbet,
    required bool resTvtUitbet,
    required bool resVgUitbet,
    required bool resVDtUitbet,
    required bool resVDwUitbet,
    required bool resVDbUitbet,
    required bool withdrawWkFD,
    required bool withdrawWkKV,
    required bool withdrawWkADV,
    required bool withdrawWkTVT,
    required bool withdrawWkVG,
    required bool withdrawWkVDt,
    required bool withdrawWkVDw,
    required bool withdrawWkVDb,
  }) = _TimesheetInfoDataModel;

  factory TimesheetInfoDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimesheetInfoDataModelFromJson(json);
}
