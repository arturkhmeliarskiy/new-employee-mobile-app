import 'package:json_annotation/json_annotation.dart';

part 'accrued_reservations.g.dart';

@JsonSerializable()
class AccruedReservations {
  double? currency;
  double? hours;
  AccruedReservations(
    this.currency,
    this.hours,
  );

  factory AccruedReservations.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AccruedReservationsFromJson(json);

  Map<String, dynamic> toJson() => _$AccruedReservationsToJson(this);

  static const fromJsonFactory = _$AccruedReservationsFromJson;
}
