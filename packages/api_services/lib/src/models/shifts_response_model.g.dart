// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shifts_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShiftsResponseModel _$ShiftsResponseModelFromJson(Map<String, dynamic> json) =>
    ShiftsResponseModel(
      json['code'] as int?,
      json['message'] as String?,
      (json['shifts'] as List<dynamic>)
          .map((e) => ShiftsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShiftsResponseModelToJson(
        ShiftsResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'shifts': instance.shifts,
    };
