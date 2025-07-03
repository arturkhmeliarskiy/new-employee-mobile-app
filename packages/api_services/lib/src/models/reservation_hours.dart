import 'package:json_annotation/json_annotation.dart';

part 'reservation_hours.g.dart';

@JsonSerializable()
class ReservationHours {
  ReservationHours(
    this.id,
    this.name,
    this.date,
    this.amountOfHours,
    this.description,
    this.sfOrgId,
    this.isUpsertApp,
    this.isGetLEorg,
    this.isDeleted,
    this.sfLEId,
    this.sfRecordId,
    this.uurloonBijUitzending,
    this.loonPerc,
    this.unraveling,
    this.createdAt,
    this.projectId,
    this.tarifId,
    this.timesheetId,
    this.tarifIdAlId,
    this.tarifIdAlName,
    this.tarifIdAlCompensatPrc,
  );
  String? id;
  String? name;
  String? date;
  double? amountOfHours;
  String? description;
  String? sfOrgId;
  bool? isUpsertApp;
  bool? isGetLEorg;
  bool? isDeleted;
  String? sfLEId;
  String? sfRecordId;
  String? uurloonBijUitzending;
  int? loonPerc;
  bool? unraveling;
  String? createdAt;
  String? projectId;
  String? tarifId;
  String? timesheetId;
  @JsonKey(name: 'tarifId__al.id')
  String? tarifIdAlId;
  @JsonKey(name: 'tarifId__al.name')
  String? tarifIdAlName;
  int? tarifIdAlCompensatPrc;

  factory ReservationHours.fromJson(Map<String, dynamic> json) =>
      _$ReservationHoursFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationHoursToJson(this);

  static const fromJsonFactory = _$ReservationHoursFromJson;
}
