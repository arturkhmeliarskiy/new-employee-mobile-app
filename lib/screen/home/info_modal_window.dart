import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoModalWindow extends StatelessWidget {
  final String title;
  final String customTextField;
  final String customContactTextField;
  final String mainNumber;
  final String mainEmail;
  final String yourContactNumber;
  final String yourContactEmail;
  final List<Widget> widget;
  final List<Widget> rightIcons;

  const InfoModalWindow({
    required this.widget,
    required this.rightIcons,
    this.title = '',
    this.customTextField = '',
    this.customContactTextField = '',
    this.mainNumber = '',
    this.mainEmail = '',
    this.yourContactNumber = '',
    this.yourContactEmail = '',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * .6;

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
            height: height * .13,
            child: Row(
              children: [
                TigrisButtonBack(rightIcons: rightIcons),
              ],
            ),
          ),
          SizedBox(
            height: height * .87,
            child: ListView(
              children: [
                SizedBox(
                  height: widget.isNotEmpty ? height * .89 : 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: widget,
                  ),
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    if (widget.isEmpty) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10.0,
                              left: 45,
                              right: 45,
                            ),
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 15,
                              left: 65,
                              right: 65,
                            ),
                            child: Text(
                              customTextField.isNotEmpty
                                  ? customTextField
                                  : 'agency_related_info_screen.not_specified'
                                      .tr(),
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    color: TigrisColor.blackOpacity100,
                                  ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              if (mainNumber.isNotEmpty) {
                                final Uri mainNumberUri = Uri(
                                  scheme: 'tel',
                                  path: mainNumber,
                                );

                                await launchUrl(
                                  mainNumberUri,
                                  mode:
                                      LaunchMode.externalNonBrowserApplication,
                                );
                              }
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 15,
                              ),
                              child: Text(
                                mainNumber.isNotEmpty
                                    ? mainNumber
                                    : 'agency_related_info_screen.not_specified'
                                        .tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              if (mainEmail.isNotEmpty) {
                                final Uri mainEmailUri = Uri(
                                  scheme: 'mailto',
                                  path: mainEmail,
                                );
                                try {
                                  await launchUrl(mainEmailUri);
                                } catch (_) {}
                              }
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                              ),
                              child: Text(
                                mainEmail.isNotEmpty
                                    ? mainEmail
                                    : 'agency_related_info_screen.not_specified'
                                        .tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              if (customContactTextField.isNotEmpty) {
                                return Container(
                                  margin: const EdgeInsets.only(
                                    top: 35,
                                    left: 65,
                                    right: 65,
                                  ),
                                  child: Text(
                                    customContactTextField,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                          color: TigrisColor.blackOpacity100,
                                        ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                );
                              } else {
                                return const SizedBox();
                              }
                            },
                          ),
                          InkWell(
                            onTap: () async {
                              if (yourContactNumber.isNotEmpty) {
                                final Uri yourContactNumberUri = Uri(
                                  scheme: 'tel',
                                  path: yourContactNumber,
                                );

                                await launchUrl(yourContactNumberUri);
                              }
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 15,
                              ),
                              child: Text(
                                yourContactNumber.isNotEmpty
                                    ? yourContactNumber
                                    : 'agency_related_info_screen.not_specified'
                                        .tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              if (yourContactEmail.isNotEmpty) {
                                final Uri yourContactEmailUri = Uri(
                                  scheme: 'mailto',
                                  path: yourContactEmail,
                                );
                                try {
                                  await launchUrl(yourContactEmailUri);
                                } catch (_) {}
                              }
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                              ),
                              child: Text(
                                yourContactEmail.isNotEmpty
                                    ? yourContactEmail
                                    : 'agency_related_info_screen.not_specified'
                                        .tr(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
