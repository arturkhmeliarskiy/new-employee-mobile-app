import 'package:json_annotation/json_annotation.dart';

part 'contact_setting.g.dart';

@JsonSerializable()
class ContactSetting {
  String? id;
  String? name;
  bool? stallPayment;
  @JsonKey(name: 'sp_adv')
  bool? spAdv;
  @JsonKey(name: 'sp_fd')
  bool? spFd;
  @JsonKey(name: 'sp_kv')
  bool? spKv;
  @JsonKey(name: 'sp_tvt')
  bool? spTvt;
  @JsonKey(name: 'sp_vdb')
  bool? spVdb;
  @JsonKey(name: 'sp_vdw')
  bool? spVdw;
  @JsonKey(name: 'sp_vg')
  bool? spVg;
  bool? stiplu;
  bool? stipp;
  bool? vakkrachtBouw;
  bool? vakkrachtBouwUTA;
  String? entity;
  String? contactEntity;
  int? wekenteller;
  String? fase;
  bool? isUpsertApp;
  bool? isGetLEorg;
  bool? isDeleted;
  String? sfOrgId;
  String? sfLEId;
  String? sfRecordId;
  bool? isNegativeReservationsAllowed;
  bool? ignoreWML;
  String? createdAt;
  String? employeeId;

  ContactSetting(
    this.id,
    this.name,
    this.stallPayment,
    this.spAdv,
    this.spFd,
    this.spKv,
    this.spTvt,
    this.spVdb,
    this.spVdw,
    this.spVg,
    this.stiplu,
    this.stipp,
    this.vakkrachtBouw,
    this.vakkrachtBouwUTA,
    this.entity,
    this.contactEntity,
    this.wekenteller,
    this.fase,
    this.isUpsertApp,
    this.isGetLEorg,
    this.isDeleted,
    this.sfOrgId,
    this.sfLEId,
    this.sfRecordId,
    this.isNegativeReservationsAllowed,
    this.ignoreWML,
    this.createdAt,
    this.employeeId,
  );

  factory ContactSetting.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ContactSettingFromJson(json);

  Map<String, dynamic> toJson() => _$ContactSettingToJson(this);

  static const fromJsonFactory = _$ContactSettingFromJson;
}
