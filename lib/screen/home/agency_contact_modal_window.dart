import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tigris/screen/chat/chat_screen.dart';
import 'package:tigris/screen/home/info_modal_window.dart';
import 'package:ui_kit/ui_kit.dart';

class AgencyContactModalWindow extends StatefulWidget {
  final String title;
  final String customTextField;
  final String mainNumber;
  final String mainEmail;
  final String agencyContactNumber;
  final String agencyContactEmail;
  final String agencyColor;
  final String orgLogo;
  final String orgName;
  final String agencyId;

  const AgencyContactModalWindow({
    this.title = '',
    this.customTextField = '',
    this.mainNumber = '',
    this.mainEmail = '',
    this.agencyContactNumber = '',
    this.agencyContactEmail = '',
    this.agencyColor = '',
    this.orgLogo = '',
    this.orgName = '',
    this.agencyId = '',
    Key? key,
  }) : super(key: key);

  @override
  State<AgencyContactModalWindow> createState() =>
      _AgencyContactModalWindowState();
}

class _AgencyContactModalWindowState extends State<AgencyContactModalWindow> {
  @override
  void initState() {
    super.initState();
    context.read<ChatBloc>().add(
          ChatEvent.checkChatGroups(
            widget.agencyId,
            widget.orgName,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: ListView(
        children: [
          GestureDetector(
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => ChatScreen(
                    agencyColor: widget.agencyColor,
                    agencyId: widget.agencyId,
                    orgLogo: widget.orgLogo,
                    orgName: widget.orgName,
                  ),
                ),
              );
            },
            child: ShadowBoxTigris(
              top: 29,
              mainAxisAlignment: MainAxisAlignment.center,
              widget: [
                SizedBox(
                  height: 64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'agency_contact_modal_window.chat'.tr(),
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: TigrisImage(
                          image: TigrisImages.messageCircle,
                          color: TigrisColor.blackOpacity100,
                          width: 25.0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              'agency_contact_modal_window.or'.tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => InfoModalWindow(
                  mainNumber: widget.agencyContactNumber,
                  title: widget.title,
                  widget: const [],
                  rightIcons: const [],
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                'show_contact_information'.tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
