import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/view_models.dart';

part 'timesheets_description_data_model.freezed.dart';

@freezed
class TimesheetsDescriptionDataModel with _$TimesheetsDescriptionDataModel {
  const factory TimesheetsDescriptionDataModel({
    required int code,
    required String message,
    required List<ExpenseTypeDataModel> expensesType,
    required List<TarifsDataModel> tarifs,
    required List<PopDataModel> pop,
    required List<AgencyDataModel> agency,
    required List<CpcExpenseTypeConfDataModel> cpcExpenseTypeConf,
    required ApprovalInfoDataModel approvalInfo,
    required List<ProjectsDataModel> projects,
    required List<ContractsDataModel> contracts,
    required ContractsSettingDataModel contactSetting,
    required Map<String, dynamic> wmls,
    required List<ExpenseDataModel> expenses,
    required TimesheetInfoDataModel timesheet,
    required List<HoursDataModel> hours,
    required TotalReservationDataModel totalReservation,
    required List<ReservationDataModel> reservation,
    required List<OnkostenRegelsDataModel> onkostenregels,
    required List<ReservationHoursDataModel> reservationHours,
    required List<WdcOnkostenregelDataModel> wdcOnkostenregel,
    required UitzendingDataModel uitzending,
    required List<TariffAssignmentRulesDataModel> tariffAssignmentRules,
  }) = _TimesheetsDescriptionDataModel;
}
