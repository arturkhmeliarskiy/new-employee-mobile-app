import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:repositories/src/profile/profile_repository.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:view_models/view_models.dart';

class ChatRepository {
  final ChatService _chatService;
  final ProfileRepository _profileRepository;
  final UpdateDataService _updateDataService;

  ChatRepository(
    this._chatService,
    this._profileRepository,
    this._updateDataService,
  );

  Future<ChatGroupsAgencyDataModel> getChatGroupsAgency({
    String agencyId = '',
  }) async {
    final response = await _chatService.getChatGroupsAgency(agencyId);
    _updateDataService.modelChatGroups = response.toChatGroupsAgency();

    return _updateDataService.modelChatGroups;
  }

  Future<ChatMessagesAgencyDataModel> getChatMessagesAgency(
    String chatgroupId,
    int offset,
  ) async {
    final response = await _chatService.getChatMessagesAgency(
      chatgroupId,
      offset != 0 ? offset : 0,
    );
    final result = response.toChatMessagesAgency();
    return result;
  }

  Future<ChatMessagesAgencyDataModel> getUnreadChatMessages(
    List<String> chatgroupsIds,
  ) async {
    final response = await _chatService.getUnreadChatMessages(chatgroupsIds);
    final result = response.toUnreadChatMessages();
    return result;
  }

  Future<MessagesInfoDataModel> putChatMessages(
    String chatgroupId,
    String agencyId,
  ) async {
    final response = await _chatService.putChatMessage(
      chatgroupId,
      agencyId,
    );
    final result = response.toMessagesInfo();
    return result;
  }

  Future<ChatMessagesAgenciesDataModel> postChatMessage({
    required String messageType,
    required String message,
    required String senderId,
    required String chatGroupId,
    required String agencyId,
    String fileName = '',
    String fileData = '',
  }) async {
    MessagesFileInfoDataModel? chatMessagesUpload;
    ChatMessagesResponseModel? response;
    ChatMessagesAgenciesDataModel? result;

    if (messageType == 'file') {
      chatMessagesUpload = await postChatMessagesUpload(chatGroupId);
      if (chatMessagesUpload.code == 200) {
        final body = json.encode({
          'type': 'file',
          'content': 'chat-files/$chatGroupId/${chatMessagesUpload.fileName}',
          'fileName': 'chat-files/$chatGroupId/${chatMessagesUpload.fileName}',
          'senderId': senderId,
          'chatGroupId': chatGroupId,
          'isReadByEmployee': true,
          'agency': agencyId
        });
        response = await _chatService.postChatMessage(body);
      }
      result = response?.toChatMessagesAgencies();
    } else {
      final body = json.encode({
        'type': 'text',
        'content': message,
        'fileName': null,
        'senderId': senderId,
        'chatGroupId': chatGroupId,
        'isReadByEmployee': true,
        'agency': agencyId
      });
      response = await _chatService.postChatMessage(body);
      result = response.toChatMessagesAgencies();
    }

    return result ?? const ChatMessagesAgenciesDataModel();
  }

  Future<MessagesFileInfoDataModel> postChatMessagesUpload(
    String chatGroupId,
  ) async {
    MessagesFileInfoDataModel? result;
    MessagesFileInfoResponseModel? response;

    final filePicker = await _profileRepository.formatFile();

    if (filePicker.sizeInMb != 0.0) {
      if (filePicker.sizeInMb < 3) {
        response = await _chatService.postChatMessagesUpload(
          "",
          chatGroupId,
          filePicker.uint8list,
        );
      } else {
        response = MessagesFileInfoResponseModel(
          400,
          'The selected file is too large. Maximum size 3Mb',
        );
      }
      result = response.toChatMessagesUpload("");
    } else {
      result = const MessagesFileInfoDataModel(
        code: 400,
        result: 'No file selected',
        fileName: '',
      );
    }

    return result;
  }

  Future<ChatGroupsAgencyDataModel> postChatGroups(
    String employeeId,
    String agencyId,
    String firstName,
    String lastName,
    String orgName,
  ) async {
    final body = json.encode({
      'participants': {
        'employeeId': employeeId,
        'agencyId': agencyId,
      },
      'chatGroupNames': {
        'employeeGroupName':
            firstName == '' ? '$lastName, $orgName' : '$firstName, $orgName',
      }
    });

    final response = await _chatService.postChatGroups(body);
    final result = response.toChatGroupsAgency();
    return result;
  }

  Future<MessagesInfoDataModel> postUpdateOnlyExternalMessages(
    String chatgroupId,
  ) async {
    final response =
        await _chatService.postUpdateOnlyExternalMessages(chatgroupId);
    final result = response.toMessagesInfo();
    return result;
  }
}

extension on ChatGroupsAgencyResponseModel {
  ChatGroupsAgencyDataModel toChatGroupsAgency() {
    final chatGroupsList = List<ChatGroupsDataModel>.from(
      (chatGroups?.map(
            (item) => ChatGroupsDataModel(
              id: item.id ?? '',
              employeeGroupName: item.employeeGroupName ?? '',
              companyGroupName: item.companyGroupName ?? '',
              agencyGroupName: item.agencyGroupName ?? '',
              isActive: item.isActive ?? false,
              subject: item.subject ?? '',
              onlyExternalMessages: item.onlyExternalMessages ?? false,
              createdAt: item.createdAt ?? '',
              updatedAt: item.updatedAt ?? '',
              agencyId: item.agencyId ?? '',
              employeeId: item.employeeId ?? '',
              companyId: item.companyId ?? '',
            ),
          )) ??
          <ChatGroupsDataModel>[],
    );
    return ChatGroupsAgencyDataModel(
      code: code ?? 400,
      chatGroups: chatGroupsList,
    );
  }
}

