import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tigris/screen/profile/change_password_modal_window.dart';
import 'package:tigris/screen/profile/pin_code_modal_window.dart';
import 'package:ui_kit/ui_kit.dart';

class SecurityModalWindow extends StatelessWidget {
  const SecurityModalWindow({
    Key? key,
  }) : super(key: key);
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
            'settings_modal_window.security'.tr(),
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          ShadowBoxTigris(
            widget: [
              ButtonIconTigris(
                action: () async => showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => const PinCodeModalWindow(),
                ),
                bottomMargin: false,
                title: 'security_modal_window.change_pin_code'.tr(),
              ),
              ButtonIconTigris(
                action: () async => showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => const ChangePasswordModalWindow(),
                ),
                bottomMargin: true,
                title: 'security_modal_window.change_password'.tr(),
              ),
            ],
          ),
          const SizedBox(height: 35),
        ],
      ),
    );
  }
}
