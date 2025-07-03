import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:tigris/screen/chat/chat_screen.dart';
import 'package:tigris/screen/login/login_screen.dart';
import 'package:tigris/screen/profile/settings_modal_window.dart';
import 'package:ui_kit/ui_kit.dart';

class ProfileScreen extends StatefulWidget {
  final void Function(int) numberPage;
  const ProfileScreen({required this.numberPage, Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(
          const ProfileEvent.init(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) => state.maybeWhen(
        errorConnection: (message) =>
            TigrisMessage().showOverlay(context, message, false),
        init: (
          isPinCode,
          uint8list,
          userName,
          agencyId,
          navigateToPage,
          notification,
          notificationMessagesDataModel,
          infoDataModel,
        ) {
          if (navigateToPage) {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => ChatScreen(
                  agencyId: agencyId,
                ),
              ),
            );

            context.read<ChatBloc>().add(
                  ChatEvent.updateUnreadMessage(
                    agencyId: agencyId,
                  ),
                );
          }
          if (notification) {
            context.read<HomeBloc>().add(
                  HomeEvent.notification(
                    notification: false,
                    unreadChatMessages: true,
                    agencyId: agencyId,
                  ),
                );
          }

          return null;
        },
        logout: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => LoginScreen(),
            ),
          );
          return null;
        },
        loading: () {
          return null;
        },
        orElse: () {
          return null;
        },
      ),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.maybeMap(
            init: (initState) {
              return WillPopScope(
                onWillPop: () async {
                  widget.numberPage(0);
                  return false;
                },
                child: Scaffold(
                  body: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      ListTile(
                        leading: Text(
                          'profile_screen.name_page'.tr(),
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        trailing: GestureDetector(
                          onTap: () {
                            showModalBottomSheet<void>(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) => const SettingsModalWindow(),
                            );
                          },
                          child: const TigrisImage(
                            image: TigrisImages.settings,
                            color: Colors.black,
                            width: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          if (initState.uint8list.isNotEmpty) {
                            return CircleAvatar(
                              radius: 90,
                              backgroundColor: TigrisColor.white,
                              child: ClipOval(
                                child: Image.memory(
                                  initState.uint8list,
                                  width: 180,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          } else {
                            return CircleAvatar(
                              radius: 90,
                              backgroundColor: TigrisColor.white,
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/profile-user-image.png',
                                  width: 180,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        initState.userName,
                        style: Theme.of(context).textTheme.labelMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          16,
                        ),
                        child: Text(
                          'profile_screen.notifications'.tr(),
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                      ShadowBoxTigris(
                        listEmpty: initState
                            .notificationMessagesDataModel.dataModel.isEmpty,
                        title: 'profile_screen.message_empty_list'.tr(),
                        widget: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: initState
                                .notificationMessagesDataModel.dataModel.length,
                            itemBuilder: (context, index) {
                              return TigrisListItem(
                                isShowIndicator: true,
                                updateData: () {
                                  if (initState.notificationMessagesDataModel
                                          .dataModel[index].messageType ==
                                      'New chat messages') {
                                    context.read<ProfileBloc>().add(
                                          ProfileEvent.deleteMessageId(
                                            'New chat messages',
                                            initState
                                                .notificationMessagesDataModel
                                                .dataModel[index]
                                                .id,
                                          ),
                                        );
                                  } else {
                                    TigrisDialog.selectDialog(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      context: context,
                                      widget: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                            left: 15.0,
                                            right: 15,
                                          ),
                                          child: Text(
                                            initState
                                                .notificationMessagesDataModel
                                                .dataModel[index]
                                                .title,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall
                                                ?.copyWith(
                                                  color: TigrisColor
                                                      .blackOpacity100,
                                                ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ],
                                      button: Container(
                                        margin: const EdgeInsets.only(
                                          top: 8,
                                          left: 25,
                                          right: 25,
                                          bottom: 12,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                'button_cancel'.tr(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall,
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  context
                                                      .read<ProfileBloc>()
                                                      .add(
                                                        ProfileEvent
                                                            .deleteMessageId(
                                                          '',
                                                          initState
                                                              .notificationMessagesDataModel
                                                              .dataModel[index]
                                                              .id,
                                                        ),
                                                      );
                                                });

                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                'profile_screen.notification_dialog_ok'
                                                    .tr(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      height: 360,
                                      width: 300,
                                    );
                                  }
                                },
                                leftImage: initState.uint8list,
                                title: initState.notificationMessagesDataModel
                                            .dataModel[index].messageType ==
                                        'New chat messages'
                                    ? '${initState.notificationMessagesDataModel.dataModel[index].messageType} (${initState.notificationMessagesDataModel.dataModel[index].count})'
                                    : initState.notificationMessagesDataModel
                                        .dataModel[index].title,
                                bodyTitle: initState
                                    .notificationMessagesDataModel
                                    .dataModel[index]
                                    .orgName,
                                isLastItem: initState
                                        .notificationMessagesDataModel
                                        .dataModel
                                        .length ==
                                    index + 1,
                                image: initState.notificationMessagesDataModel
                                    .dataModel[index].orgLogo,
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              );
            },
            loading: (_) => const Center(child: TigrisProgressIndicator()),
            orElse: () => nil,
          );
        },
      ),
    );
  }
}
