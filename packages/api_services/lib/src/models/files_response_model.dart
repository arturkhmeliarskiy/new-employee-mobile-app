import 'package:api_services/src/models/files_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'files_response_model.g.dart';

@JsonSerializable()
class FilesResponseModel {
  int? code;
  List<FilesInfo>? files;

  FilesResponseModel(
    this.code,
    this.files,
  );

  factory FilesResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FilesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$FilesResponseModelToJson(this);

  static const fromJsonFactory = _$FilesResponseModelFromJson;
}
