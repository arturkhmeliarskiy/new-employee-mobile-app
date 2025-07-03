import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:view_models/view_models.dart';

class CardTimesheetReservation extends StatefulWidget {
  final String available;
  final String availableBalance;
  final int indexCard;
  final void Function(String) onCostType;
  final ReservationCardDataModel cardTimesheet;
  final void Function(int, String, String) onSelectedReservation;

  const CardTimesheetReservation({
    required this.available,
    required this.availableBalance,
    required this.indexCard,
    required this.onCostType,
    required this.cardTimesheet,
    required this.onSelectedReservation,
    Key? key,
  }) : super(key: key);

  @override
  State<CardTimesheetReservation> createState() =>
      _CardTimesheetReservationState();
}

class _CardTimesheetReservationState extends State<CardTimesheetReservation> {
  final time = TextEditingController();

  @override
  void dispose() {
    time.dispose();
    super.dispose();
  }

  final dateFormat = DateFormat('yyyy-MM-dd');

  @override
  Widget build(BuildContext context) {
    return ShadowBoxTigris(
      crossAxisAlignment: CrossAxisAlignment.start,
      top: 20,
      widget: [
        SizedBox(
          height: widget.cardTimesheet.reservationKey.isEmpty
              ? 400
              : !widget.cardTimesheet.isWdc
                  ? 320
                  : 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 22,
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'card_timesheet_reservation.reservation'.tr(),
                      style: widget.cardTimesheet.isCardBlocked
                          ? Theme.of(
                              context,
                            ).textTheme.labelSmall?.copyWith(
                                color: TigrisColor.blackOpacity50,
                              )
                          : Theme.of(
                              context,
                            ).textTheme.labelSmall,
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        if (!widget.cardTimesheet.isCardBlocked) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                // context.read<TimesheetBloc>().add(
                                //       TimesheetEvent.deleteReservationCard(
                                //         widget.indexCard,
                                //       ),
                                //     );
                              });
                            },
                            child: TigrisImage(
                              image: TigrisImages.x,
                              width: 25,
                              color: TigrisColor.redOpacity100,
                            ),
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 16,
                  right: 16,
                ),
                child: TigrisDropdownTimesheetMenu(
                  disabledMargin: true,
                  unraveling: widget.cardTimesheet.isCardBlocked,
                  items: widget.cardTimesheet.isCardBlocked
                      ? []
                      : widget.cardTimesheet.reservationType,
                  nameItem: widget.cardTimesheet.reservationItem,
                  onSelected: (costKey) {
                    setState(() {
                      widget.onCostType(costKey);
                    });
                  },
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (widget.cardTimesheet.reservationKey == 'VG' ||
                      widget.cardTimesheet.reservationKey == 'WDC' ||
                      widget.cardTimesheet.reservationKey.isEmpty) {
                    return Container(
                      height: 64,
                      margin:
                          const EdgeInsets.only(top: 10, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'card_timesheet_reservation.available'.tr(),
                              style: widget.cardTimesheet.isCardBlocked
                                  ? Theme.of(
                                      context,
                                    ).textTheme.labelSmall?.copyWith(
                                        color: TigrisColor.blackOpacity50,
                                      )
                                  : Theme.of(
                                      context,
                                    ).textTheme.labelSmall,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 64,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                border: Border.all(
                                  color: TigrisColor.blackOpacity20,
                                ),
                              ),
                              child: Text(
                                '€${widget.available}',
                                style: widget.cardTimesheet.isCardBlocked
                                    ? Theme.of(
                                        context,
                                      ).textTheme.labelSmall?.copyWith(
                                          color: TigrisColor.blackOpacity50,
                                        )
                                    : Theme.of(
                                        context,
                                      ).textTheme.labelSmall,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (widget.cardTimesheet.reservationKey != 'VG' &&
                      widget.cardTimesheet.reservationKey != 'WDC') {
                    return Container(
                      height: 64,
                      margin:
                          const EdgeInsets.only(top: 10, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'card_timesheet_reservation.available_balance'
                                  .tr(),
                              style: widget.cardTimesheet.isCardBlocked
                                  ? Theme.of(
                                      context,
                                    ).textTheme.labelSmall?.copyWith(
                                        color: TigrisColor.blackOpacity50,
                                      )
                                  : Theme.of(
                                      context,
                                    ).textTheme.labelSmall,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 64,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                border: Border.all(
                                  color: TigrisColor.blackOpacity20,
                                ),
                              ),
                              child: Text(
                                widget.availableBalance,
                                style: widget.cardTimesheet.isCardBlocked
                                    ? Theme.of(
                                        context,
                                      ).textTheme.labelSmall?.copyWith(
                                          color: TigrisColor.blackOpacity50,
                                        )
                                    : Theme.of(
                                        context,
                                      ).textTheme.labelSmall,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (!widget.cardTimesheet.isWdc) {
                    return Container(
                      margin: const EdgeInsets.only(
                        top: 15,
                      ),
                      height: 95,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: TigrisMenuOption().weekday.length,
                        itemBuilder: (
                          context,
                          indexWeek,
                        ) {
                          return Container(
                            margin: EdgeInsets.only(
                              left: 16,
                              right: TigrisMenuOption().weekday.length ==
                                      indexWeek + 1
                                  ? 16
                                  : 0,
                            ),
                            height: 95,
                            width: 54,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  TigrisMenuOption().weekday[indexWeek][0] +
                                      TigrisMenuOption().weekday[indexWeek][1],
                                  style: widget.cardTimesheet.isCardBlocked
                                      ? Theme.of(
                                          context,
                                        ).textTheme.labelSmall?.copyWith(
                                            color: TigrisColor.blackOpacity50,
                                          )
                                      : Theme.of(
                                          context,
                                        ).textTheme.labelSmall,
                                ),
                                Container(
                                  height: 54,
                                  width: 54,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: widget.cardTimesheet
                                                .isAutoModeReservation ||
                                            widget.cardTimesheet.isCardBlocked
                                        ? TigrisColor.grey.withOpacity(0.1)
                                        : TigrisColor.white,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        8,
                                      ),
                                    ),
                                    border: Border.all(
                                      color: TigrisColor.blackOpacity20,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: TigrisColor.blackOpacity10,
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: const Offset(
                                          0,
                                          3,
                                        ), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: TextField(
                                    readOnly: widget.cardTimesheet
                                            .isAutoModeReservation ||
                                        widget.cardTimesheet.isCardBlocked,
                                    textAlign: TextAlign.center,
                                    textInputAction: indexWeek != 6
                                        ? TextInputAction.next
                                        : TextInputAction.done,
                                    maxLength: 6,
                                    controller: TextEditingController.fromValue(
                                      TextEditingValue(
                                        text: widget.cardTimesheet
                                                .amountOfReservationList.keys
                                                .toList(
                                                  growable: false,
                                                )
                                                .contains(
                                                  indexWeek,
                                                )
                                            ? widget.cardTimesheet
                                                        .amountOfReservationList[
                                                    indexWeek] ??
                                                ''
                                            : '',
                                        selection: TextSelection.collapsed(
                                          offset: widget
                                                  .cardTimesheet
                                                  .amountOfReservationList[
                                                      indexWeek]
                                                  ?.length ??
                                              0,
                                        ),
                                      ),
                                    ),
                                    keyboardType: TextInputType.number,
                                    onChanged: (value) {
                                      widget.onSelectedReservation(
                                        indexWeek,
                                        widget.cardTimesheet.reservationKey,
                                        value,
                                      );
                                    },
                                    inputFormatters: [
                                      FilteringTextInputFormatter.deny(
                                        RegExp(
                                          r'[\-]+[A-Za-zА-Яа-яЁё]+[,]',
                                        ),
                                      ),
                                      FilteringTextInputFormatter.allow(
                                        RegExp(r'^\d+\.?\d*'),
                                      ),
                                    ],
                                    style: widget.cardTimesheet.isCardBlocked
                                        ? Theme.of(
                                            context,
                                          ).textTheme.labelSmall?.copyWith(
                                              color: TigrisColor.blackOpacity50,
                                            )
                                        : Theme.of(
                                            context,
                                          ).textTheme.labelSmall,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      counterText: '',
                                      hintStyle: Theme.of(
                                        context,
                                      ).textTheme.labelSmall,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
