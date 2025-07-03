import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tigris/screen/profile/agency_documents.dart';
import 'package:tigris/screen/profile/basic_information_modal_window.dart';
import 'package:tigris/screen/profile/language_modal_window.dart';
import 'package:tigris/screen/profile/my_documents_modal_window.dart';
import 'package:tigris/screen/profile/scurity_modal_window.dart';
import 'package:tigris/screen/profile/work_pereferences_modal_window.dart';
import 'package:ui_kit/ui_kit.dart';

class SettingsModalWindow extends StatelessWidget {
  const SettingsModalWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.95;
    return Container(
      height: height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: height * .08,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    const TigrisImage(
                      image: TigrisImages.chevronLeft,
                      color: TigrisColor.grey,
                      width: 25.0,
                    ),
                    Text(
                      'back_button_name'.tr(),
                      style: Theme.of(context).textTheme.headlineSmall,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * .92,
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'settings_modal_window.name_page'.tr(),
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'settings_modal_window.profile'.tr(),
                    style: Theme.of(context).textTheme.labelSmall,
                    textAlign: TextAlign.left,
                  ),
                ),
                ShadowBoxTigris(
                  widget: [
                    ButtonIconTigris(
                      bottomMargin: false,
                      title: 'settings_modal_window.basic_information'.tr(),
                      action: () async => showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) =>
                            const BasicInformationModalWindow(),
                      ),
                    ),
                    ButtonIconTigris(
                      bottomMargin: true,
                      title: 'settings_modal_window.work_preferences'.tr(),
                      action: () async => showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) =>
                            const WorkPereferencesModalWindow(),
                      ),
                    ),
                  ],
                ),
                ShadowBoxTigris(
                  updateData: () {},
                  top: 20,
                  widget: [
                    ButtonIconTigris(
                      bottomMargin: true,
                      title: 'settings_modal_window.security'.tr(),
                      action: () async => showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) => const SecurityModalWindow(),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'documents'.tr(),
                    style: Theme.of(context).textTheme.labelSmall,
                    textAlign: TextAlign.left,
                  ),
                ),
                ShadowBoxTigris(
                  widget: [
                    ButtonIconTigris(
                      bottomMargin: false,
                      title: 'settings_modal_window.my_documents'.tr(),
                      action: () async => showModalBottomSheet(
                        isScrollControlled: true,
                        useRootNavigator: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) => const MyDocumentsModalWindow(),
                      ),
                    ),
                    ButtonIconTigris(
                      bottomMargin: true,
                      title: 'settings_modal_window.agency_documents'.tr(),
                      action: () async => showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) =>
                            const AgencyDocumentsModalWindow(),
                      ),
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'settings_modal_window.preferences'.tr(),
                    style: Theme.of(context).textTheme.labelSmall,
                    textAlign: TextAlign.left,
                  ),
                ),
                ShadowBoxTigris(
                  widget: [
                    ButtonIconTigris(
                      bottomMargin: false,
                      title: 'language'.tr(),
                      action: () async => showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) => const LanguageModalWindow(),
                      ),
                    ),
                    ButtonIconTigris(
                      bottomMargin: true,
                      title: 'settings_modal_window.logout'.tr(),
                      action: () {
                        TigrisDialog.selectDialog(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          context: context,
                          widget: [
                            Text(
                              'settings_modal_window.logout'.tr(),
                              style: Theme.of(context).textTheme.labelSmall,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'settings_modal_window.ask_for_confirmation'.tr(),
                              style: Theme.of(context).textTheme.labelSmall,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                          button: Container(
                            margin: const EdgeInsets.only(
                              left: 25,
                              right: 25,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  child: Text(
                                    'button_cancel'.tr(),
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    context.read<ProfileBloc>().add(
                                          const ProfileEvent.logout(),
                                        );
                                  },
                                  child: Text(
                                    'home_screen.exit_app_dialog_ok'.tr(),
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          height: 100,
                          width: 360,
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
