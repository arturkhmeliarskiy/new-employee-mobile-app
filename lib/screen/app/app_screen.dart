import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:tigris/screen/initial/initial_screen.dart';
import 'package:tigris/tigris_navigation_bar/tigris_navigation_bar.dart';
import 'package:ui_kit/ui_kit.dart';

class AppScreen extends StatelessWidget {
  final String stateScreen;
  final String agencyId;

  const AppScreen({
    Key? key,
    this.stateScreen = '',
    this.agencyId = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) => state.maybeWhen(
        appInProgress: () {
          return LoadingDialog.show(context);
        },
        errorConnection: (response) {
          return TigrisMessage().showOverlay(context, response, false);
        },
        notRegistered: (_, __) => LoadingDialog.close(),
        preloadDataCompleted: (
          isAuthed,
          isPinCode,
          languageTag,
          userName,
          userImage,
          newsList,
          workInfo,
          message,
        ) {
          LoadingDialog.close();
          if (message.isNotEmpty) {
            TigrisMessage().showOverlay(context, message, false);
          }
          if (isAuthed) {
            context.setLocale(
              Locale(languageTag),
            );
          }
          isAuthed
              ? isPinCode
                  ? Navigator.of(context).pushNamedAndRemoveUntil(
                      '/pinCode',
                      (route) => false,
                      arguments: {
                        'route': stateScreen,
                        'agencyId': agencyId,
                      },
                    )
                  : stateScreen == '/chat'
                      ? Navigator.of(context).pushNamedAndRemoveUntil(
                          '/chat',
                          (route) => false,
                          arguments: {
                            'agencyId': agencyId,
                            'pushHomeScreen': true,
                          },
                        )
                      : Navigator.of(context).pushNamedAndRemoveUntil(
                          '/tigrisNavigationBar',
                          (route) => false,
                          arguments: {
                            'selectIndex':
                                stateScreen == '/tigrisNavigationBar' ? 3 : 0,
                          },
                        )
              : Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const InitialScreen(),
                  ),
                );

          return null;
        },
        orElse: () {
          return null;
        },
      ),
      child: BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) {
          bool selectStete = true;
          current.maybeMap(
            errorConnection: (_) {
              selectStete = false;
            },
            orElse: () => null,
          );
          return selectStete;
        },
        builder: (context, state) {
          return state.maybeMap(
            init: (_) {
              return Container(
                color: TigrisColor.greenOpacity100,
              );
            },
            appInProgress: (_) {
              return Container(
                color: TigrisColor.white,
                child: Container(
                  color: TigrisColor.greenOpacity20,
                ),
              );
            },
            activeProtection: (_) => nil,
            preloadDataCompleted: (preloadDataState) {
              return Container(
                color: TigrisColor.white,
                child: Container(
                  color: TigrisColor.greenOpacity20,
                ),
              );
            },
            notRegistered: (stateNotRegitered) {
              return const TigrisNavigationBar();
            },
            orElse: () => nil,
          );
        },
      ),
    );
  }
}
