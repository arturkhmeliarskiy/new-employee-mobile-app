import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tigris/screen/timesheet/select_project_hours_modal_window.dart';
import 'package:ui_kit/ui_kit.dart';

class RegistrationHoursSelection extends StatelessWidget {
  final bool isActiveHoursTimesheetButton;
  final bool isActiveStartStopTimesheetButoon;

  const RegistrationHoursSelection({
    Key? key,
    this.isActiveHoursTimesheetButton = false,
    this.isActiveStartStopTimesheetButoon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: MediaQuery.of(context).viewInsets,
      height: height * 0.40,
      decoration: const BoxDecoration(
        color: TigrisColor.white,
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
          Container(
            margin: const EdgeInsets.only(
              top: 10.0,
              left: 45,
              right: 45,
            ),
            child: Text(
              'hours'.tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (isActiveHoursTimesheetButton) {
                return ButtonIconTigris(
                  bottomMargin: false,
                  shadow: true,
                  marginLeft: 30,
                  marginRight: 30,
                  title: 'regestration_hours_selection.standart_hours'.tr(),
                  action: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                    // context.read<TimesheetBloc>().add(
                    //       const TimesheetEvent.addCard(
                    //         'Hours',
                    //         '',
                    //       ),
                    //     );
                  },
                );
              } else {
                return const SizedBox();
              }
            },
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (isActiveStartStopTimesheetButoon) {
                return ButtonIconTigris(
                  bottomMargin: false,
                  shadow: true,
                  marginLeft: 30,
                  marginRight: 30,
                  title: 'regestration_hours_selection.from_to_hours'.tr(),
                  action: () async => showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => const SelectProjectHoursModalWindow(),
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          )
        ],
      ),
    );
  }
}
