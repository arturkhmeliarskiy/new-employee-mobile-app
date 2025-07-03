import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_groups_data_model.freezed.dart';
part 'chat_groups_data_model.g.dart';

@freezed
class ChatGroupsDataModel with _$ChatGroupsDataModel {
  const factory ChatGroupsDataModel({
    required String id,
    required String employeeGroupName,
    required String companyGroupName,
    required String agencyGroupName,
    required bool isActive,
    required String subject,
    required bool onlyExternalMessages,
    required String createdAt,
    required String updatedAt,
    required String agencyId,
    required String employeeId,
    required String companyId,
  }) = _ChatGroupsDataModel;

  factory ChatGroupsDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChatGroupsDataModelFromJson(json);
}
