import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class PushNotificationManager extends StatefulWidget {
  final void Function(String)? openChat;
  final VoidCallback? openProfile;
  final Widget child;

  const PushNotificationManager({
    required this.child,
    this.openChat,
    this.openProfile,
    Key? key,
  }) : super(key: key);

  @override
  _PushNotificationManagerState createState() =>
      _PushNotificationManagerState();
}

class _PushNotificationManagerState extends State<PushNotificationManager> {
  Future<void> setNotifications() async {
    final RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    FirebaseMessaging.instance;
    FirebaseMessaging.onMessage.listen((event) {
      log('message recieved');
      log('${event.notification!.body}');
    });
    if (initialMessage != null) {
      await openMessage(initialMessage);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(openMessage);
    FirebaseMessaging.onBackgroundMessage(messageHandler);
  }

  Future<void> messageHandler(RemoteMessage message) async {
    log('${message.notification!.body}');
  }

  Future<void> openMessage(RemoteMessage message) async {
    if (message.data['tag'] == 'message') {
      widget.openChat?.call(message.data['agencyId']);
    } else {
      widget.openProfile?.call();
    }
    log('${message.data['tag']}');
    log('Open message');
  }

  @override
  void initState() {
    super.initState();
    setNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
