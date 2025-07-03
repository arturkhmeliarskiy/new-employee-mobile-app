import 'dart:async';
import 'dart:developer';

import 'package:blocs/blocs.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:socket_io_client/socket_io_client.dart';

class SocketService {
  Socket? socket;
  bool isDisconect = true;
  bool isAutorized = false;

  StreamSocket streamSocket = StreamSocket();

  List<String>? listChatGroupsId;

  Future<void> initializeSocket(bool _isAutorized) async {
    isAutorized = _isAutorized;
    socket = io(AppManager.currentConfig.apiBaseUrl, <String, dynamic>{
      'transports': ['websocket'],
    });
    connect(isAutorized);

    socket?.on('connect_error', (data) {
      log('socket connect_error');
      connectError(data);
    });

    socket?.on('connect', (data) async {
      log('socket connect');
      isDisconect = true;
      if (isAutorized) {
        await joinChatGroups();

        dataRecovery();
      }
    });
    socket?.on('disconnect', (data) {
      log('socket disconnect');
      if (isDisconect) {
        connectError(data);
      }
    });

    socket?.on(
      'message sent',
      handleMessage,
    );

    socket?.on('resume is parsed', (data) {
      log('resume is parsed');
      streamSocket.addResponse(data);
    });

    socket?.on(
      'notification',
      handleNotification,
    );
  }

  void connect(bool _isAutorized) {
    isAutorized = _isAutorized;
    socket?.connect();
  }

  void disconnect() {
    isDisconect = false;
    socket?.disconnect();
    streamSocket.dispose();
  }

  void parseCVFile(String _userId) {
    socket?.emit(
      'parse resume',
      _userId,
    );
  }

  Future<void> joinChatGroups() async {
    final getChatGroups =
        await GetIt.instance.get<ChatRepository>().getChatGroupsAgency();
    listChatGroupsId = getChatGroups.chatGroups?.map((e) => e.id).toList();
    socket?.emit(
      'join chat groups',
      [listChatGroupsId],
    );
  }

  dynamic dataRecovery() {
    final userId = GetIt.instance.get<ProfileRepository>().model.user?.id ?? '';
    final appBloc = GetIt.instance.get<AppBloc>();
    final homeBloc = GetIt.instance.get<HomeBloc>();

    homeBloc.add(
      const HomeEvent.notification(
        unreadChatMessages: true,
        notification: false,
        agencyId: '',
      ),
    );
    if (userId.isEmpty) {
      appBloc.add(const AppEvent.preloadData());
    }
  }

  dynamic connectError(dynamic data) async {
    log(data.toString());

    await Future<void>.delayed(const Duration(seconds: 3));

    connect(isAutorized);
  }

  dynamic handleMessage(dynamic data) async {
    final chatBloc = GetIt.instance.get<ChatBloc>();
    final homeBloc = GetIt.instance.get<HomeBloc>();

    homeBloc.add(
      const HomeEvent.notification(
        unreadChatMessages: true,
        notification: false,
        agencyId: '',
      ),
    );
    await Future<void>.delayed(const Duration(milliseconds: 200));
    chatBloc.add(ChatEvent.initNewMessage(data['senderId'], data));
  }

  dynamic handleNotification(dynamic data) async {
    final homeBloc = GetIt.instance.get<HomeBloc>();

    homeBloc.add(
      HomeEvent.notification(
        unreadChatMessages: false,
        notification: true,
        agencyId: data['senderId'] ?? '',
      ),
    );
  }
}
