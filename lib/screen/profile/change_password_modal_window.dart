import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

class ChangePasswordModalWindow extends StatefulWidget {
  const ChangePasswordModalWindow({
    Key? key,
  }) : super(key: key);

  @override
  State<ChangePasswordModalWindow> createState() =>
      _ChangePasswordModalWindowState();
}

class _ChangePasswordModalWindowState extends State<ChangePasswordModalWindow> {
  final oldPassword = TextEditingController();
  final newPassword = TextEditingController();
  final confirmPassword = TextEditingController();

  @override
  void dispose() {
    oldPassword.dispose();
    newPassword.dispose();
    confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SecurityBloc, SecurityState>(
      listener: (context, state) => state.maybeMap(
        savePasswordSuccess: (info) {
          LoadingDialog.close();
          TigrisMessage().showOverlay(
            context,
            'password_modal_window.message_successfully_saved'.tr(),
            true,
          );

          return null;
        },
        savePasswordFailure: (info) {
          LoadingDialog.close();

          TigrisMessage().showOverlay(context, info.model.message, false);
          return null;
        },
        savePasswordInProgress: (_) => LoadingDialog.show(context),
        orElse: () {
          return null;
        },
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.95,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ListView(
          children: [
            const TigrisButtonBack(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'security_modal_window.change_password'.tr(),
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            ShadowBoxTigris(
              updateData: () {
                context.read<SecurityBloc>().add(
                      SecurityEvent.updateUserPassword(
                        oldPassword.text,
                        newPassword.text,
                        confirmPassword.text,
                      ),
                    );
              },
              resetData: () {
                setState(() {
                  oldPassword.text = '';
                  newPassword.text = '';
                  confirmPassword.text = '';
                });
              },
              focus: true,
              widget: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                    bottom: 15,
                  ),
                  child: TigrisTextField(
                    topTip: true,
                    onSubmitted: (_) => {},
                    controller: oldPassword,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    title: 'password_modal_window.hint_old_password'.tr(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 15,
                  ),
                  child: TigrisTextField(
                    topTip: true,
                    onSubmitted: (_) => {},
                    controller: newPassword,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    title: 'password_modal_window.hint_new_password'.tr(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 15,
                  ),
                  child: TigrisTextField(
                    topTip: true,
                    onSubmitted: (_) => {},
                    controller: confirmPassword,
                    obscureText: true,
                    title: 'password_modal_window.hint_confirm_password'.tr(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
