import 'package:api_services/src/models/accrued_reservations.dart';
import 'package:api_services/src/models/average_worked_hours.dart';
import 'package:api_services/src/models/worked_hours.dart';
import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

@JsonSerializable()
class Content {
  String? agencyId;
  WorkedHours? workedHours;
  AccruedReservations? accruedReservations;
  AverageWorkedHours? averageWorkedHours;

  Content(
    this.agencyId,
    this.workedHours,
    this.accruedReservations,
    this.averageWorkedHours,
  );

  factory Content.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);

  static const fromJsonFactory = _$ContentFromJson;
}
