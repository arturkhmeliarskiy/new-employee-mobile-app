import 'package:json_annotation/json_annotation.dart';

part 'projects.g.dart';

@JsonSerializable()
class Projects {
  String? id;
  String? name;
  bool? acceptedWork;
  String? sfOrgId;
  bool? isGetLEorg;
  String? sfLEId;
  bool? isDeleted;
  String? sfRecordId;
  bool? activeProject;
  String? country;
  String? city;
  String? street;
  String? postalcode;
  String? createdAt;
  String? companyId;

  Projects({
    this.id,
    this.name,
    this.acceptedWork,
    this.sfOrgId,
    this.isGetLEorg,
    this.sfLEId,
    this.isDeleted,
    this.sfRecordId,
    this.activeProject,
    this.country,
    this.city,
    this.street,
    this.postalcode,
    this.createdAt,
    this.companyId,
  });

  factory Projects.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProjectsFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectsToJson(this);

  static const fromJsonFactory = _$ProjectsFromJson;
}
