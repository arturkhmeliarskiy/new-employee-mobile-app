// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataInfoModel _$$_UserDataInfoModelFromJson(Map<String, dynamic> json) =>
    _$_UserDataInfoModel(
      id: json['id'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      profilePhotoName: json['profilePhotoName'] as String,
      preferredLanguage: json['preferredLanguage'] as String,
      birthDate: json['birthDate'] as String,
      nickName: json['nickName'] as String,
      nationality: json['nationality'] as String,
      phone: json['phone'] as String,
      desiredSalary: json['desiredSalary'] as String,
      desiredFunction: json['desiredFunction'] as String,
      maxTravelTimeMinutes: json['maxTravelTimeMinutes'] as String,
      fullName: json['fullName'] as String,
      lastName: json['lastName'] as String,
      type: json['type'] as String?,
      activated: json['activated'] as bool?,
      resetPasswordToken: json['resetPasswordToken'] as String?,
      cookieconsent: json['cookieconsent'] as String?,
      lastSeenInApp: json['lastSeenInApp'] as String?,
      viewModeEC: json['viewModeEC'] as String?,
      isRoot: json['isRoot'] as bool?,
      is2FA: json['is2FA'] as bool?,
      resetAttempt: json['resetAttempt'] as String?,
      appErrorInfo: json['appErrorInfo'] as String?,
      addressCountry: json['addressCountry'] as String?,
      addressProvince: json['addressProvince'] as String?,
      addressStreet: json['addressStreet'] as String?,
      addressPostalCode: json['addressPostalCode'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      currentAgencyId: json['currentAgencyId'] as String?,
    );

Map<String, dynamic> _$$_UserDataInfoModelToJson(
        _$_UserDataInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'firstName': instance.firstName,
      'profilePhotoName': instance.profilePhotoName,
      'preferredLanguage': instance.preferredLanguage,
      'birthDate': instance.birthDate,
      'nickName': instance.nickName,
      'nationality': instance.nationality,
      'phone': instance.phone,
      'desiredSalary': instance.desiredSalary,
      'desiredFunction': instance.desiredFunction,
      'maxTravelTimeMinutes': instance.maxTravelTimeMinutes,
      'fullName': instance.fullName,
      'lastName': instance.lastName,
      'type': instance.type,
      'activated': instance.activated,
      'resetPasswordToken': instance.resetPasswordToken,
      'cookieconsent': instance.cookieconsent,
      'lastSeenInApp': instance.lastSeenInApp,
      'viewModeEC': instance.viewModeEC,
      'isRoot': instance.isRoot,
      'is2FA': instance.is2FA,
      'resetAttempt': instance.resetAttempt,
      'appErrorInfo': instance.appErrorInfo,
      'addressCountry': instance.addressCountry,
      'addressProvince': instance.addressProvince,
      'addressStreet': instance.addressStreet,
      'addressPostalCode': instance.addressPostalCode,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'currentAgencyId': instance.currentAgencyId,
    };
