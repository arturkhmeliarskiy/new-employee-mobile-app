// part of 'timesheet_bloc.dart';

// @freezed
// class TimesheetEvent with _$TimesheetEvent {
//   const factory TimesheetEvent.init() = InitTimesheetEvent;
//   const factory TimesheetEvent.uploadTimesheet(
//     String timesheetid,
//     String placementId,
//   ) = UploadTimesheetEvent;
//   const factory TimesheetEvent.getTimesheet(
//     JobCompaniesDataModel company,
//   ) = GetTimesheetEvent;
//   const factory TimesheetEvent.updateHoursCard(
//     int indexCard,
//     int indexWeek,
//     DateTime date,
//     String time,
//     String projectId,
//     String hourId,
//   ) = TimesheetUpdateHoursCardEvent;
//   const factory TimesheetEvent.updateExpensesCard(
//     int indexCard,
//     int indexWeek,
//     String date,
//     String price,
//     String expense,
//     String projectId,
//     String explanation,
//     String cpcExpenseTypeConfigId,
//     String dataType,
//   ) = TimesheetUpdateExpensesCardEvent;
//   const factory TimesheetEvent.updateReservationCard(
//     int indexCard,
//     int indexWeek,
//     String reservationKey,
//     String value,
//   ) = TimesheetUpdateReservationCardEvent;
//   const factory TimesheetEvent.updateStartStopCard(
//     String projectId,
//     String unravelingId,
//     int indexCard,
//     int indexWeek,
//     int indexRests,
//     DateTime startTime,
//     DateTime endTime,
//     DateTime startTimeBreak,
//     DateTime endTimeBreak,
//     String status,
//   ) = TimesheetUpdateStartStopCardEvent;
//   const factory TimesheetEvent.deleteHoursCard(
//     int indexCard,
//   ) = TimesheetDeleteHoursCardEvent;
//   const factory TimesheetEvent.deleteExpensesCard(
//     int indexCard,
//   ) = TimesheetDeleteExpensesCardEvent;
//   const factory TimesheetEvent.deleteReservationCard(
//     int indexCard,
//   ) = TimesheetDeleteReservationCardEvent;
//   const factory TimesheetEvent.deleteStartStopCard(
//     int indexCard,
//   ) = TimesheetDeleteStartStopCardEvent;
//   const factory TimesheetEvent.deleteRittenCard(
//     int indexCard,
//   ) = TimesheetDeleteRittenCardEvent;
//   const factory TimesheetEvent.addCard(
//     String cardType,
//     String projectId,
//   ) = TimesheetAddCardEvent;
//   const factory TimesheetEvent.selectWeek(
//     DateTime selectWeek,
//   ) = TimesheetSelectWeekEvent;
//   const factory TimesheetEvent.getTimesheetsForCurrentPeriod(
//     int year,
//     int month,
//     String placementId,
//   ) = GetTimesheetsForCurrentPeriodEvent;
//   const factory TimesheetEvent.saveTimesheet(
//     bool toApprove,
//   ) = SaveTimesheetEvent;
// }
