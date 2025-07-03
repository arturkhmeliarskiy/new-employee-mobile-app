import 'dart:convert';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:view_models/view_models.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository _chatRepository;
  final ProfileRepository _profileRepository;
  final UpdateDataService _updateDataService;
  ChatMessagesAgencyDataModel? _modelChatMessages;

  ChatBloc(
    this._chatRepository,
    this._profileRepository,
    this._updateDataService,
  ) : super(const ChatState.loading()) {
    on<InitChatEvent>(_initMessage);
    on<CheckChatGroupsEvent>(_checkChatGroup);
    on<AddMyMessageEvent>(_addMyMessage);
    on<InitNewMessageChatEvent>(_initNewMessage);
    on<GetFileChatEvent>(_getFile);
    on<LoadMoreChatEvent>(_loadMore);
    on<UpdateUnreadMessageEvent>(_updateUnreadMessage);
  }

  Future<void> _updateUnreadMessage(
    UpdateUnreadMessageEvent event,
    Emitter<ChatState> emit,
  ) async {
    final getChatGroupAgency = _updateDataService.modelChatGroups.chatGroups
        ?.where((element) => element.agencyId == event.agencyId);

    final isChatGroupAgency = getChatGroupAgency?.where(
      (element) => element.agencyId == event.agencyId,
    );

    await _chatRepository.putChatMessages(
      isChatGroupAgency?.isNotEmpty ?? false
          ? isChatGroupAgency?.first.id ?? ''
          : '',
      isChatGroupAgency?.isNotEmpty ?? false ? event.agencyId : '',
    );
  }

  Future<void> _initNewMessage(
    InitNewMessageChatEvent event,
    Emitter<ChatState> emit,
  ) async {
    late ChatMessagesDataModel newMessage;

    final getChatGroupAgency = _updateDataService.modelChatGroups.chatGroups
        ?.where((element) => element.agencyId == event.agencyId);

    final isChatGroupAgency = getChatGroupAgency?.where(
      (element) => element.agencyId == event.agencyId,
    );

    if (isChatGroupAgency?.isNotEmpty ?? false) {
      newMessage = ChatMessagesDataModel(
        id: event.data['id'] ?? '',
        type: event.data['type'] ?? '',
        fileName: event.data['fileName'] ?? '',
        content: event.data['content'] ?? '',
        senderId: event.data['senderId'] ?? '',
        isReadByEmployee: event.data['isReadByEmployee'] ?? false,
        isReadByCompany: event.data['isReadByCompany'] ?? false,
        isReadByAgency: event.data['isReadByAgency'] ?? false,
        externalMessengerType: event.data['externalMessengerType'] ?? '',
        sfRecordId: event.data['sfRecordId'] ?? '',
        clientSfId: event.data['clientSfId'] ?? '',
        status: event.data['status'] ?? '',
        externalMessageRaw: event.data['externalMessageRaw'] ?? '',
        createdAt: TigrisDateService.convertDateToLocal(
          event.data['createdAt'] ?? '${DateTime(0)}',
        ),
        updatedAt: TigrisDateService.convertDateToLocal(
          event.data['updatedAt'] ?? '${DateTime(0)}',
        ),
        chatGroupId: event.data['chatGroupId'] ?? '',
        chatMessageUserId: event.data['chatMessageUserId'] ?? '',
      );

      final isMessageAgency = _modelChatMessages?.chatMessages
          ?.where((element) => element.senderId == event.data['senderId']);

      if (isMessageAgency?.isNotEmpty ?? false) {
        _modelChatMessages = ChatMessagesAgencyDataModel(
          chatMessages: [newMessage, ..._modelChatMessages?.chatMessages ?? []],
          code: 0,
          message: '',
        );
      }
    }

    if (getChatGroupAgency?.isNotEmpty ?? false) {
      emit(
        ChatState.init(
          allMyMessage: _modelChatMessages?.chatMessages ?? [],
          message: '',
        ),
      );
    }
  }

  Future<void> _getFile(
    GetFileChatEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(const ChatState.loadingFile());
    emit(
      ChatState.init(
        allMyMessage: _modelChatMessages?.chatMessages ?? [],
        message: '',
      ),
    );

    final fileName = event.link.substring(event.link.lastIndexOf('/') + 1);
    final type = fileName.substring(fileName.lastIndexOf('.') + 1);

    final base64Image = await _profileRepository.getBase64Image(event.link);
    if (base64Image.code == 200) {
      final file = const Base64Decoder().convert(base64Image.file ?? '');
      emit(ChatState.getFile(nameFile: fileName, file: file, type: type));
      emit(
        ChatState.init(
          allMyMessage: _modelChatMessages?.chatMessages ?? [],
          message: '',
        ),
      );
    } else {
      emit(
        ChatState.error(
          message: 'tigris_file_preview.file_retrieval_error'.tr(),
        ),
      );
      emit(
        ChatState.init(
          allMyMessage: _modelChatMessages?.chatMessages ?? [],
          message: '',
        ),
      );
    }
  }

  Future<void> _addMyMessage(
    AddMyMessageEvent event,
    Emitter<ChatState> emit,
  ) async {
    ChatMessagesAgenciesDataModel? result;

    final employee = _profileRepository.model.recordsData
        ?.firstWhere((element) => element.agencyId == event.agencyId);

    final getChatGroupAgency = _updateDataService.modelChatGroups.chatGroups
        ?.where((element) => element.agencyId == event.agencyId);

    if (employee != null) {
      result = await _chatRepository.postChatMessage(
        messageType: event.messageType,
        message: event.message,
        agencyId: event.agencyId,
        senderId: employee.id!,
        chatGroupId: getChatGroupAgency?.first.id ?? '',
      );
    }

    if (result?.code == 200) {
      final newMessage = ChatMessagesDataModel(
        id: '',
        type: event.messageType,
        fileName: event.messageType == 'file'
            ? result?.chatMessages?.fileName ?? ''
            : '',
        content: event.messageType == 'file'
            ? result?.chatMessages?.fileName ?? ''
            : event.message,
        senderId: employee?.id ?? '',
        isReadByEmployee: false,
        isReadByCompany: false,
        isReadByAgency: false,
        externalMessengerType: '',
        sfRecordId: '',
        clientSfId: '',
        status: '',
        externalMessageRaw: '',
        createdAt: TigrisDateService.convertDateToLocal(
          '${DateTime.now()}',
        ),
        updatedAt: TigrisDateService.convertDateToLocal(
          '${DateTime.now()}',
        ),
        chatGroupId: getChatGroupAgency?.first.id ?? '',
        chatMessageUserId: '',
      );

      _modelChatMessages = ChatMessagesAgencyDataModel(
        chatMessages: [
          newMessage,
          ..._modelChatMessages?.chatMessages ?? [],
        ],
        code: 0,
        message: '',
      );

      emit(
        ChatState.init(
          allMyMessage: _modelChatMessages?.chatMessages ?? [],
          message: result?.message ?? '',
        ),
      );
    } else if (result?.code != null) {
      emit(
        ChatState.error(
          message: 'chat_screen.error_message_was_not_sent'.tr(),
        ),
      );
      emit(
        ChatState.init(
          allMyMessage: _modelChatMessages?.chatMessages ?? [],
          message: result?.message ?? '',
        ),
      );
    }
  }

  Future<void> _checkChatGroup(
    CheckChatGroupsEvent event,
    Emitter<ChatState> emit,
  ) async {
    final getChatGroupAgency = _updateDataService.modelChatGroups.chatGroups
        ?.where((element) => element.agencyId == event.agencyId);

    final employee = _profileRepository.model.recordsData
        ?.firstWhere((element) => element.agencyId == event.agencyId);

    await _chatRepository.postChatGroups(
      employee?.id ?? '',
      event.agencyId,
      employee?.firstName ?? '',
      employee?.lastName ?? '',
      event.orgName,
    );
    if (getChatGroupAgency?.first.onlyExternalMessages ?? false) {
      await _chatRepository.postUpdateOnlyExternalMessages(
        getChatGroupAgency?.first.id ?? '',
      );
    }
  }

  Future<void> _initMessage(
    InitChatEvent event,
    Emitter<ChatState> emit,
  ) async {
    late ChatMessagesAgencyDataModel getChatMessagesAgency;
    late Iterable<ChatGroupsDataModel>? getChatGroupAgency;
    late ChatGroupsAgencyDataModel chatGroupsAgencyDataModel;
    emit(const ChatState.loading());

    if (event.isPushNatificationMessage) {
      chatGroupsAgencyDataModel = await _chatRepository.getChatGroupsAgency();

      getChatGroupAgency = chatGroupsAgencyDataModel.chatGroups
          ?.where((element) => element.agencyId == event.agencyId);
    } else {
      getChatGroupAgency = _updateDataService.modelChatGroups.chatGroups
          ?.where((element) => element.agencyId == event.agencyId);
    }

    getChatMessagesAgency = await _chatRepository.getChatMessagesAgency(
      getChatGroupAgency?.isNotEmpty ?? false
          ? getChatGroupAgency?.first.id ?? ''
          : '',
      0,
    );

    _modelChatMessages = getChatMessagesAgency;

    emit(
      ChatState.init(
        allMyMessage: getChatMessagesAgency.chatMessages?.toList() ?? [],
        message: '',
        orgLogo: _profileRepository.model.agencyData
                ?.firstWhere((element) => element.id == event.agencyId)
                .headerLogoUrl ??
            '',
        orgName: _profileRepository.model.agencyData
                ?.firstWhere((element) => element.id == event.agencyId)
                .orgName ??
            '',
        agencyColor: _profileRepository.model.agencyData
                ?.firstWhere((element) => element.id == event.agencyId)
                .styleJson
                ?.header
                ?.backgroundColor ??
            '',
      ),
    );
  }

  Future<void> _loadMore(
    LoadMoreChatEvent event,
    Emitter<ChatState> emit,
  ) async {
    late ChatMessagesAgencyDataModel getChatMessagesAgency;
    final getChatGroupAgency = _updateDataService.modelChatGroups.chatGroups
        ?.where((element) => element.agencyId == event.agencyId);

    getChatMessagesAgency = await _chatRepository.getChatMessagesAgency(
      getChatGroupAgency?.isNotEmpty ?? false
          ? getChatGroupAgency?.first.id ?? ''
          : '',
      event.offset,
    );

    _modelChatMessages = ChatMessagesAgencyDataModel(
      chatMessages: _modelChatMessages?.chatMessages
        ?..addAll(
          getChatMessagesAgency.chatMessages ?? [],
        ),
      code: 0,
      message: '',
    );

    emit(
      (state as InitChatState).copyWith(
        allMyMessage: _modelChatMessages?.chatMessages ?? [],
      ),
    );
  }
}
