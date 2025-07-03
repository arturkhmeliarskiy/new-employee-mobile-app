import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/chat/index.dart';

part 'chat_groups_agency_data_model.freezed.dart';
part 'chat_groups_agency_data_model.g.dart';

@freezed
class ChatGroupsAgencyDataModel with _$ChatGroupsAgencyDataModel {
  const factory ChatGroupsAgencyDataModel({
    int? code,
    List<ChatGroupsDataModel>? chatGroups,
  }) = _ChatGroupsAgencyDataModel;

  factory ChatGroupsAgencyDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChatGroupsAgencyDataModelFromJson(json);
}
