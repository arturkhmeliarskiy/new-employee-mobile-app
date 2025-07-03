import 'package:json_annotation/json_annotation.dart';

part 'timesheets_current_period.g.dart';

@JsonSerializable()
class TimesheetsCurrentPeriod {
  String? id;
  String? name;
  String? startDate;
  String? endDate;
  String? status;

  TimesheetsCurrentPeriod(
    this.id,
    this.name,
    this.startDate,
    this.endDate,
    this.status,
  );

  factory TimesheetsCurrentPeriod.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimesheetsCurrentPeriodFromJson(json);

  Map<String, dynamic> toJson() => _$TimesheetsCurrentPeriodToJson(this);

  static const fromJsonFactory = _$TimesheetsCurrentPeriodFromJson;
}
