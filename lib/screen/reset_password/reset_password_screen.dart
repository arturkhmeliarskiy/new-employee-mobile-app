import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:open_mail_app/open_mail_app.dart';
import 'package:ui_kit/ui_kit.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repeatPassword = TextEditingController();
  Color colorBackGround = TigrisColor.greenOpacity20;

  @override
  Widget build(BuildContext context) {
    return LifeCycleManager(
      resumed: () => context
          .read<ResetPasswordBloc>()
          .add(ResetPasswordEvent.getPasswordResetLink()),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.95,
        decoration: const BoxDecoration(
          color: TigrisColor.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: Scaffold(
            backgroundColor: colorBackGround,
            resizeToAvoidBottomInset: true,
            body: SingleChildScrollView(
              child: BlocListener<ResetPasswordBloc, ResetPasswordState>(
                listener: (context, state) => state.maybeMap(
                  loading: (_) => LoadingDialog.show(context),
                  messageSend: (_) => LoadingDialog.close(),
                  error: (response) {
                    LoadingDialog.close();
                    TigrisMessage().showOverlay(
                      context,
                      response.message.toString(),
                      false,
                    );

                    return null;
                  },
                  success: (response) {
                    context.read<LoginBloc>().add(
                          LoginEvent.logIn(
                            response.email.toString(),
                            response.password.toString(),
                          ),
                        );
                    Navigator.pop(context);
                    return null;
                  },
                  getPasswordResetLink: (_) {
                    setState(() {
                      colorBackGround = TigrisColor.white;
                    });
                    return null;
                  },
                  orElse: () {
                    return null;
                  },
                ),
                child: BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      getPasswordResetLink: (response) =>
                          _inputNewPassword(response.email.toString()),
                      messageSend: (_) => _mesageSend(),
                      openResetPasswordScreen: (_) =>
                          _openResetPasswordScreen(),
                      orElse: () => nil,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showNoMailAppsDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'reset_password_screen.show_no_mail_apps_dialog.title'.tr(),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          content: Text(
            'reset_password_screen.show_no_mail_apps_dialog.content'.tr(),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TigrisButton.primary(
                text: 'reset_password_screen.show_no_mail_apps_dialog.ok'.tr(),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        );
      },
    );
  }

  Widget _openResetPasswordScreen() {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const TigrisButtonBack(
          backGroundColor: Colors.transparent,
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(
                height: height * .13,
              ),
              Text(
                'reset_password_screen.name_page'.tr(),
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'reset_password_screen.user_instruction_message'.tr(),
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              TigrisTextField(
                greenBackGround: true,
                onSubmitted: (_) => {},
                controller: _email,
                title: 'reset_password_screen.email_textfield_hint'.tr(),
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              TigrisButton.primary(
                text: 'reset_password_screen.button_send'.tr(),
                onPressed: () => context.read<ResetPasswordBloc>().add(
                      ResetPasswordEvent.sendRecoveryInstructions(
                        email: _email.text,
                      ),
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _mesageSend() {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          SizedBox(
            height: height * .12,
          ),
          Stack(
            children: [
              SizedBox(
                height: 130,
                child: TigrisImage(
                  image: TigrisImages.inbox,
                  color: TigrisColor.blackOpacity100,
                  width: 74.0,
                ),
              ),
              Positioned(
                left: 18,
                right: 18,
                bottom: 70,
                top: 10,
                child: Container(
                  color: TigrisColor.white,
                ),
              ),
              Positioned(
                left: 18,
                right: 18,
                bottom: 70,
                top: 10,
                child: Container(
                  color: TigrisColor.greenOpacity20,
                ),
              ),
              Positioned(
                left: 10,
                right: 10,
                bottom: 67,
                child: TigrisImage(
                  image: TigrisImages.fileText,
                  color: TigrisColor.greenOpacity100,
                  width: 47.0,
                  height: 59,
                ),
              ),
            ],
          ),
          Text(
            'reset_password_screen.check_your_mail'.tr(),
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'reset_password_screen.user_instruction_message2'.tr(),
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          TigrisButton.primary(
            text: 'reset_password_screen.button_open_mail_app'.tr(),
            onPressed: () async {
              final result = await OpenMailApp.openMailApp();

              if (result.didOpen && result.canOpen) {
                showNoMailAppsDialog(context);
              }
            },
          ),
          const SizedBox(
            height: 24,
          ),
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Text(
              'reset_password_screen.return_to_login'.tr(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: height * .19,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'reset_password_screen.bottom_text'.tr(),
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Mont',
                    fontWeight: FontWeight.bold,
                    color: TigrisColor.blackOpacity100,
                  ),
                ),
                TextSpan(
                  text: 'reset_password_screen.another_mail_adress'.tr(),
                  style: TextStyle(
                    color: TigrisColor.blueOpacity100,
                    fontSize: 14,
                    fontFamily: 'Mont',
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.read<ResetPasswordBloc>().add(
                            ResetPasswordEvent.openResetPasswordScreen(),
                          );
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _inputNewPassword(String email) {
    final height = MediaQuery.of(context).size.height;
    final _email = TextEditingController();
    _email.text = email;
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          SizedBox(
            height: height * .12,
          ),
          const TigrisImage(
            image: TigrisImages.logo,
            height: 70.0,
          ),
          SizedBox(
            height: height * .1,
          ),
          TigrisTextField(
            topTip: true,
            controller: _email,
            onSubmitted: (_) => {},
            title: 'reset_password_screen.username'.tr(),
            enabled: false,
          ),
          const SizedBox(
            height: 10,
          ),
          TigrisTextField(
            obscureText: true,
            onSubmitted: (_) => {},
            controller: _password,
            title: 'reset_password_screen.password'.tr(),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(
            height: 10,
          ),
          TigrisTextField(
            obscureText: true,
            onSubmitted: (_) => {},
            controller: _repeatPassword,
            title: 'reset_password_screen.repeat_password'.tr(),
          ),
          SizedBox(
            height: height * .2,
          ),
          TigrisButton.primary(
            text: 'reset_password_screen.save_new_password'.tr(),
            onPressed: () {
              context.read<ResetPasswordBloc>().add(
                    ResetPasswordEvent.saveNewPassword(
                      password: _password.text.toString(),
                      repeatPassword: _repeatPassword.text.toString(),
                    ),
                  );
            },
          ),
        ],
      ),
    );
  }
}
