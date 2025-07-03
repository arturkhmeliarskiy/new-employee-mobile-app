part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.init(
    String agencyId,
    bool isPushNatificationMessage,
  ) = InitChatEvent;
  const factory ChatEvent.initNewMessage(
    String agencyId,
    dynamic data,
  ) = InitNewMessageChatEvent;
  const factory ChatEvent.addMyMessageOrFile(
    String message,
    String messageType,
    String agencyId,
  ) = AddMyMessageEvent;
  const factory ChatEvent.checkChatGroups(
    String agencyId,
    String orgName,
  ) = CheckChatGroupsEvent;
  const factory ChatEvent.getFile({
    required String link,
  }) = GetFileChatEvent;
  const factory ChatEvent.loadMore({
    required int offset,
    required String agencyId,
  }) = LoadMoreChatEvent;
  const factory ChatEvent.updateUnreadMessage({
    required String agencyId,
  }) = UpdateUnreadMessageEvent;
}
