import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_data_model.freezed.dart';
part 'reservation_data_model.g.dart';

@freezed
class ReservationDataModel with _$ReservationDataModel {
  const factory ReservationDataModel({
    required String id,
    required String aDVBij,
    required String fDBij,
    required String kVBij,
    required String tvTBij,
    required String vGBij,
    required String vDbBij,
    required String vDwBij,
    required String aDVAf,
    required String fDAf,
    required String kVAf,
    required String tvTAf,
    required String vGAf,
    required String vDbAf,
    required String vDwAf,
    required String averageSalary,
    required String wDC,
    required bool isGetLEorg,
    required String sfOrgId,
    required String sfLEId,
    required bool isDeleted,
    required String sfRecordId,
    required String aggregateSum,
    required String createdAt,
    required String timesheetId,
  }) = _ReservationDataModel;

  factory ReservationDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ReservationDataModelFromJson(json);
}
