import 'package:freezed_annotation/freezed_annotation.dart';

part 'accrued_reservations_data_model.freezed.dart';
part 'accrued_reservations_data_model.g.dart';

@freezed
class AccruedReservationsDataModel with _$AccruedReservationsDataModel {
  const factory AccruedReservationsDataModel({
    required double currency,
    required double hours,
  }) = _AccruedReservationsDataModel;

  factory AccruedReservationsDataModel.fromJson(Map<String, dynamic> json) =>
      _$AccruedReservationsDataModelFromJson(json);
}
