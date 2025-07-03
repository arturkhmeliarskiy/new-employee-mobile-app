import 'package:freezed_annotation/freezed_annotation.dart';

part 'uitzending_data_model.freezed.dart';
part 'uitzending_data_model.g.dart';

@freezed
class UitzendingDataModel with _$UitzendingDataModel {
  const factory UitzendingDataModel({
    required String id,
    required String startDate,
    required String endDate,
    required double hoursPerWeek,
    required String defaultProject,
    required String disableEditingTimesheets,
    required bool employeeIDAlldisableTimesheetsEdition,
    required String employeeId,
    required String sfOrgId,
    required String contracttype,
    required String employeeIDAllfirstName,
    required String employeeIDAlllastName,
    required String employeeIDAllsfRecordId,
    required String employeeIDAllsfLEId,
    required String employeeIDAllagencyId,
    required String employeeIDAlldienstverbandStatus,
    required String employeeIDAllfase,
    required String employeeIDAllbirthdate,
    required String employeeIDAllblockedReservations,
    required String employeeIDAllmailingCountry,
    required String employeeIDAllmailingcity,
    required String employeeIDAllmailingStreet,
    required String dienstverbandStatus,
    required String costPrizeCalculationIdAlContractType,
    required bool costPrizeCalculationIdAlPlacementClause,
    required String typeHourRegistrationVia,
    required List<dynamic> tariffPackIdAlUsedUnravelingTypes,
  }) = _UitzendingDataModel;

  factory UitzendingDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UitzendingDataModelFromJson(json);
}
