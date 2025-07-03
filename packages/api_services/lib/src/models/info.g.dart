// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      json['user'] == null
          ? null
          : UserInfo.fromJson(json['user'] as Map<String, dynamic>),
      (json['records'] as List<dynamic>?)
          ?.map((e) => Records.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['agencies'] as List<dynamic>?)
          ?.map((e) => Agency.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'user': instance.user,
      'records': instance.records,
      'agencies': instance.agencies,
    };
