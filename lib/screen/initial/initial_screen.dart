import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tigris/screen/login/login_screen.dart';
import 'package:tigris/screen/registration/registration_screen.dart';
import 'package:ui_kit/ui_kit.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: TigrisColor.greenOpacity20,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: ListView(
              children: [
                SizedBox(height: height * .3),
                const TigrisImage(
                  image: TigrisImages.logo,
                  height: 70.0,
                ),
                SizedBox(height: height * .25),
                TigrisButton.primary(
                  text: 'initial_screen.login'.tr(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
                TigrisButton.secondary(
                  text: 'initial_screen.create_account'.tr(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const RegistrationScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
                TigrisButton.text(
                  text: 'initial_screen.skip'.tr(),
                  onPressed: () {
                    context.read<AppBloc>().add(
                          const AppEvent.notRegistered(),
                        );
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      '/',
                      (route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
