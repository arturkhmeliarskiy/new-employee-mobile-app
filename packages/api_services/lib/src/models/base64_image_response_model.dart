import 'package:json_annotation/json_annotation.dart';

part 'base64_image_response_model.g.dart';

@JsonSerializable()
class Base64ImageResponseModel {
  int? code;
  String? file;

  Base64ImageResponseModel(
    this.code,
    this.file,
  );

  factory Base64ImageResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$Base64ImageResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$Base64ImageResponseModelToJson(this);

  static const fromJsonFactory = _$Base64ImageResponseModelFromJson;
}
