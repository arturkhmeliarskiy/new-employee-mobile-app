part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.showMonth(
    DateTime date,
  ) = ShowMonthEvent;
  const factory CalendarEvent.selectDate(
    DateTime date,
  ) = SelectDateEvent;
  const factory CalendarEvent.pressedAccept(
    DateTime date,
    String id,
  ) = PressedAcceptEvent;
  const factory CalendarEvent.pressedReject(
    DateTime date,
    String id,
  ) = PressedRejectEvent;
}
