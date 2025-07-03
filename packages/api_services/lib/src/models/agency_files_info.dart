import 'package:json_annotation/json_annotation.dart';

part 'agency_files_info.g.dart';

@JsonSerializable()
class AgencyFilesInfo {
  String? id;
  String? sfFileId;
  String? sfRecordId;
  String? name;
  String? type;
  bool? isAttached;
  String? expirationDate;
  int? size;
  String? createdAt;
  String? employeeId;

  AgencyFilesInfo(
    this.id,
    this.sfFileId,
    this.sfRecordId,
    this.name,
    this.type,
    this.isAttached,
    this.expirationDate,
    this.size,
    this.createdAt,
    this.employeeId,
  );

  factory AgencyFilesInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AgencyFilesInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AgencyFilesInfoToJson(this);

  static const fromJsonFactory = _$AgencyFilesInfoFromJson;
}
