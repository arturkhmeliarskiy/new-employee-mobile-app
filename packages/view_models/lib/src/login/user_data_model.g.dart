// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataModel _$$_UserDataModelFromJson(Map<String, dynamic> json) =>
    _$_UserDataModel(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      type: json['type'] as String,
      activated: json['activated'] as bool,
      googleEmail: json['googleEmail'] as String,
      linkedinId: json['linkedinId'] as String,
      linkedinName: json['linkedinName'] as String,
      linkedinEmail: json['linkedinEmail'] as String,
      facebookId: json['facebookId'] as String,
      facebookName: json['facebookName'] as String,
      facebookEmail: json['facebookEmail'] as String,
      profilePhotoName: json['profilePhotoName'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      currentAgencyId: json['currentAgencyId'] as String,
      preferredLanguage: json['preferredLanguage'] as String,
      username: json['username'] as String,
      cookieconsent: json['cookieconsent'] as String,
      lastSeenInApp: json['lastSeenInApp'] as String,
      viewModeEC: json['viewModeEC'] as String,
      activeCompanies: json['activeCompanies'] as String,
      allowedTabs: json['allowedTabs'] as String,
      isRoot: json['isRoot'] as bool,
      is2FA: json['is2FA'] as bool,
      resetAttempt: json['resetAttempt'] as String,
      appErrorInfo: json['appErrorInfo'] as String,
      googleName: json['googleName'] as String?,
      googleId: json['googleId'] as String?,
    );

Map<String, dynamic> _$$_UserDataModelToJson(_$_UserDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'type': instance.type,
      'activated': instance.activated,
      'googleEmail': instance.googleEmail,
      'linkedinId': instance.linkedinId,
      'linkedinName': instance.linkedinName,
      'linkedinEmail': instance.linkedinEmail,
      'facebookId': instance.facebookId,
      'facebookName': instance.facebookName,
      'facebookEmail': instance.facebookEmail,
      'profilePhotoName': instance.profilePhotoName,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'currentAgencyId': instance.currentAgencyId,
      'preferredLanguage': instance.preferredLanguage,
      'username': instance.username,
      'cookieconsent': instance.cookieconsent,
      'lastSeenInApp': instance.lastSeenInApp,
      'viewModeEC': instance.viewModeEC,
      'activeCompanies': instance.activeCompanies,
      'allowedTabs': instance.allowedTabs,
      'isRoot': instance.isRoot,
      'is2FA': instance.is2FA,
      'resetAttempt': instance.resetAttempt,
      'appErrorInfo': instance.appErrorInfo,
      'googleName': instance.googleName,
      'googleId': instance.googleId,
    };
