import 'package:json_annotation/json_annotation.dart';

part 'timesheet_id.g.dart';

@JsonSerializable()
class TimesheetId {
  String? isTimesheetExist;

  TimesheetId(
    this.isTimesheetExist,
  );

  factory TimesheetId.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimesheetIdFromJson(json);

  Map<String, dynamic> toJson() => _$TimesheetIdToJson(this);

  static const fromJsonFactory = _$TimesheetIdFromJson;
}
