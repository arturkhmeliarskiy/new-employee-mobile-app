// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_file_upload_get_url_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CVFileUploadGetUrlModel _$CVFileUploadGetUrlModelFromJson(
        Map<String, dynamic> json) =>
    CVFileUploadGetUrlModel(
      json['code'] as int,
      json['message'] as String,
      json['url'] as String,
      json['token'] as String,
      json['userId'] as String,
      json['firstName'] as String,
      json['lastName'] as String,
      json['email'] as String,
      json['phone'] as String,
      json['password'] as String,
    );

Map<String, dynamic> _$CVFileUploadGetUrlModelToJson(
        CVFileUploadGetUrlModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'url': instance.url,
      'token': instance.token,
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
    };
