import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

class RepeatRegistrationPinCodeScreen extends StatefulWidget {
  final String pinCode;

  const RepeatRegistrationPinCodeScreen({
    required this.pinCode,
    Key? key,
  }) : super(key: key);

  @override
  State<RepeatRegistrationPinCodeScreen> createState() =>
      _RepeatRegistrationPinCodeScreenState();
}

class _RepeatRegistrationPinCodeScreenState
    extends State<RepeatRegistrationPinCodeScreen> {
  TextEditingController pin1 = TextEditingController();
  TextEditingController pin2 = TextEditingController();
  TextEditingController pin3 = TextEditingController();
  TextEditingController pin4 = TextEditingController();
  TextEditingController pin5 = TextEditingController();
  @override
  void initState() {
    super.initState();
    context.read<RepeatRegPinCodeBloc>().add(
          const RepeatRegPinCodeEvent.init(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RepeatRegPinCodeBloc, RepeatRegPinCodeState>(
      listener: (context, state) => state.maybeWhen(
        successRepeatPinCode: () =>
            Navigator.of(context).pushNamedAndRemoveUntil(
          '/tigrisNavigationBar',
          (route) => false,
        ),
        failRepeatPinCode: () =>
            TigrisMessage().showOverlay(context, 'Invalid PIN code', false),
        orElse: () {
          return null;
        },
      ),
      child: Scaffold(
        body: Center(
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
                    'Repeat pin',
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                TigrisPinCodeInput(
                  function: (e) {
                    context.read<RepeatRegPinCodeBloc>().add(
                          RepeatRegPinCodeEvent.repeatRegPinCodeRequest(
                            widget.pinCode,
                            e,
                          ),
                        );
                  },
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
