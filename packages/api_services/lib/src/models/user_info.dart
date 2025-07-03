import 'package:json_annotation/json_annotation.dart';

part 'user_info.g.dart';

@JsonSerializable()
class UserInfo {
  UserInfo(
    this.id,
    this.email,
    this.username,
    this.firstName,
    this.lastName,
    this.type,
    this.activated,
    this.profilePhotoName,
    this.preferredLanguage,
    this.resetPasswordToken,
    this.cookieconsent,
    this.lastSeenInApp,
    this.viewModeEC,
    this.isRoot,
    this.is2FA,
    this.resetAttempt,
    this.appErrorInfo,
    this.birthDate,
    this.fullName,
    this.nickName,
    this.nationality,
    this.phone,
    this.addressCountry,
    this.addressProvince,
    this.addressStreet,
    this.addressPostalCode,
    this.desiredSalary,
    this.desiredFunction,
    this.maxTravelTimeMinutes,
    this.createdAt,
    this.updatedAt,
    this.currentAgencyId,
  );
  String? id;
  String? email;
  String? username;
  String? firstName;
  String? lastName;
  String? type;
  bool? activated;
  String? profilePhotoName;
  String? preferredLanguage;
  String? resetPasswordToken;
  String? cookieconsent;
  String? lastSeenInApp;
  String? viewModeEC;
  bool? isRoot;
  bool? is2FA;
  String? resetAttempt;
  String? appErrorInfo;
  String? birthDate;
  String? fullName;
  String? nickName;
  String? nationality;
  String? phone;
  String? addressCountry;
  String? addressProvince;
  String? addressStreet;
  String? addressPostalCode;
  String? desiredSalary;
  String? desiredFunction;
  String? maxTravelTimeMinutes;
  String? createdAt;
  String? updatedAt;
  String? currentAgencyId;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}
