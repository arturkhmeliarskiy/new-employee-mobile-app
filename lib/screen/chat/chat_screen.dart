import 'dart:math' as math;

import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nil/nil.dart';
import 'package:repositories/repositories.dart';
import 'package:ui_kit/ui_kit.dart';

class ChatScreen extends StatefulWidget {
  final String agencyColor;
  final String orgLogo;
  final String agencyId;
  final String orgName;
  final bool pushHomeScreen;

  const ChatScreen({
    this.agencyColor = '',
    this.agencyId = '',
    this.orgLogo = '',
    this.orgName = '',
    this.pushHomeScreen = false,
    Key? key,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final message = TextEditingController();
  bool? pushHomeScreen;
  ScrollController? controller;
  late String agencyId;
  late String agencyColor;
  late String orgLogo;
  late String orgName;
  Map<String, dynamic> data = {};
  bool isMyMessage = false;
  bool isLoading = false;
  bool isOpenChat = true;
  int offset = 0;
  int perOffset = 20;
  String onFileName = '';
  DateTime lastTime = DateTime.now();

  Future<void> _scrollListener() async {
    if (controller?.position.pixels == controller?.position.maxScrollExtent) {
      lastTime = DateTime.now();
      await Future<void>.delayed(const Duration(milliseconds: 200));
      final timeDifference = DateTime.now().difference(lastTime).inMilliseconds;
      setState(() {
        offset = offset + perOffset;

        if (timeDifference > 199) {
          isLoading = true;
          context.read<ChatBloc>().add(
                ChatEvent.loadMore(
                  agencyId: widget.agencyId.isNotEmpty
                      ? widget.agencyId
                      : data['agencyId'],
                  offset: offset,
                ),
              );
        }
      });
    }
  }

  Widget _buildProgressIndicator() {
    isLoading = false;
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32),
      child: Center(
        child: TigrisProgressIndicator(),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    if (widget.agencyId.isEmpty) {
      data = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    }
    controller = ScrollController()..addListener(_scrollListener);

    pushHomeScreen =
        widget.pushHomeScreen ? widget.pushHomeScreen : data['pushHomeScreen'];
    final getIt = GetIt.instance.get<ProfileRepository>();
    agencyId = widget.agencyId.isNotEmpty ? widget.agencyId : data['agencyId'];

    agencyColor = widget.agencyColor.isNotEmpty
        ? widget.agencyColor
        : getIt.model.agencyData
                ?.firstWhere((element) => element.id == agencyId)
                .styleJson
                ?.header
                ?.backgroundColor ??
            '0xff00D72E';

    orgLogo = widget.orgLogo.isNotEmpty
        ? widget.orgLogo
        : getIt.model.agencyData
                ?.firstWhere((element) => element.id == agencyId)
                .headerLogoUrl ??
            '';
    orgName = widget.orgName.isNotEmpty
        ? widget.orgName
        : getIt.model.agencyData
                ?.firstWhere((element) => element.id == agencyId)
                .orgName ??
            '';

    if (isOpenChat) {
      if (widget.agencyId.isEmpty) {
        context.read<ChatBloc>().add(
              ChatEvent.init(
                data['agencyId'],
                true,
              ),
            );
      } else {
        context.read<ChatBloc>().add(
              ChatEvent.init(
                widget.agencyId,
                false,
              ),
            );
      }
      isOpenChat = false;
    }

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller?.removeListener(_scrollListener);
    controller?.dispose();
    message.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widht = MediaQuery.of(context).size.width;

    return BlocListener<ChatBloc, ChatState>(
      listener: (context, state) => state.maybeMap(
        loadingFile: (_) => LoadingDialog.show(context),
        error: (response) {
          LoadingDialog.close();
          TigrisMessage().showOverlay(context, response.message, false);
          return null;
        },
        getFile: (response) {
          if (onFileName == response.nameFile) {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => TigrisFilePreview(
                  nameFile: response.nameFile,
                  data: response.file,
                  typeFile: response.type,
                ),
              ),
            );
          }
          return LoadingDialog.close();
        },
        init: (info) {
          if (info.message.isNotEmpty) {
            TigrisMessage().showOverlay(context, info.message, false);
          }
          return null;
        },
        loading: (_) => nil,
        orElse: () {
          return null;
        },
      ),
      child: WillPopScope(
        onWillPop: () async {
          context.read<ChatBloc>().add(
                ChatEvent.updateUnreadMessage(
                  agencyId: agencyId,
                ),
              );
          await Future<void>.delayed(const Duration(milliseconds: 200));
          context.read<HomeBloc>().add(
                HomeEvent.notification(
                  notification: true,
                  unreadChatMessages: true,
                  agencyId: agencyId,
                ),
              );

          if (pushHomeScreen ?? false) {
            await Navigator.of(context).pushNamedAndRemoveUntil(
              '/tigrisNavigationBar',
              (route) => false,
            );
          } else {
            Navigator.of(context).pop();
          }

          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(
              int.parse(
                agencyColor,
              ),
            ),
            leadingWidth: 100,
            leading: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: GestureDetector(
                onTap: () async {
                  context.read<ChatBloc>().add(
                        ChatEvent.updateUnreadMessage(
                          agencyId: agencyId,
                        ),
                      );
                  await Future<void>.delayed(const Duration(milliseconds: 200));
                  context.read<HomeBloc>().add(
                        HomeEvent.notification(
                          notification: true,
                          unreadChatMessages: true,
                          agencyId: agencyId,
                        ),
                      );
                  if (pushHomeScreen ?? false) {
                    await Navigator.of(context).pushNamedAndRemoveUntil(
                      '/tigrisNavigationBar',
                      (route) => false,
                    );
                  } else {
                    Navigator.of(context).pop();
                  }
                },
                child: Row(
                  children: [
                    const TigrisImage(
                      image: TigrisImages.chevronLeft,
                      color: TigrisColor.white,
                      width: 25.0,
                    ),
                    Text(
                      'back_button_name'.tr(),
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: TigrisColor.white,
                              ),
                    )
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: TigrisColor.white,
                  child: ClipOval(
                    child: Image.network(
                      orgLogo,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  color: TigrisColor.blackOpacity10,
                  child: BlocBuilder<ChatBloc, ChatState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        loading: (_) => const Center(
                          child: TigrisProgressIndicator(),
                        ),
                        init: (initState) {
                          return ListView.builder(
                            reverse: true,
                            shrinkWrap: true,
                            controller: controller,
                            itemCount: initState.allMyMessage.length + 1,
                            itemBuilder: (context, index) {
                              if (index < initState.allMyMessage.length) {
                                initState.allMyMessage[index].senderId ==
                                        agencyId
                                    ? isMyMessage = false
                                    : isMyMessage = true;

                                return Wrap(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(
                                        14.0,
                                        10.0,
                                        14.0,
                                        5.0,
                                      ),
                                      alignment: isMyMessage
                                          ? Alignment.topRight
                                          : Alignment.topLeft,
                                      child: Column(
                                        crossAxisAlignment: isMyMessage
                                            ? CrossAxisAlignment.end
                                            : CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            constraints: BoxConstraints(
                                              maxWidth: widht * 0.7,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight:
                                                    const Radius.circular(15),
                                                topLeft:
                                                    const Radius.circular(15),
                                                bottomLeft: Radius.circular(
                                                  isMyMessage ? 15 : 1,
                                                ),
                                                bottomRight: Radius.circular(
                                                  isMyMessage ? 1 : 15,
                                                ),
                                              ),
                                              color: isMyMessage
                                                  ? Color(
                                                      int.parse(agencyColor),
                                                    )
                                                  : Color(
                                                      int.parse(
                                                        agencyColor,
                                                      ),
                                                    ).withOpacity(0.3),
                                            ),
                                            padding: const EdgeInsets.only(
                                              left: 12,
                                              right: 12,
                                              top: 6,
                                              bottom: 6,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    LayoutBuilder(
                                                      builder: (
                                                        context,
                                                        constraints,
                                                      ) {
                                                        if (!isMyMessage) {
                                                          return Text(
                                                            orgName,
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: isMyMessage
                                                                  ? TigrisColor
                                                                      .white
                                                                  : Color(
                                                                      int.parse(
                                                                        agencyColor,
                                                                      ),
                                                                    ),
                                                            ),
                                                          );
                                                        } else {
                                                          return const SizedBox();
                                                        }
                                                      },
                                                    ),
                                                    LayoutBuilder(
                                                      builder: (
                                                        context,
                                                        constraints,
                                                      ) {
                                                        if (initState
                                                                .allMyMessage[
                                                                    index]
                                                                .type ==
                                                            'file') {
                                                          return RichText(
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      '${'documents'.tr()}: ',
                                                                  style: Theme
                                                                          .of(
                                                                    context,
                                                                  )
                                                                      .textTheme
                                                                      .headlineMedium
                                                                      ?.copyWith(
                                                                        color: isMyMessage
                                                                            ? TigrisColor.white
                                                                            : TigrisColor.blackOpacity100,
                                                                      ),
                                                                ),
                                                                TextSpan(
                                                                  text: initState
                                                                      .allMyMessage[
                                                                          index]
                                                                      .content,
                                                                  style: Theme
                                                                          .of(
                                                                    context,
                                                                  )
                                                                      .textTheme
                                                                      .headlineMedium
                                                                      ?.copyWith(
                                                                        color: isMyMessage
                                                                            ? TigrisColor.white
                                                                            : TigrisColor.blackOpacity100,
                                                                        decoration:
                                                                            TextDecoration.underline,
                                                                      ),
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () {
                                                                          onFileName = initState
                                                                              .allMyMessage[index]
                                                                              .fileName
                                                                              .substring(
                                                                            initState.allMyMessage[index].fileName.lastIndexOf('/') +
                                                                                1,
                                                                          );

                                                                          context
                                                                              .read<ChatBloc>()
                                                                              .add(
                                                                                ChatEvent.getFile(
                                                                                  link: initState.allMyMessage[index].fileName,
                                                                                ),
                                                                              );
                                                                        },
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        } else {
                                                          return Text(
                                                            initState
                                                                .allMyMessage[
                                                                    index]
                                                                .content,
                                                            style: Theme.of(
                                                              context,
                                                            )
                                                                .textTheme
                                                                .headlineMedium
                                                                ?.copyWith(
                                                                  color: isMyMessage
                                                                      ? TigrisColor
                                                                          .white
                                                                      : TigrisColor
                                                                          .blackOpacity100,
                                                                ),
                                                          );
                                                        }
                                                      },
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  initState.allMyMessage[index]
                                                      .createdAt,
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: isMyMessage
                                                        ? TigrisColor.white
                                                        : TigrisColor
                                                            .blackOpacity100,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Transform(
                                            alignment: Alignment.center,
                                            transform: isMyMessage
                                                ? Matrix4.rotationY(math.pi)
                                                : Matrix4.rotationY(0),
                                            child: CustomPaint(
                                              size: const Size(
                                                14,
                                                6,
                                              ),
                                              painter: TigrisChatMessage(
                                                color: isMyMessage
                                                    ? Color(
                                                        int.parse(
                                                          agencyColor,
                                                        ),
                                                      )
                                                    : Color(
                                                        int.parse(
                                                          agencyColor,
                                                        ),
                                                      ).withOpacity(0.3),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              } else {
                                return isLoading
                                    ? _buildProgressIndicator()
                                    : Container();
                              }
                            },
                          );
                        },
                        orElse: () => nil,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 84,
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 12,
                    bottom: 32,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<ChatBloc>().add(
                                ChatEvent.addMyMessageOrFile(
                                  '',
                                  'file',
                                  agencyId,
                                ),
                              );
                        },
                        child: TigrisImage(
                          image: TigrisImages.paperclip,
                          color: TigrisColor.blackOpacity100,
                          width: 25.0,
                        ),
                      ),
                      SizedBox(
                        width: widht * 0.75,
                        height: 40,
                        child: TextField(
                          cursorHeight: 20,
                          controller: message,
                          onSubmitted: (value) {
                            if (message.text.isNotEmpty) {
                              context.read<ChatBloc>().add(
                                    ChatEvent.addMyMessageOrFile(
                                      message.text,
                                      'text',
                                      agencyId,
                                    ),
                                  );
                            }
                            message.text = '';
                          },
                          cursorColor: Color(
                            int.parse(
                              agencyColor,
                            ),
                          ),
                          style: Theme.of(context).textTheme.headlineMedium,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(
                                  int.parse(
                                    agencyColor,
                                  ),
                                ),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: TigrisColor.blackOpacity20),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: TigrisColor.blackOpacity20),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            fillColor: TigrisColor.blackOpacity10,
                            filled: true,
                            contentPadding: const EdgeInsets.only(
                              left: 15,
                              bottom: 10,
                              top: 10,
                              right: 15,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (message.text.isNotEmpty) {
                            context.read<ChatBloc>().add(
                                  ChatEvent.addMyMessageOrFile(
                                    message.text,
                                    'text',
                                    agencyId,
                                  ),
                                );
                          }
                          message.text = '';
                        },
                        child: TigrisImage(
                          image: TigrisImages.send,
                          color: TigrisColor.blackOpacity100,
                          width: 25.0,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
