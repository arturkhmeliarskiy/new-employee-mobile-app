import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:tigris/screen/login/login_screen.dart';
import 'package:ui_kit/ui_kit.dart';

class PinCodeScreen extends StatefulWidget {
  final VoidCallback? popCallback;
  final String stateScreen;
  final String agencyId;

  const PinCodeScreen({
    Key? key,
    this.stateScreen = '',
    this.agencyId = '',
    this.popCallback,
  }) : super(key: key);
  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  bool isAuthenticating = true;
  String? stateScreen;
  String? agencyId;
  Map<String, dynamic> data = {'route': '/tigrisNavigationBar'};

  @override
  void didChangeDependencies() {
    if (widget.stateScreen != '/chat' &&
        widget.stateScreen != '/' &&
        widget.stateScreen != '/tigrisNavigationBar') {
      data = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    }

    if (isAuthenticating) {
      context.read<PinCodeBloc>().add(const PinCodeEvent.biometricRequest());
      isAuthenticating = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    stateScreen =
        widget.stateScreen != '/' ? widget.stateScreen : data['route'];
    agencyId = widget.agencyId.isNotEmpty ? widget.agencyId : data['agencyId'];
    final theme = Theme.of(context);

    return BlocListener<PinCodeBloc, PinCodeState>(
      listener: (context, state) => state.maybeWhen(
        successPinCode: () {
          if (widget.popCallback != null) {
            widget.popCallback?.call();
          } else {
            if (widget.stateScreen != '/tigrisNavigationBar') {
              Navigator.of(context).pushNamedAndRemoveUntil(
                widget.stateScreen == '/' ? '/tigrisNavigationBar' : '/chat',
                ModalRoute.withName('/tigrisNavigationBar'),
                arguments: widget.stateScreen == '/chat'
                    ? {
                        'agencyId': agencyId,
                        'pushHomeScreen': true,
                      }
                    : {},
              );
            } else {
              Navigator.pop(context);
            }
          }
          return null;
        },
        failPinCode: () => TigrisMessage()
            .showOverlay(context, 'pin_code_screen.fail_pin_code'.tr(), false),
        forgotPinCode: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => LoginScreen(),
            ),
          );
          return null;
        },
        init: () => nil,
        loading: () => nil,
        orElse: () {
          return null;
        },
      ),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: TigrisColor.white,
          body: Container(
            color: TigrisColor.greenOpacity20,
            alignment: Alignment.center,
            child: Container(
              height: height * 0.9,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Container(
                            alignment: Alignment.center,
                            child: const TigrisImage(
                              image: TigrisImages.logo,
                              height: 70.0,
                            ),
                          ),
                        ),
                        BlocBuilder<AppBloc, AppState>(
                          builder: (context, state) {
                            return state.maybeMap(
                              preloadDataCompleted: (initState) {
                                return Container(
                                  width: 240,
                                  height: 240,
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      LayoutBuilder(
                                        builder: (context, constraints) {
                                          if (initState.userImage.isNotEmpty) {
                                            return CircleAvatar(
                                              maxRadius: 50,
                                              backgroundColor:
                                                  TigrisColor.white,
                                              child: ClipOval(
                                                child: Image.memory(
                                                  initState.userImage,
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          } else {
                                            return CircleAvatar(
                                              radius: 50,
                                              backgroundColor:
                                                  TigrisColor.white,
                                              child: ClipOval(
                                                child: Image.asset(
                                                  'assets/images/profile-user-image.png',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                      SizedBox(
                                        child: Text(
                                          initState.userName,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ),
                                      TigrisPinCodeInput(
                                        function: (e) {
                                          context.read<PinCodeBloc>().add(
                                                PinCodeEvent.pinCodeRequest(e),
                                              );
                                        },
                                        greenBackGround: true,
                                      ),
                                      SizedBox(
                                        height: 30,
                                        child: GestureDetector(
                                          onTap: () {
                                            context.read<PinCodeBloc>().add(
                                                  const PinCodeEvent
                                                      .forgotPinCode(),
                                                );
                                          },
                                          child: Text(
                                            'pin_code_screen.forgot_pin'.tr(),
                                            style: theme.textTheme.labelLarge,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              orElse: () => nil,
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
