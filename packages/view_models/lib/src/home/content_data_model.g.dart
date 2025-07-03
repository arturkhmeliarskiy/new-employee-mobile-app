// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContentDataModel _$$_ContentDataModelFromJson(Map<String, dynamic> json) =>
    _$_ContentDataModel(
      agencyId: json['agencyId'] as String,
      orgName: json['orgName'] as String,
      orgLogo: json['orgLogo'] as String,
      colorAgency: json['colorAgency'] as String,
      phone: json['phone'] as String,
      workedHoursDataModel: WorkedHoursDataModel.fromJson(
          json['workedHoursDataModel'] as Map<String, dynamic>),
      accruedReservations: AccruedReservationsDataModel.fromJson(
          json['accruedReservations'] as Map<String, dynamic>),
      averageWorkedHoursDataModel: AverageWorkedHoursDataModel.fromJson(
          json['averageWorkedHoursDataModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ContentDataModelToJson(_$_ContentDataModel instance) =>
    <String, dynamic>{
      'agencyId': instance.agencyId,
      'orgName': instance.orgName,
      'orgLogo': instance.orgLogo,
      'colorAgency': instance.colorAgency,
      'phone': instance.phone,
      'workedHoursDataModel': instance.workedHoursDataModel,
      'accruedReservations': instance.accruedReservations,
      'averageWorkedHoursDataModel': instance.averageWorkedHoursDataModel,
    };
