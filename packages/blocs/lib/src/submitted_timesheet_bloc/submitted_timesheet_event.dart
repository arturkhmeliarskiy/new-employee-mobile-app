part of 'submitted_timesheet_bloc.dart';

@freezed
class SubmittedTimesheetEvent with _$SubmittedTimesheetEvent {
  const factory SubmittedTimesheetEvent.init() = InitSubmittedTimesheetEvent;
  const factory SubmittedTimesheetEvent.approvalRequests(
    TimesheetsDataModel timesheetsDataModel,
    String comment,
    String action,
  ) = SubmittedTimesheetApprovalRequestsEvent;
}
