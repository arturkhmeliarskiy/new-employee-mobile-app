import 'package:api_services/src/models/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info_response_model.g.dart';

@JsonSerializable()
class InfoResponseModel {
  Info? info;

  InfoResponseModel(
    this.info,
  );

  factory InfoResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InfoResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$InfoResponseModelToJson(this);
}
