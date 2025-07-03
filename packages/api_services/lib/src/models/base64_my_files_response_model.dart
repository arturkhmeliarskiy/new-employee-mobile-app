import 'package:json_annotation/json_annotation.dart';

part 'base64_my_files_response_model.g.dart';

@JsonSerializable()
class Base64MyFilesResponseModel {
  int? code;
  String? content;

  Base64MyFilesResponseModel(
    this.code,
    this.content,
  );

  factory Base64MyFilesResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$Base64MyFilesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$Base64MyFilesResponseModelToJson(this);

  static const fromJsonFactory = _$Base64MyFilesResponseModelFromJson;
}
