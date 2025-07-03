import 'package:api_services/src/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shifts_response_model.g.dart';

@JsonSerializable()
class ShiftsResponseModel {
  int? code;
  String? message;
  List<ShiftsModel> shifts;

  ShiftsResponseModel(
    this.code,
    this.message,
    this.shifts,
  );

  factory ShiftsResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ShiftsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftsResponseModelToJson(this);

  static const fromJsonFactory = _$ShiftsResponseModelFromJson;
}
