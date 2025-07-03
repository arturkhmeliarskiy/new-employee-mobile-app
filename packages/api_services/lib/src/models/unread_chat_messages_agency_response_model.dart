import 'package:api_services/api_services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'unread_chat_messages_agency_response_model.g.dart';

@JsonSerializable()
class UnreadChatMessagesAgencyResponseModel {
  int? code;
  List<ChatMessages>? unreadChatMessages;

  UnreadChatMessagesAgencyResponseModel(
    this.code,
    this.unreadChatMessages,
  );

  factory UnreadChatMessagesAgencyResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UnreadChatMessagesAgencyResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UnreadChatMessagesAgencyResponseModelToJson(this);

  static const fromJsonFactory =
      _$UnreadChatMessagesAgencyResponseModelFromJson;
}
