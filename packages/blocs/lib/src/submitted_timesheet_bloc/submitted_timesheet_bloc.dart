import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repositories/repositories.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:view_models/view_models.dart';

part 'submitted_timesheet_bloc.freezed.dart';
part 'submitted_timesheet_event.dart';
part 'submitted_timesheet_state.dart';

class SubmittedTimesheetBloc
    extends Bloc<SubmittedTimesheetEvent, SubmittedTimesheetState> {
  final HomeRepository _homeRepository;
  TimesheetsInfoDataModel? listTimesheet;

  SubmittedTimesheetBloc(
    this._homeRepository,
  ) : super(const SubmittedTimesheetState.loading()) {
    on<InitSubmittedTimesheetEvent>(_initListTimesheet);
    on<SubmittedTimesheetApprovalRequestsEvent>(_approvalRequests);
  }

  Future<void> _initListTimesheet(
    InitSubmittedTimesheetEvent event,
    Emitter<SubmittedTimesheetState> emit,
  ) async {
    final result = await _homeRepository.getTimesheets();

    TimesheetDataModel selectNameIcon(TimesheetsDataModel timesheets) {
      late String nameIcon;
      late String colorIcon;
      late bool isButton;
      late bool isEdit;

      final isEmployee = timesheets.approvalRequests.where(
        (element) => element.employeeApproverId == timesheets.employeeId,
      );
      final isStatus = timesheets.approvalRequests.where(
        (element) => element.status == 'Pending approval',
      );
      if (timesheets.status == 'Wacht op goedkeuring' &&
          isEmployee.isNotEmpty &&
          isStatus.isNotEmpty) {
        nameIcon = TigrisImages.alarmClock;
        colorIcon = 'green';
        isButton = true;
        isEdit = false;
      } else if (timesheets.status == 'Wacht op goedkeuring' &&
          isStatus.isEmpty) {
        nameIcon = TigrisImages.clock;
        colorIcon = 'gray';
        isButton = false;
        isEdit = false;
      } else if (timesheets.status == 'Ingevuld' ||
          timesheets.status == 'Nieuw after correction') {
        nameIcon = TigrisImages.edit;
        colorIcon = 'green';
        isButton = false;
        isEdit = true;
      } else if (timesheets.status == 'Afgekeurd') {
        nameIcon = TigrisImages.edit;
        colorIcon = 'red';
        isButton = false;
        isEdit = true;
      } else {
        nameIcon = TigrisImages.checkSquare;
        colorIcon = 'gray';
        isButton = false;
        isEdit = false;
      }
      return TimesheetDataModel(
        colorIcon: colorIcon,
        nameIcon: nameIcon,
        isButton: isButton,
        isEdit: isEdit,
      );
    }

    listTimesheet = TimesheetsInfoDataModel(
      code: result.code,
      timesheets: result.timesheets
          .map(
            (item) => TimesheetsDataModel(
              id: item.id,
              agencyId: item.agencyId,
              employeeId: item.employeeId,
              weekNumber: item.weekNumber,
              startDate: item.startDate,
              endDate: item.endDate,
              status: item.status,
              hours: item.hours,
              orgLogo: item.orgLogo,
              placementId: item.placementId,
              orgName: item.orgName,
              agencyColor: item.agencyColor,
              isEdit: selectNameIcon(item).isEdit,
              isButton: selectNameIcon(item).isButton,
              nameIcon: selectNameIcon(item).nameIcon,
              colorIcon: selectNameIcon(item).colorIcon,
              functionName: item.functionName,
              companyName: item.companyName,
              approvalRequests: item.approvalRequests,
              expensesCost: item.expensesCost,
            ),
          )
          .toList(),
      totalCount: result.totalCount,
    );
    emit(const SubmittedTimesheetState.resetList());
    emit(
      SubmittedTimesheetState.init(
        listTimesheet: listTimesheet?.timesheets ?? [],
      ),
    );
  }

  Future<void> _approvalRequests(
    SubmittedTimesheetApprovalRequestsEvent event,
    Emitter<SubmittedTimesheetState> emit,
  ) async {
    emit(
      const SubmittedTimesheetState.loading(),
    );

    final approvalRequest =
        event.timesheetsDataModel.approvalRequests.firstWhere(
      (item) => item.approverType == 'Employee',
    );

    final result = await _homeRepository.postApprovalRequests(
      approvalRequest.id,
      event.comment,
      event.timesheetsDataModel.id,
      event.action,
    );
    if (result.code == 200) {
      emit(SubmittedTimesheetState.approvalRequestsSuccess(model: result));
    } else {
      emit(SubmittedTimesheetState.approvalRequestsFailure(model: result));
    }
  }
}
