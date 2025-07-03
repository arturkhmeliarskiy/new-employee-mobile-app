import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nil/nil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tigris/screen/pin_code/registration_pin_code_screen.dart';
import 'package:ui_kit/ui_kit.dart';

class PinCodeModalWindow extends StatefulWidget {
  const PinCodeModalWindow({
    Key? key,
  }) : super(key: key);

  @override
  State<PinCodeModalWindow> createState() => _PinCodeModalWindowState();
}

class _PinCodeModalWindowState extends State<PinCodeModalWindow> {
  bool inputActiveProfile = false;
  bool inputActiveContact = false;
  @override
  void initState() {
    super.initState();
    final getIt = GetIt.instance.get<SharedPreferences>();
    final isPinCode = getIt.getBool('switch_pin_code') ?? false;
    context.read<SecurityBloc>().add(
          SecurityEvent.updateIsPinCode(isPinCode),
        );
  }

  TextEditingController changeUserName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
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
            'pin_code_modal_window.name_page'.tr(),
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          ShadowBoxTigris(
            widget: [
              ButtonIconTigris(
                action: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const RegistrationPinCodeScreen(),
                    ),
                  );
                },
                bottomMargin: true,
                title: 'pin_code_modal_window.create_pincode'.tr(),
              ),
              BlocBuilder<SecurityBloc, SecurityState>(
                builder: (context, state) {
                  return state.maybeMap(
                    init: (initState) {
                      return SizedBox(
                        child: initState.isPinCode
                            ? ListTile(
                                leading: Text(
                                  'pin_code_modal_window.switch_pin_code'.tr(),
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                                trailing: Switch(
                                  value: initState.isPinCode,
                                  onChanged: (value) {
                                    setState(() {
                                      context.read<SecurityBloc>().add(
                                            SecurityEvent.updateIsPinCode(
                                              value,
                                            ),
                                          );
                                    });
                                  },
                                ),
                              )
                            : const SizedBox(),
                      );
                    },
                    orElse: () => nil,
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 35),
        ],
      ),
    );
  }
}
