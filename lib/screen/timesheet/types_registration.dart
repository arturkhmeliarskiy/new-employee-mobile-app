import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tigris/screen/timesheet/registration_hours_selection.dart';
import 'package:ui_kit/ui_kit.dart';

class TypesRegistration extends StatelessWidget {
  final bool isReservationAdd;
  final bool isActiveHoursTimesheetButton;
  final bool isActiveStartStopTimesheetButoon;
  const TypesRegistration({
    required this.isReservationAdd,
    this.isActiveHoursTimesheetButton = false,
    this.isActiveStartStopTimesheetButoon = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: MediaQuery.of(context).viewInsets,
      height: height * 0.65,
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
              'types_registration.new_registration'.tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          ButtonIconTigris(
            bottomMargin: false,
            shadow: true,
            marginLeft: 30,
            marginRight: 30,
            marginLeftTitle: 26,
            leftIcon: TigrisImages.clock,
            title: 'hours'.tr(),
            action: () async => showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) => RegistrationHoursSelection(
                isActiveHoursTimesheetButton: isActiveHoursTimesheetButton,
                isActiveStartStopTimesheetButoon:
                    isActiveStartStopTimesheetButoon,
              ),
            ),
          ),
          ButtonIconTigris(
            bottomMargin: false,
            shadow: true,
            marginLeft: 30,
            marginRight: 30,
            marginLeftTitle: 26,
            leftIcon: TigrisImages.car,
            title: 'types_registration.ritten'.tr(),
            action: () {
              Navigator.of(context).pop();
              // context.read<TimesheetBloc>().add(
              //       const TimesheetEvent.addCard(
              //         'Ritten',
              //         '',
              //       ),
              //     );
            },
          ),
          ButtonIconTigris(
            bottomMargin: false,
            shadow: true,
            marginLeft: 30,
            marginRight: 30,
            marginLeftTitle: 26,
            leftIcon: TigrisImages.document,
            title: 'types_registration.expenses'.tr(),
            action: () {
              Navigator.of(context).pop();
              // context.read<TimesheetBloc>().add(
              //       const TimesheetEvent.addCard(
              //         'Expense',
              //         '',
              //       ),
              //     );
            },
          ),
          ButtonIconTigris(
            bottomMargin: false,
            shadow: true,
            marginLeft: 30,
            marginRight: 30,
            marginLeftTitle: 26,
            leftIcon: TigrisImages.bolt,
            title: 'types_registration.reservations'.tr(),
            action: () {
              if (isReservationAdd) {
                Navigator.of(context).pop();
                // context.read<TimesheetBloc>().add(
                //       TimesheetEvent.addCard(
                //         'card_timesheet_reservation.reservation'.tr(),
                //         '',
                //       ),
                //     );
              }
            },
          ),
        ],
      ),
    );
  }
}
