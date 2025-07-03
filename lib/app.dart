import 'dart:io';

import 'package:app_logger/app_logger.dart';
import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tigris/screen/app/app_screen.dart';
import 'package:tigris/screen/chat/chat_screen.dart';
import 'package:tigris/screen/pin_code/pin_code_screen.dart';
import 'package:tigris/screen/profile/profile_screen.dart';
import 'package:tigris/tigris_navigation_bar/tigris_navigation_bar.dart';
import 'package:ui_kit/ui_kit.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final GlobalKey<NavigatorState> myNavigatorKey = GlobalKey<NavigatorState>();
  DateTime lastTime = DateTime.now();
  String agencyID = '';
  String stateScreen = '/';
  bool isBiometric = false;
  int timeDifference = 0;
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    final sharePreferences = GetIt.instance.get<SharedPreferences>();
    final isPinCode =
        sharePreferences.getBool(SharedPrefKeys.switchPinCodeKey) ?? false;
    final updateDataService = GetIt.instance.get<UpdateDataService>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              GetIt.I.get<AppBloc>()..add(const AppEvent.preloadData()),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<LoginBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<HomeBloc>()
            ..add(
              const HomeEvent.notification(
                notification: true,
                unreadChatMessages: true,
                agencyId: '',
              ),
            ),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<ChatBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<AgencyRelatedInfoBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<SubmittedTimesheetBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<PinCodeBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<RegPinCodeBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<RepeatRegPinCodeBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<ProfileBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<MyDocumentsBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<BasicInformationBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<WorkPreferencesBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<SecurityBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<AgencyDocumentsBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<PayslipsBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              GetIt.I.get<LanguageBloc>()..add(LanguageEvent.loadingLanguage()),
        ),
        BlocProvider(create: (context) => GetIt.I.get<ResetPasswordBloc>()),
        BlocProvider(create: (context) => GetIt.I.get<RegistrationBloc>()),
        BlocProvider(create: (context) => GetIt.I.get<TigrisFilePreviewBloc>()),
        BlocProvider(
          create: (context) => GetIt.I.get<JobApplicationFormBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<CalendarBloc>(),
        ),
      ],
      child: PushNotificationManager(
        openProfile: () {
          stateScreen = '/tigrisNavigationBar';
          selectIndex = 3;

          if (isPinCode == false && updateDataService.appLoaded) {
            myNavigatorKey.currentState?.pushNamedAndRemoveUntil(
              '/tigrisNavigationBar',
              (route) => false,
            );
          }
        },
        openChat: (
          agencyId,
        ) {
          agencyID = agencyId;

          stateScreen = '/chat';

          if (isPinCode == false && updateDataService.appLoaded) {
            myNavigatorKey.currentState?.pushNamedAndRemoveUntil(
              '/chat',
              (route) => false,
              arguments: {
                'agencyId': agencyId,
                'pushHomeScreen': true,
              },
            );
          }
        },
        child: LifeCycleManager(
          resumed: () {
            final getIt = GetIt.instance.get<SharedPreferences>();
            final isPostFile =
                GetIt.instance.get<ProfileRepository>().onPostFile;
            final isPinCode = getIt.getBool('switch_pin_code') ?? false;
            timeDifference = DateTime.now().difference(lastTime).inSeconds;
            lastTime = DateTime.now();
            loggerNoStack.i(
              timeDifference,
            );
            if (isPinCode == false) {
              stateScreen = '/tigrisNavigationBar';
            }

            if (timeDifference > 10 && isPinCode && isPostFile) {
              if (Platform.isIOS) {
                if (isBiometric) {
                  myNavigatorKey.currentState?.pushNamed(
                    '/pinCode',
                    arguments: {
                      'route': stateScreen,
                      'agencyId': agencyID,
                    },
                  );

                  timeDifference = 0;
                }
              } else {
                myNavigatorKey.currentState?.pushNamed(
                  '/pinCode',
                  arguments: {
                    'route': stateScreen,
                    'agencyId': agencyID,
                  },
                );
              }
              lastTime = DateTime.now().add(const Duration(hours: 1));
            }

            if (isPinCode) {
              isBiometric = !isBiometric;
            }
          },
          paused: () {
            stateScreen = '/tigrisNavigationBar';
            isBiometric = true;
            lastTime = DateTime.now();
          },
          child: MaterialApp(
            theme: AppTheme.light,
            navigatorKey: myNavigatorKey,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            initialRoute: '/',
            routes: {
              '/': (context) => AppScreen(
                    stateScreen: stateScreen,
                    agencyId: agencyID,
                  ),
              '/pinCode': (context) => PinCodeScreen(
                    stateScreen: stateScreen,
                    agencyId: agencyID,
                  ),
              '/chat': (context) => const ChatScreen(),
              '/profile': (context) => ProfileScreen(
                    numberPage: (_) {},
                  ),
              '/tigrisNavigationBar': (context) => TigrisNavigationBar(
                    selectIndex: selectIndex,
                  ),
            },
          ),
        ),
      ),
    );
  }
}
