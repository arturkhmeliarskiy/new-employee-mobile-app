import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tigris/screen/reset_password/reset_password_screen.dart';
import 'package:ui_kit/ui_kit.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  final passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) => state.maybeMap(
        logInSuccess: (state) async {
          await Navigator.of(context).pushNamedAndRemoveUntil(
            '/',
            (route) => false,
          );

          return null;
        },
        logInFailure: (state) {
          TigrisMessage().showOverlay(context, state.model.message, false);
          LoadingDialog.close();
          return null;
        },
        logInInProgress: (_) => LoadingDialog.show(context),
        orElse: () {
          return null;
        },
      ),
      child: WillPopScope(
        onWillPop: () async => false,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              color: TigrisColor.greenOpacity20,
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                children: [
                  SizedBox(height: height * .2),
                  const TigrisImage(
                    image: TigrisImages.logo,
                    height: 70.0,
                  ),
                  SizedBox(height: height * .1),
                  TigrisTextField(
                    greenBackGround: true,
                    onSubmitted: (_) =>
                        FocusScope.of(context).requestFocus(passwordFocus),
                    controller: _loginController,
                    title: 'login_screen.username_textfield_hint'.tr(),
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 10.0),
                  TigrisTextField(
                    greenBackGround: true,
                    onSubmitted: (password) {
                      context.read<LoginBloc>().add(
                            LoginEvent.logIn(
                              _loginController.text,
                              password,
                            ),
                          );
                    },
                    obscureText: true,
                    controller: _passwordController,
                    title: 'login_screen.password_textfield_hint'.tr(),
                    focus: passwordFocus,
                  ),
                  const SizedBox(height: 10.0),
                  TigrisButton.text(
                    text: 'login_screen.forgot_password_button'.tr(),
                    onPressed: () {
                      showModalBottomSheet<void>(
                        backgroundColor: Colors.transparent,
                        context: context,
                        isScrollControlled: true,
                        builder: (ctx) => const ResetPasswordScreen(),
                      );
                    },
                  ),
                  SizedBox(
                    height: height * .18,
                  ),
                  TigrisButton.primary(
                    text: 'login_screen.bottom_button'.tr(),
                    onPressed: () => context.read<LoginBloc>().add(
                          LoginEvent.logIn(
                            _loginController.text,
                            _passwordController.text,
                          ),
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
