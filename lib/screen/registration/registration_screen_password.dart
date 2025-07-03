import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:tigris/screen/app/app_screen.dart';
import 'package:ui_kit/ui_kit.dart';

class RegistrationScreenPassword extends StatefulWidget {
  const RegistrationScreenPassword({Key? key}) : super(key: key);

  @override
  State<RegistrationScreenPassword> createState() =>
      _RegistrationScreenPasswordState();
}

class _RegistrationScreenPasswordState
    extends State<RegistrationScreenPassword> {
  final _password = TextEditingController();
  final _repeatPassword = TextEditingController();

  @override
  void initState() {
    context.read<RegistrationBloc>().add(
          RegistrationEvent.updateInformation(),
        );
    super.initState();
  }

  @override
  void dispose() {
    _password.dispose();
    _repeatPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: BlocListener<RegistrationBloc, RegistrationState>(
        listener: (context, state) => state.maybeMap(
          loading: (_) => LoadingDialog.show(context),
          errorResponse: (response) {
            LoadingDialog.close();
            TigrisMessage().showOverlay(context, response.message, false);

            return null;
          },
          fieldValues: (value) {
            setState(() {
              _password.text = value.password;
              _repeatPassword.text = value.confirmedPassword;
            });
            return nil;
          },
          success: (response) {
            LoadingDialog.close();
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute<void>(
                builder: (context) => const AppScreen(),
              ),
              (route) => false,
            );
            context.read<LoginBloc>().add(
                  LoginEvent.logIn(
                    response.email,
                    response.password,
                  ),
                );

            return null;
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
              SizedBox(height: height * .1),
              BlocBuilder<RegistrationBloc, RegistrationState>(
                builder: (context, state) {
                  return state.maybeMap(
                    fieldValues: (value) {
                      return Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          border: Border.all(
                            color: TigrisColor.blackOpacity50,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'registration_screen.username'.tr(),
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                value.email,
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    orElse: () => nil,
                  );
                },
              ),
              const SizedBox(height: 10),
              TigrisTextField(
                obscureText: true,
                onSubmitted: (_) => {},
                controller: _password,
                title: 'registration_screen.password'.tr(),
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 10),
              TigrisTextField(
                obscureText: true,
                onSubmitted: (_) => {},
                controller: _repeatPassword,
                title: 'registration_screen.repeat_password'.tr(),
                textInputType: TextInputType.text,
              ),
              SizedBox(height: height * .18),
              TigrisButton.primary(
                text: 'registration_screen.create_account'.tr(),
                onPressed: () {
                  context.read<RegistrationBloc>().add(
                        RegistrationEvent.enteredPassword(
                          password: _password.text,
                          confirmedPassword: _repeatPassword.text,
                        ),
                      );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
