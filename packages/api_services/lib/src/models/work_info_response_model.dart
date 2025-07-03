import 'package:api_services/src/models/content.dart';
import 'package:json_annotation/json_annotation.dart';

part 'work_info_response_model.g.dart';

@JsonSerializable()
class WorkInfoResponseModel {
  int? code;
  List<Content>? content;
  WorkInfoResponseModel(
    this.code,
    this.content,
  );

  factory WorkInfoResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WorkInfoResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkInfoResponseModelToJson(this);

  static const fromJsonFactory = _$WorkInfoResponseModelFromJson;
}
