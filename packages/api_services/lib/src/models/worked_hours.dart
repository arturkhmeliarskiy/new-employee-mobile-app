import 'package:json_annotation/json_annotation.dart';

part 'worked_hours.g.dart';

@JsonSerializable()
class WorkedHours {
  double? week;
  double? month;
  double? total;
  WorkedHours(
    this.week,
    this.month,
    this.total,
  );

  factory WorkedHours.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WorkedHoursFromJson(json);

  Map<String, dynamic> toJson() => _$WorkedHoursToJson(this);

  static const fromJsonFactory = _$WorkedHoursFromJson;
}
