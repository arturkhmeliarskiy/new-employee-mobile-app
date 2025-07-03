import 'package:freezed_annotation/freezed_annotation.dart';

part 'total_reservation_data_model.freezed.dart';
part 'total_reservation_data_model.g.dart';

@freezed
class TotalReservationDataModel with _$TotalReservationDataModel {
  const factory TotalReservationDataModel({
    required String id,
    required String fDEind,
    required String kVEind,
    required String aDVEind,
    required String tvTEindUren,
    required String vGEind,
    required String vGEindTemp,
    required String vDwEind,
    required String vDbEind,
    required String vDtEind,
    required String fDInUren,
    required String fDInUrenTemp,
    required String kVInUren,
    required String kVInUrenTemp,
    required String aDVInUren,
    required String aDVInUrenTemp,
    required String tvTInUren,
    required String tvTInUrenTemp,
    required String vGInUren,
    required String vDwInUren,
    required String vDwInUrenTemp,
    required String vDbInUren,
    required String vDbInUrenTemp,
    required String vDtInUren,
    required String vDtInUrenTemp,
    required String totalReservationSf,
    required String nmbrsID,
    required String sfLEId,
    required bool isGetLEorg,
    required String sfOrgId,
    required bool isDeleted,
    required String sfRecordId,
    required String createdAt,
    required String updatedAt,
    required String employeeId,
  }) = _TotalReservationDataModel;

  factory TotalReservationDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TotalReservationDataModelFromJson(json);
}
