import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tigris/screen/pin_code/repeat_registration_pin_code.dart';
import 'package:tigris/tigris_navigation_bar/tigris_navigation_bar.dart';
import 'package:ui_kit/ui_kit.dart';

class RegistrationPinCodeScreen extends StatefulWidget {
  const RegistrationPinCodeScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationPinCodeScreen> createState() =>
      _RegistrationPinCodeScreenState();
}

class _RegistrationPinCodeScreenState extends State<RegistrationPinCodeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<RegPinCodeBloc>().add(
          const RegPinCodeEvent.init(),
        );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<RegPinCodeBloc, RegPinCodeState>(
      listener: (context, state) => state.maybeWhen(
        successRegPinCode: (result) => Navigator.pushReplacement(
          context,
          MaterialPageRoute<void>(
            builder: (context) => RepeatRegistrationPinCodeScreen(
              pinCode: result,
            ),
          ),
        ),
        orElse: () {
          return null;
        },
      ),
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Container(
            width: 240,
            height: 220,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  height: 65,
                  child: Text(
                    'pin_code_modal_window.registration_pin_code_screen.title'
                        .tr(),
                    style: theme.textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                TigrisPinCodeInput(
                  function: (e) {
                    context.read<RegPinCodeBloc>().add(
                          RegPinCodeEvent.regPinCodeRequest(
                            e,
                          ),
                        );
                  },
                ),
                SizedBox(
                  height: 30,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const TigrisNavigationBar(),
                        ),
                      );
                    },
                    child: Text(
                      'pin_code_modal_window.registration_pin_code_screen.skip'
                          .tr(),
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
