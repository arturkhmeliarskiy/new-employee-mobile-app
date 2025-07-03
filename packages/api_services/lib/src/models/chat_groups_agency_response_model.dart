import 'package:api_services/api_services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_groups_agency_response_model.g.dart';

@JsonSerializable()
class ChatGroupsAgencyResponseModel {
  int? code;
  List<ChatGroups>? chatGroups;

  ChatGroupsAgencyResponseModel(
    this.code,
    this.chatGroups,
  );

  factory ChatGroupsAgencyResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChatGroupsAgencyResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatGroupsAgencyResponseModelToJson(this);

  static const fromJsonFactory = _$ChatGroupsAgencyResponseModelFromJson;
}
