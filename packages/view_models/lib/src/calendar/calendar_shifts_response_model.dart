import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/view_models.dart';

part 'calendar_shifts_response_model.freezed.dart';

@freezed
class CalendarShiftsResponseModel with _$CalendarShiftsResponseModel {
  const factory CalendarShiftsResponseModel({
    required int code,
    required String message,
    required List<CalendarShiftsModel> shifts,
  }) = _CalendarShiftsResponseModel;
}
