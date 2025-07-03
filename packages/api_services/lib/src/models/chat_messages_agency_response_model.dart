import 'package:api_services/api_services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_messages_agency_response_model.g.dart';

@JsonSerializable()
class ChatMessagesAgencyResponseModel {
  int? code;
  List<ChatMessages>? chatMessages;
  String? message;

  ChatMessagesAgencyResponseModel(
    this.code,
    this.chatMessages,
    this.message,
  );

  factory ChatMessagesAgencyResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesAgencyResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChatMessagesAgencyResponseModelToJson(this);

  static const fromJsonFactory = _$ChatMessagesAgencyResponseModelFromJson;
}
