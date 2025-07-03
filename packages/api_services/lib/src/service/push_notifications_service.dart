import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationsService {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> setNotifications() async {
    final RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    FirebaseMessaging.instance;
    FirebaseMessaging.onMessage.listen((event) {});
    if (initialMessage != null) {
      await openMessage(initialMessage);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(openMessage);
    FirebaseMessaging.onBackgroundMessage(messageHandler);
  }

  Future<String?> getToken() async {
    return _firebaseMessaging.getToken();
  }

  Future<void> deleteToken() async {
    return _firebaseMessaging.deleteToken();
  }
}

Future<void> messageHandler(RemoteMessage message) async {}

Future<void> openMessage(RemoteMessage message) async {}
