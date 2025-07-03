import 'package:json_annotation/json_annotation.dart';

part 'pop.g.dart';

@JsonSerializable()
class Pop {
  String? id;
  String? endDate;
  String? hourRate;
  String? externalTariff;
  String? startDate;
  bool? isUpsertApp;
  String? sfOrgId;
  String? sfLEId;
  String? name;
  bool? isGetLEorg;
  bool? isDeleted;
  String? sfRecordId;
  String? createdAt;
  String? placementId;

  Pop({
    this.id,
    this.endDate,
    this.hourRate,
    this.externalTariff,
    this.startDate,
    this.isUpsertApp,
    this.sfOrgId,
    this.sfLEId,
    this.name,
    this.isGetLEorg,
    this.isDeleted,
    this.sfRecordId,
    this.createdAt,
    this.placementId,
  });

  factory Pop.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PopFromJson(json);

  Map<String, dynamic> toJson() => _$PopToJson(this);

  static const fromJsonFactory = _$PopFromJson;
}
