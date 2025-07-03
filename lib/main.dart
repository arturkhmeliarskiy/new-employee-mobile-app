import 'dart:async';

import 'package:api_services/api_services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tigris/app.dart';
import 'package:tigris/bootstraper.dart';
import 'package:ui_kit/ui_kit.dart';

Future<void> mainCommon() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      await EasyLocalization.ensureInitialized();

      await setupIoc();

      await PushNotificationsService().setNotifications();

      runApp(
        EasyLocalization(
          supportedLocales: const [
            Locale('en'),
            Locale('de'),
            Locale('nl'),
            Locale('pl'),
            Locale('pt'),
            Locale('ro'),
          ],
          path: 'assets/languages',
          fallbackLocale: const Locale('en'),
          child: const App(),
        ),
      );
    },
    (error, stack) async {
      LoadingDialog.close();

      final sendError = GetIt.instance.get<SendErrorInformationService>();
      await sendError.putSendError(error.toString(), stack.toString());
    },
  );
}
