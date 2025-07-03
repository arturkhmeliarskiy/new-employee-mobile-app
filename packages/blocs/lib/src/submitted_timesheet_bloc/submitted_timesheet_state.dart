part of 'submitted_timesheet_bloc.dart';

@freezed
class SubmittedTimesheetState with _$SubmittedTimesheetState {
  const factory SubmittedTimesheetState.loading() =
      LoadingSubmittedTimesheetState;
  const factory SubmittedTimesheetState.init({
    required List<TimesheetsDataModel> listTimesheet,
  }) = InitSubmittedTimesheetState;
  const factory SubmittedTimesheetState.approvalRequestsSuccess({
    required MessagesInfoDataModel model,
  }) = SubmittedTimesheetApprovalRequestsSuccessState;
  const factory SubmittedTimesheetState.approvalRequestsFailure({
    required MessagesInfoDataModel model,
  }) = SubmittedTimesheetApprovalRequestsFailureState;
  const factory SubmittedTimesheetState.resetList() =
      ResetListSubmittedTimesheetState;
}
