// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timesheets_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimesheetsDataModel _$$_TimesheetsDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_TimesheetsDataModel(
      id: json['id'] as String,
      employeeId: json['employeeId'] as String,
      agencyId: json['agencyId'] as String,
      weekNumber: json['weekNumber'] as int,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      status: json['status'] as String,
      hours: json['hours'] as String,
      orgLogo: json['orgLogo'] as String,
      agencyColor: json['agencyColor'] as String,
      orgName: json['orgName'] as String,
      nameIcon: json['nameIcon'] as String,
      colorIcon: json['colorIcon'] as String,
      placementId: json['placementId'] as String,
      isButton: json['isButton'] as bool,
      isEdit: json['isEdit'] as bool,
      functionName: json['functionName'] as String,
      companyName: json['companyName'] as String,
      expensesCost: (json['expensesCost'] as num).toDouble(),
      approvalRequests: (json['approvalRequests'] as List<dynamic>)
          .map((e) =>
              ApprovalRequestDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TimesheetsDataModelToJson(
        _$_TimesheetsDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeId': instance.employeeId,
      'agencyId': instance.agencyId,
      'weekNumber': instance.weekNumber,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'status': instance.status,
      'hours': instance.hours,
      'orgLogo': instance.orgLogo,
      'agencyColor': instance.agencyColor,
      'orgName': instance.orgName,
      'nameIcon': instance.nameIcon,
      'colorIcon': instance.colorIcon,
      'placementId': instance.placementId,
      'isButton': instance.isButton,
      'isEdit': instance.isEdit,
      'functionName': instance.functionName,
      'companyName': instance.companyName,
      'expensesCost': instance.expensesCost,
      'approvalRequests': instance.approvalRequests,
    };
