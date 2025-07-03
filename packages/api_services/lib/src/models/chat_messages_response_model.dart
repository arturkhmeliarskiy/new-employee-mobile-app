import 'package:api_services/api_services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_messages_response_model.g.dart';

@JsonSerializable()
class ChatMessagesResponseModel {
  int? code;
  ChatMessages? sentChatMessage;
  String? message;

  ChatMessagesResponseModel(
    this.code,
    this.sentChatMessage,
    this.message,
  );

  factory ChatMessagesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessagesResponseModelToJson(this);

  static const fromJsonFactory = _$ChatMessagesResponseModelFromJson;
}
