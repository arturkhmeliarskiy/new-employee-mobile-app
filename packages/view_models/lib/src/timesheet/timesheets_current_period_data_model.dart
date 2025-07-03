import 'package:freezed_annotation/freezed_annotation.dart';

part 'timesheets_current_period_data_model.freezed.dart';
part 'timesheets_current_period_data_model.g.dart';

@freezed
class TimesheetsCurrentPeriodDataModel with _$TimesheetsCurrentPeriodDataModel {
  const factory TimesheetsCurrentPeriodDataModel({
    required String id,
    required String name,
    required String startDate,
    required String endDate,
    required String status,
  }) = _TimesheetsCurrentPeriodDataModel;

  factory TimesheetsCurrentPeriodDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimesheetsCurrentPeriodDataModelFromJson(json);
}
