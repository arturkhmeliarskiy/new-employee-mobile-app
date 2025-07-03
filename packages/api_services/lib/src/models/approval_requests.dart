import 'package:json_annotation/json_annotation.dart';

part 'approval_requests.g.dart';

@JsonSerializable()
class ApprovalRequests {
  String? id;
  String? status;
  String? approverType;
  String? approverName;
  String? dateOfApproval;
  String? comment;
  String? employeeApproverId;

  ApprovalRequests(
    this.id,
    this.status,
    this.approverType,
    this.approverName,
    this.dateOfApproval,
    this.comment,
    this.employeeApproverId,
  );

  factory ApprovalRequests.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ApprovalRequestsFromJson(json);

  Map<String, dynamic> toJson() => _$ApprovalRequestsToJson(this);

  static const fromJsonFactory = _$ApprovalRequestsFromJson;
}