extension on ChatMessagesAgencyResponseModel {
  ChatMessagesAgencyDataModel toChatMessagesAgency() {
    final chatMessagesList = List<ChatMessagesDataModel>.from(
      (chatMessages?.map(
            (item) => ChatMessagesDataModel(
              id: item.id ?? '',
              type: item.type ?? '',
              fileName: item.fileName ?? '',
              content: item.content ?? '',
              senderId: item.senderId ?? '',
              isReadByEmployee: item.isReadByEmployee ?? false,
              isReadByCompany: item.isReadByCompany ?? false,
              isReadByAgency: item.isReadByAgency ?? false,
              externalMessengerType: item.externalMessengerType ?? '',
              sfRecordId: item.sfRecordId ?? '',
              clientSfId: item.clientSfId ?? '',
              status: item.status ?? '',
              externalMessageRaw: item.externalMessageRaw ?? '',
              createdAt: TigrisDateService.convertDateToLocal(
                item.createdAt ?? '${DateTime(0)}',
              ),
              updatedAt: TigrisDateService.convertDateToLocal(
                item.updatedAt ?? '${DateTime(0)}',
              ),
              chatGroupId: item.chatGroupId ?? '',
              chatMessageUserId: item.chatMessageUserId ?? '',
            ),
          )) ??
          <ChatGroupsDataModel>[],
    );
    return ChatMessagesAgencyDataModel(
      code: code ?? 400,
      chatMessages: chatMessagesList,
      message: message ?? '',
    );
  }
}

extension on ChatMessagesResponseModel {
  ChatMessagesAgenciesDataModel toChatMessagesAgencies() {
    final chatMessagesAgencies = ChatMessagesDataModel(
      id: sentChatMessage?.id ?? '',
      type: sentChatMessage?.type ?? '',
      fileName: sentChatMessage?.fileName ?? '',
      content: sentChatMessage?.content ?? '',
      senderId: sentChatMessage?.senderId ?? '',
      isReadByEmployee: sentChatMessage?.isReadByEmployee ?? false,
      isReadByCompany: sentChatMessage?.isReadByCompany ?? false,
      isReadByAgency: sentChatMessage?.isReadByAgency ?? false,
      externalMessengerType: sentChatMessage?.externalMessengerType ?? '',
      sfRecordId: sentChatMessage?.sfRecordId ?? '',
      clientSfId: sentChatMessage?.clientSfId ?? '',
      status: sentChatMessage?.status ?? '',
      externalMessageRaw: sentChatMessage?.externalMessageRaw ?? '',
      createdAt: TigrisDateService.convertDateToLocal(
        sentChatMessage?.createdAt ?? '${DateTime(0)}',
      ),
      updatedAt: TigrisDateService.convertDateToLocal(
        sentChatMessage?.updatedAt ?? '${DateTime(0)}',
      ),
      chatGroupId: sentChatMessage?.chatGroupId ?? '',
      chatMessageUserId: sentChatMessage?.chatMessageUserId ?? '',
    );

    return ChatMessagesAgenciesDataModel(
      code: code ?? 400,
      chatMessages: chatMessagesAgencies,
      message: message ?? '',
    );
  }
}

extension on UnreadChatMessagesAgencyResponseModel {
  ChatMessagesAgencyDataModel toUnreadChatMessages() {
    final chatMessagesList = List<ChatMessagesDataModel>.from(
      (unreadChatMessages?.map(
            (item) => ChatMessagesDataModel(
              id: item.id ?? '',
              type: item.type ?? '',
              fileName: item.fileName ?? '',
              content: item.content ?? '',
              senderId: item.senderId ?? '',
              isReadByEmployee: item.isReadByEmployee ?? false,
              isReadByCompany: item.isReadByCompany ?? false,
              isReadByAgency: item.isReadByAgency ?? false,
              externalMessengerType: item.externalMessengerType ?? '',
              sfRecordId: item.sfRecordId ?? '',
              clientSfId: item.clientSfId ?? '',
              status: item.status ?? '',
              externalMessageRaw: item.externalMessageRaw ?? '',
              createdAt: item.createdAt ?? '',
              updatedAt: item.updatedAt ?? '',
              chatGroupId: item.chatGroupId ?? '',
              chatMessageUserId: item.chatMessageUserId ?? '',
            ),
          )) ??
          <ChatGroupsDataModel>[],
    );
    return ChatMessagesAgencyDataModel(
      code: code ?? 400,
      chatMessages: chatMessagesList,
      message: '',
    );
  }
}

extension on MessagesInfoResponseModel {
  MessagesInfoDataModel toMessagesInfo() {
    return MessagesInfoDataModel(
      code: code ?? 400,
      message: message ?? 'No message',
    );
  }
}

extension on MessagesFileInfoResponseModel {
  MessagesFileInfoDataModel toChatMessagesUpload(String fileName) {
    return MessagesFileInfoDataModel(
      code: code ?? 400,
      result: result ?? '',
      fileName: fileName,
    );
  }
}
