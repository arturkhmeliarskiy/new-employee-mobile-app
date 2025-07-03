import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/chat/chat_messages_data_model.dart';

part 'chat_messages_agencies_data_model.freezed.dart';
part 'chat_messages_agencies_data_model.g.dart';

@freezed
class ChatMessagesAgenciesDataModel with _$ChatMessagesAgenciesDataModel {
  const factory ChatMessagesAgenciesDataModel({
    int? code,
    ChatMessagesDataModel? chatMessages,
    String? message,
  }) = _ChatMessagesAgenciesDataModel;

  factory ChatMessagesAgenciesDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesAgenciesDataModelFromJson(json);
}
