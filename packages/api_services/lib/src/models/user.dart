import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? id;
  String? email;
  String? firstName;
  String? lastName;
  String? type;
  bool? activated;
  String? googleId;
  String? googleName;
  String? googleEmail;
  String? linkedinId;
  String? linkedinName;
  String? linkedinEmail;
  String? facebookId;
  String? facebookName;
  String? facebookEmail;
  String? profilePhotoName;
  String? createdAt;
  String? updatedAt;
  String? currentAgencyId;
  String? preferredLanguage;
  String? username;
  String? cookieconsent;
  String? lastSeenInApp;
  String? viewModeEC;
  String? activeCompanies;
  String? allowedTabs;
  bool? isRoot;
  bool? is2FA;
  String? resetAttempt;
  String? appErrorInfo;

  User(
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.type,
    this.activated,
    this.googleId,
    this.googleName,
    this.googleEmail,
    this.linkedinId,
    this.linkedinName,
    this.linkedinEmail,
    this.facebookId,
    this.facebookName,
    this.facebookEmail,
    this.profilePhotoName,
    this.createdAt,
    this.updatedAt,
    this.currentAgencyId,
    this.preferredLanguage,
    this.username,
    this.cookieconsent,
    this.lastSeenInApp,
    this.viewModeEC,
    this.activeCompanies,
    this.allowedTabs,
    this.isRoot,
    this.is2FA,
    this.resetAttempt,
    this.appErrorInfo,
  );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  static const fromJsonFactory = _$UserFromJson;
}
