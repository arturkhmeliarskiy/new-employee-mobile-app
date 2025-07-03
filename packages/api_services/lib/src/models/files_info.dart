import 'package:json_annotation/json_annotation.dart';

part 'files_info.g.dart';

@JsonSerializable()
class FilesInfo {
  String? id;
  String? name;
  String? type;
  String? path;
  bool? isShared;
  String? expirationDate;
  String? typeDocument;
  String? createdAt;
  String? size;
  String? employeeId;
  String? parentCloudFileId;

  FilesInfo(
    this.id,
    this.name,
    this.type,
    this.path,
    this.isShared,
    this.expirationDate,
    this.typeDocument,
    this.createdAt,
    this.size,
    this.employeeId,
    this.parentCloudFileId,
  );

  factory FilesInfo.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FilesInfoFromJson(json);

  Map<String, dynamic> toJson() => _$FilesInfoToJson(this);

  static const fromJsonFactory = _$FilesInfoFromJson;
}
