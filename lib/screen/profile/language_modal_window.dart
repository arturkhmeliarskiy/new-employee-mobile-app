import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class LanguageModalWindow extends StatefulWidget {
  const LanguageModalWindow({
    Key? key,
  }) : super(key: key);

  @override
  State<LanguageModalWindow> createState() => _LanguageModalWindowWindowState();
}

class _LanguageModalWindowWindowState extends State<LanguageModalWindow> {
  String language = '';

  @override
  Widget build(BuildContext context) {
    return BlocListener<LanguageBloc, LanguageState>(
      listener: (context, state) => state.maybeMap(
        loading: (_) => LoadingDialog.show(context),
        changeTheLanguage: (response) async {
          if (language.isNotEmpty) {
            LoadingDialog.close();
            await Future<void>.delayed(const Duration(milliseconds: 300));
            TigrisMessage().showOverlay(
              context,
              'language_modal_window.message_successfully_saved'.tr(),
              true,
            );
          }
          return null;
        },
        error: (response) {
          LoadingDialog.close();
          TigrisMessage().showOverlay(context, response.message, false);

          return null;
        },
        orElse: () {
          return null;
        },
      ),
      child: Container(
        margin: MediaQuery.of(context).viewInsets,
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
            const SizedBox(
              child: TigrisButtonBack(),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'language'.tr(),
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            BlocBuilder<LanguageBloc, LanguageState>(
              builder: (context, state) {
                return state.maybeMap(
                  loading: (value) => const SizedBox(),
                  changeTheLanguage: (response) {
                    context.setLocale(
                      Locale(response.languageTag.toString()),
                    );
                    language = TigrisMenuOption()
                        .languages
                        .firstWhere(
                          (element) => element['language'] == response.language,
                        )['label']
                        .toString();

                    return ShadowBoxTigris(
                      widget: [
                        TigrisDropdownMenu(
                          items: TigrisMenuOption().languages,
                          nameItem: language.toString(),
                          onSelected: (type) {
                            if (language != type) {
                              context.read<LanguageBloc>().add(
                                    LanguageEvent.changeTheLanguage(
                                      type,
                                    ),
                                  );
                            }
                          },
                        ),
                      ],
                    );
                  },
                  error: (_) {
                    return ShadowBoxTigris(
                      widget: [
                        TigrisDropdownMenu(
                          items: TigrisMenuOption().languages,
                          nameItem: language.toString(),
                          onSelected: (type) {
                            if (language != type) {
                              context.read<LanguageBloc>().add(
                                    LanguageEvent.changeTheLanguage(
                                      type,
                                    ),
                                  );
                            }
                          },
                        ),
                      ],
                    );
                  },
                  orElse: () => nil,
                );
              },
            ),
            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
