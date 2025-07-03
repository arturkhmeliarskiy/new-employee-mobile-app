import 'package:json_annotation/json_annotation.dart';

part 'chat_groups.g.dart';

@JsonSerializable()
class ChatGroups {
  String? id;
  String? employeeGroupName;
  String? companyGroupName;
  String? agencyGroupName;
  bool? isActive;
  String? subject;
  bool? onlyExternalMessages;
  String? createdAt;
  String? updatedAt;
  String? agencyId;
  String? employeeId;
  String? companyId;

  ChatGroups(
    this.id,
    this.employeeGroupName,
    this.companyGroupName,
    this.agencyGroupName,
    this.isActive,
    this.subject,
    this.onlyExternalMessages,
    this.createdAt,
    this.updatedAt,
    this.agencyId,
    this.employeeId,
    this.companyId,
  );

  factory ChatGroups.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ChatGroupsFromJson(json);

  Map<String, dynamic> toJson() => _$ChatGroupsToJson(this);

  static const fromJsonFactory = _$ChatGroupsFromJson;
}
