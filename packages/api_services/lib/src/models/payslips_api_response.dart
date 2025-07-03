import 'package:api_services/src/models/payslips_response_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payslips_api_response.g.dart';

@JsonSerializable()
class PayslipsApiResponse {
  int code;
  String message;
  PayslipsResponseModel data;

  PayslipsApiResponse(
    this.code,
    this.message,
    this.data,
  );

  factory PayslipsApiResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PayslipsApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PayslipsApiResponseToJson(this);

  static const fromJsonFactory = _$PayslipsApiResponseFromJson;
}
