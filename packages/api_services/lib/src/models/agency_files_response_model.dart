import 'package:api_services/src/models/agency_files_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'agency_files_response_model.g.dart';

@JsonSerializable()
class AgencyFilesResponseModel {
  int? code;
  List<AgencyFilesInfo>? items;

  AgencyFilesResponseModel(
    this.code,
    this.items,
  );

  factory AgencyFilesResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AgencyFilesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AgencyFilesResponseModelToJson(this);

  static const fromJsonFactory = _$AgencyFilesResponseModelFromJson;
}
