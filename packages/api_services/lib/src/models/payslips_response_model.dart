import 'package:api_services/src/models/payslips_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payslips_response_model.g.dart';

@JsonSerializable()
class PayslipsResponseModel {
  int count;
  List<PayslipsInfo> payslips;

  PayslipsResponseModel(
    this.count,
    this.payslips,
  );

  factory PayslipsResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PayslipsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$PayslipsResponseModelToJson(this);

  static const fromJsonFactory = _$PayslipsResponseModelFromJson;
}
