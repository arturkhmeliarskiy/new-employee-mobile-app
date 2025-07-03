import 'package:json_annotation/json_annotation.dart';

part 'failure.g.dart';

@JsonSerializable()
class ApiResponseFailureModel {
  ApiResponseFailureModel(this.error, this.errorDescription);

  @JsonKey(name: 'error', defaultValue: '')
  final String error;
  @JsonKey(name: 'error_description', defaultValue: '')
  final String errorDescription;

  factory ApiResponseFailureModel.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFailureModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseFailureModelToJson(this);
}
