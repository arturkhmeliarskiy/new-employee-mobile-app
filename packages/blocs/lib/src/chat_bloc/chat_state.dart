part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.loading() = LoadingChatStateState;
  const factory ChatState.init({
    required List<ChatMessagesDataModel> allMyMessage,
    required String message,
    String? orgLogo,
    String? orgName,
    String? agencyColor,
  }) = InitChatState;
  const factory ChatState.addMyFileSuccess({
    required ChatMessagesAgencyDataModel model,
  }) = AddMyFileChatSuccessState;
  const factory ChatState.addMyFileFailure({
    required ChatMessagesAgencyDataModel model,
  }) = AddMyFileChatFailureState;
  const factory ChatState.updateStateIndicator({
    required String agencyId,
  }) = ChatUpdateStateIndicatorState;
  const factory ChatState.loadingFile() = LoadingFileChatState;
  const factory ChatState.error({
    required String message,
  }) = ChatErrorState;
  const factory ChatState.getFile({
    required String nameFile,
    required Uint8List file,
    required String type,
  }) = GetFileChatState;
}
