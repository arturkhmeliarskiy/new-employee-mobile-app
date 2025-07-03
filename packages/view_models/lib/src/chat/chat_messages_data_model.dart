import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_messages_data_model.freezed.dart';
part 'chat_messages_data_model.g.dart';

@freezed
class ChatMessagesDataModel with _$ChatMessagesDataModel {
  const factory ChatMessagesDataModel({
    required String id,
    required String type,
    required String fileName,
    required String content,
    required String senderId,
    required bool isReadByEmployee,
    required bool isReadByCompany,
    required bool isReadByAgency,
    required String externalMessengerType,
    required String sfRecordId,
    required String clientSfId,
    required String status,
    required String externalMessageRaw,
    required String createdAt,
    required String updatedAt,
    required String chatGroupId,
    required String chatMessageUserId,
  }) = _ChatMessagesDataModel;

  factory ChatMessagesDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesDataModelFromJson(json);
}
