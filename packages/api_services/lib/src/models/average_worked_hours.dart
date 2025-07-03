import 'package:json_annotation/json_annotation.dart';

part 'average_worked_hours.g.dart';

@JsonSerializable()
class AverageWorkedHours {
  double? weekly;

  AverageWorkedHours(
    this.weekly,
  );

  factory AverageWorkedHours.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AverageWorkedHoursFromJson(json);

  Map<String, dynamic> toJson() => _$AverageWorkedHoursToJson(this);

  static const fromJsonFactory = _$AverageWorkedHoursFromJson;
}
