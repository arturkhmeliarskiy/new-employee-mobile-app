import 'package:api_services/src/models/style_json.dart';
import 'package:json_annotation/json_annotation.dart';

part 'agency.g.dart';

@JsonSerializable()
class Agency {
  Agency(
    this.id,
    this.orgName,
    this.orgSlogan,
    this.phone,
    this.country,
    this.styleURL,
    this.link,
    this.agencyAbonnSettings,
    this.agencyTigrisSettings,
    this.sfOrgId,
    this.sfLEId,
    this.sfRecordId,
    this.isGetLEorg,
    this.isRootAccount,
    this.fieldSet,
    this.googleTagManagerId,
    this.shippingLongitude,
    this.shippingLatitude,
    this.website,
    this.careerMsg,
    this.menuSettings,
    this.expirationPeriodEmployee,
    this.expirationPeriodApplicant,
    this.fieldSetForProfile,
    this.extendPermissionMessages,
    this.recordTypesIds,
    this.picklistData,
    this.createdAt,
    this.updatedAt,
    this.headerLogoUrl,
    this.zip,
    this.description,
    this.welcomeMsg,
    this.movieAfterInvite,
    this.styleJSON,
  );
  String? id;
  String? orgName;
  String? orgSlogan;
  String? phone;
  String? country;
  String? styleURL;
  String? link;
  String? agencyAbonnSettings;
  String? agencyTigrisSettings;
  String? sfOrgId;
  String? sfLEId;
  String? sfRecordId;
  bool? isGetLEorg;
  bool? isRootAccount;
  String? fieldSet;
  String? googleTagManagerId;
  String? shippingLongitude;
  String? shippingLatitude;
  String? website;
  String? careerMsg;
  String? menuSettings;
  String? expirationPeriodEmployee;
  String? expirationPeriodApplicant;
  String? fieldSetForProfile;
  String? extendPermissionMessages;
  String? recordTypesIds;
  String? picklistData;
  String? createdAt;
  String? updatedAt;
  String? headerLogoUrl;
  String? zip;
  String? description;
  String? welcomeMsg;
  String? movieAfterInvite;
  StyleJson? styleJSON;

  factory Agency.fromJson(Map<String, dynamic> json) => _$AgencyFromJson(json);
}
