import 'package:api_services/src/models/timesheets.dart';
import 'package:json_annotation/json_annotation.dart';

part 'timesheets_info_response_model.g.dart';

@JsonSerializable()
class TimesheetsInfoResponseModel {
  int? code;
  List<Timesheets>? timesheets;
  int? totalCount;

  TimesheetsInfoResponseModel(
    this.code,
    this.timesheets,
    this.totalCount,
  );

  factory TimesheetsInfoResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimesheetsInfoResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$TimesheetsInfoResponseModelToJson(this);

  static const fromJsonFactory = _$TimesheetsInfoResponseModelFromJson;
}
