import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_hours_data_model.freezed.dart';
part 'reservation_hours_data_model.g.dart';

@freezed
class ReservationHoursDataModel with _$ReservationHoursDataModel {
  const factory ReservationHoursDataModel({
    required String id,
    required String name,
    required String date,
    required double amountOfHours,
    required String description,
    required String sfOrgId,
    required String sfLEId,
    required String sfRecordId,
    required int loonPerc,
    required bool unraveling,
    required String createdAt,
    required String projectId,
    required String tarifId,
    required String tarifIdAlId,
    required String tarifIdAlName,
    required int tarifIdAlCompensatPrc,
  }) = _ReservationHoursDataModel;

  factory ReservationHoursDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ReservationHoursDataModelFromJson(json);
}
