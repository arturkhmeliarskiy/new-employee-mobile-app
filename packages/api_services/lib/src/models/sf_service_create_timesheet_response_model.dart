import 'package:json_annotation/json_annotation.dart';

part 'sf_service_create_timesheet_response_model.g.dart';

@JsonSerializable()
class SfServiceCreateTimesheetResponseModel {
  int? code;
  String? result;

  SfServiceCreateTimesheetResponseModel(
    this.code,
    this.result,
  );

  factory SfServiceCreateTimesheetResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SfServiceCreateTimesheetResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SfServiceCreateTimesheetResponseModelToJson(this);

  static const fromJsonFactory =
      _$SfServiceCreateTimesheetResponseModelFromJson;
}
