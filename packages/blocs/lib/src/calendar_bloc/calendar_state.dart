part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.init() = InitState;
  const factory CalendarState.loading() = LoadingState;
  const factory CalendarState.shiftStatusChanged() = ShiftStatusChangedState;
  const factory CalendarState.request({
    required DateTime date,
    required List<CalendarShiftsModel> planned,
    required List<CalendarShiftsModel> available,
    required List<int> shiftDays,
  }) = RequestState;
  const factory CalendarState.error({
    required String message,
  }) = ErrorState;
}
