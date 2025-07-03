import 'package:json_annotation/json_annotation.dart';

part 'reservation.g.dart';

@JsonSerializable()
class Reservation {
  String? id;
  String? aDVBij;
  String? fDBij;
  String? kVBij;
  String? tvTBij;
  String? vGBij;
  String? vDbBij;
  String? vDwBij;
  String? aDVAf;
  String? fDAf;
  String? kVAf;
  String? tvTAf;
  String? vGAf;
  String? vDbAf;
  String? vDwAf;
  String? averageSalary;
  String? wDC;
  bool? isGetLEorg;
  String? sfOrgId;
  String? sfLEId;
  bool? isDeleted;
  String? sfRecordId;
  String? aggregateSum;
  String? createdAt;
  String? timesheetId;

  Reservation(
    this.id,
    this.aDVBij,
    this.fDBij,
    this.kVBij,
    this.tvTBij,
    this.vGBij,
    this.vDbBij,
    this.vDwBij,
    this.aDVAf,
    this.fDAf,
    this.kVAf,
    this.tvTAf,
    this.vGAf,
    this.vDbAf,
    this.vDwAf,
    this.averageSalary,
    this.wDC,
    this.isGetLEorg,
    this.sfOrgId,
    this.sfLEId,
    this.isDeleted,
    this.sfRecordId,
    this.aggregateSum,
    this.createdAt,
    this.timesheetId,
  );

  factory Reservation.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ReservationFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationToJson(this);

  static const fromJsonFactory = _$ReservationFromJson;
}
