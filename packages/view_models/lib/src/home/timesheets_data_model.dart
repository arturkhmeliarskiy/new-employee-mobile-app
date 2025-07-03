import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/home/approval_requests_data_model.dart';

part 'timesheets_data_model.freezed.dart';
part 'timesheets_data_model.g.dart';

@freezed
class TimesheetsDataModel with _$TimesheetsDataModel {
  const factory TimesheetsDataModel({
    required String id,
    required String employeeId,
    required String agencyId,
    required int weekNumber,
    required String startDate,
    required String endDate,
    required String status,
    required String hours,
    required String orgLogo,
    required String agencyColor,
    required String orgName,
    required String nameIcon,
    required String colorIcon,
    required String placementId,
    required bool isButton,
    required bool isEdit,
    required String functionName,
    required String companyName,
    required double expensesCost,
    required List<ApprovalRequestDataModel> approvalRequests,
  }) = _TimesheetsDataModel;

  factory TimesheetsDataModel.fromJson(Map<String, dynamic> json) =>
      _$TimesheetsDataModelFromJson(json);
}
