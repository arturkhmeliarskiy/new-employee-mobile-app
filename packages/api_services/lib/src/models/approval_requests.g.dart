// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approval_requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApprovalRequests _$ApprovalRequestsFromJson(Map<String, dynamic> json) =>
    ApprovalRequests(
      json['id'] as String?,
      json['status'] as String?,
      json['approverType'] as String?,
      json['approverName'] as String?,
      json['dateOfApproval'] as String?,
      json['comment'] as String?,
      json['employeeApproverId'] as String?,
    );

Map<String, dynamic> _$ApprovalRequestsToJson(ApprovalRequests instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'approverType': instance.approverType,
      'approverName': instance.approverName,
      'dateOfApproval': instance.dateOfApproval,
      'comment': instance.comment,
      'employeeApproverId': instance.employeeApproverId,
    };
