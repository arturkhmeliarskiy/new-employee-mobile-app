import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/chat/chat_messages_data_model.dart';

part 'chat_messages_agency_data_model.freezed.dart';
part 'chat_messages_agency_data_model.g.dart';

@freezed
class ChatMessagesAgencyDataModel with _$ChatMessagesAgencyDataModel {
  const factory ChatMessagesAgencyDataModel({
    int? code,
    List<ChatMessagesDataModel>? chatMessages,
    String? message,
  }) = _ChatMessagesAgencyDataModel;

  factory ChatMessagesAgencyDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesAgencyDataModelFromJson(json);
}
