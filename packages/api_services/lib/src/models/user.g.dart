// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['id'] as String?,
      json['email'] as String?,
      json['firstName'] as String?,
      json['lastName'] as String?,
      json['type'] as String?,
      json['activated'] as bool?,
      json['googleId'] as String?,
      json['googleName'] as String?,
      json['googleEmail'] as String?,
      json['linkedinId'] as String?,
      json['linkedinName'] as String?,
      json['linkedinEmail'] as String?,
      json['facebookId'] as String?,
      json['facebookName'] as String?,
      json['facebookEmail'] as String?,
      json['profilePhotoName'] as String?,
      json['createdAt'] as String?,
      json['updatedAt'] as String?,
      json['currentAgencyId'] as String?,
      json['preferredLanguage'] as String?,
      json['username'] as String?,
      json['cookieconsent'] as String?,
      json['lastSeenInApp'] as String?,
      json['viewModeEC'] as String?,
      json['activeCompanies'] as String?,
      json['allowedTabs'] as String?,
      json['isRoot'] as bool?,
      json['is2FA'] as bool?,
      json['resetAttempt'] as String?,
      json['appErrorInfo'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'type': instance.type,
      'activated': instance.activated,
      'googleId': instance.googleId,
      'googleName': instance.googleName,
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
    };
