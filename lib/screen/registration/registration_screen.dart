import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:tigris/screen/registration/registration_screen_user_info.dart';
import 'package:ui_kit/ui_kit.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _email = TextEditingController();

  @override
  void initState() {
    context.read<RegistrationBloc>().add(
          RegistrationEvent.updateInformation(),
        );
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: BlocListener<RegistrationBloc, RegistrationState>(
        listener: (context, state) => state.maybeMap(
          error: (response) {
            TigrisMessage().showOverlay(context, response.message, false);

            if (response.page == 'emailPage') {
              _email.text = _email.text.trim();
            }
            return null;
          },
          fieldValues: (value) {
            setState(() {
              _email.text = value.email;
            });
            return nil;
          },
          orElse: () {
            return null;
          },
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              SizedBox(height: height * .17),
              const TigrisImage(
                image: TigrisImages.logo,
                height: 70.0,
              ),
              SizedBox(height: height * .2),
              TigrisTextField(
                onSubmitted: (_) => {},
                controller: _email,
                title: 'registration_screen.email_adress'.tr(),
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: height * .3),
              TigrisButton.secondary(
                text: 'registration_screen.next_step'.tr(),
                onPressed: () {
                  context.read<RegistrationBloc>().add(
                        RegistrationEvent.enteredEmail(
                          email: _email.text.trim(),
                        ),
                      );
                  if (_email.text.trim().isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) =>
                            const RegistrationScreenUserInfo(),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
