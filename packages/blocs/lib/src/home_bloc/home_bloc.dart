import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final UpdateDataService _updateDataService;
  final ChatRepository _chatRepository;
  final ProfileRepository _profileRepository;

  HomeBloc(
    this._updateDataService,
    this._chatRepository,
    this._profileRepository,
  ) : super(const HomeState.loading()) {
    on<NotificationHomeEvent>(_notification);
  }

  ChatMessagesAgencyDataModel? _unreadChatMessages;
  ChatMessagesAgencyDataModel get unreadChatMessages {
    return _unreadChatMessages ??
        const ChatMessagesAgencyDataModel(
          code: 400,
          chatMessages: [],
          message: '',
        );
  }

  Future<void> _notification(
    NotificationHomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    NotificationMessagesDataModel? modelData;

    final listChatGroupsId = _updateDataService.modelChatGroups.chatGroups
            ?.map((e) => e.id)
            .toList() ??
        [];

    if (event.unreadChatMessages && listChatGroupsId.isNotEmpty) {
      _unreadChatMessages =
          await _chatRepository.getUnreadChatMessages(listChatGroupsId);
    }

    if (event.notification) {
      modelData = await _profileRepository.getNotificationMessages();
    }

    emit(
      HomeState.notification(
        _unreadChatMessages?.chatMessages?.isNotEmpty ?? false
            ? _unreadChatMessages?.chatMessages?.isNotEmpty ?? false
            : modelData?.dataModel.isNotEmpty ?? false,
        _unreadChatMessages ?? const ChatMessagesAgencyDataModel(),
      ),
    );
  }
}
