import 'package:freezed_annotation/freezed_annotation.dart';

part 'approval_requests_data_model.freezed.dart';
part 'approval_requests_data_model.g.dart';

@freezed
class ApprovalRequestDataModel with _$ApprovalRequestDataModel {
  const factory ApprovalRequestDataModel({
    required String id,
    required String status,
    required String approverType,
    required String approverName,
    required String dateOfApproval,
    required String comment,
    required String employeeApproverId,
  }) = _ApprovalRequestDataModel;

  factory ApprovalRequestDataModel.fromJson(Map<String, dynamic> json) =>
      _$ApprovalRequestDataModelFromJson(json);
}
