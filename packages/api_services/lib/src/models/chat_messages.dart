import 'package:json_annotation/json_annotation.dart';

part 'chat_messages.g.dart';

@JsonSerializable()
class ChatMessages {
  String? id;
  String? type;
  String? fileName;
  String? content;
  String? senderId;
  bool? isReadByEmployee;
  bool? isReadByCompany;
  bool? isReadByAgency;
  String? externalMessengerType;
  String? sfRecordId;
  String? clientSfId;
  String? status;
  String? externalMessageRaw;
  String? createdAt;
  String? updatedAt;
  String? chatGroupId;
  String? chatMessageUserId;

  ChatMessages(
    this.id,
    this.type,
    this.fileName,
    this.content,
    this.senderId,
    this.isReadByEmployee,
    this.isReadByCompany,
    this.isReadByAgency,
    this.externalMessengerType,
    this.sfRecordId,
    this.clientSfId,
    this.status,
    this.externalMessageRaw,
    this.createdAt,
    this.updatedAt,
    this.chatGroupId,
    this.chatMessageUserId,
  );

  factory ChatMessages.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ChatMessagesFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessagesToJson(this);

  static const fromJsonFactory = _$ChatMessagesFromJson;
}
