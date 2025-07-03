// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_companies_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobCompaniesDataModel _$$_JobCompaniesDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_JobCompaniesDataModel(
      id: json['id'] as String,
      name: json['name'] as String,
      companyName: json['companyName'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      functieName: json['functieName'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      sfRecordId: json['sfRecordId'] as String,
      approvalClients: json['approvalClients'] as String,
      agencyId: json['agencyId'] as String,
      orgName: json['orgName'] as String,
      agencyColor: json['agencyColor'] as String,
      orgLogo: json['orgLogo'] as String,
      employeeId: json['employeeId'] as String,
      disableEditingTimesheets: json['disableEditingTimesheets'] as String,
      disableTimesheetsEdition: json['disableTimesheetsEdition'] as bool,
      loonBijUitzending: json['loonBijUitzending'] as String,
      projectName: json['projectName'] as String,
      responsibleClientPhone: json['responsibleClientPhone'] as String,
      responsibleClientEmail: json['responsibleClientEmail'] as String,
      contactInfo: json['contactInfo'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_JobCompaniesDataModelToJson(
        _$_JobCompaniesDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'companyName': instance.companyName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'functieName': instance.functieName,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'sfRecordId': instance.sfRecordId,
      'approvalClients': instance.approvalClients,
      'agencyId': instance.agencyId,
      'orgName': instance.orgName,
      'agencyColor': instance.agencyColor,
      'orgLogo': instance.orgLogo,
      'employeeId': instance.employeeId,
      'disableEditingTimesheets': instance.disableEditingTimesheets,
      'disableTimesheetsEdition': instance.disableTimesheetsEdition,
      'loonBijUitzending': instance.loonBijUitzending,
      'projectName': instance.projectName,
      'responsibleClientPhone': instance.responsibleClientPhone,
      'responsibleClientEmail': instance.responsibleClientEmail,
      'contactInfo': instance.contactInfo,
      'phone': instance.phone,
      'email': instance.email,
    };
