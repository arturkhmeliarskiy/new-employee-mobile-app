import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/home/accrued_reservations_data_model.dart';
import 'package:view_models/src/home/average_worked_hours_data_model.dart';
import 'package:view_models/src/home/worked_hours_data_model.dart';

part 'content_data_model.freezed.dart';
part 'content_data_model.g.dart';

@freezed
class ContentDataModel with _$ContentDataModel {
  const factory ContentDataModel({
    required String agencyId,
    required String orgName,
    required String orgLogo,
    required String colorAgency,
    required String phone,
    required WorkedHoursDataModel workedHoursDataModel,
    required AccruedReservationsDataModel accruedReservations,
    required AverageWorkedHoursDataModel averageWorkedHoursDataModel,
  }) = _ContentDataModel;

  factory ContentDataModel.fromJson(Map<String, dynamic> json) =>
      _$ContentDataModelFromJson(json);
}
