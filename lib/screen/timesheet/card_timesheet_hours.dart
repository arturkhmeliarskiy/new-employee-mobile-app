import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:view_models/view_models.dart';

class CardTimesheetHours extends StatefulWidget {
  final int indexCard;
  final void Function(String) onSelectedProject;
  final void Function(String) onSelectedHourType;
  final void Function(int, DateTime, String) onSelectedTime;
  final List<int> listDaysNotBlocked;
  final HoursCardDataModel cardTimesheet;
  final DateTime dateMonday;

  const CardTimesheetHours({
    required this.indexCard,
    required this.onSelectedProject,
    required this.onSelectedHourType,
    required this.onSelectedTime,
    required this.listDaysNotBlocked,
    required this.cardTimesheet,
    required this.dateMonday,
    Key? key,
  }) : super(key: key);

  @override
  State<CardTimesheetHours> createState() => _CardTimesheetHoursState();
}

class _CardTimesheetHoursState extends State<CardTimesheetHours> {
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
          height: 376,
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
                      'hours'.tr(),
                      style: widget.cardTimesheet.unraveling
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
                        if (!widget.cardTimesheet.unraveling) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                // context.read<TimesheetBloc>().add(
                                //       TimesheetEvent.deleteHoursCard(
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
                    ),
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
                  unraveling: widget.cardTimesheet.unraveling,
                  items: widget.cardTimesheet.unraveling
                      ? []
                      : widget.cardTimesheet.projects.toList(),
                  nameItem: widget.cardTimesheet.projectItem,
                  onSelected: (projectId) {
                    setState(() {
                      widget.onSelectedProject(projectId);
                    });
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 16,
                  right: 16,
                ),
                child: TigrisDropdownTimesheetMenu(
                  showStatus: false,
                  disabledMargin: true,
                  unraveling: widget.cardTimesheet.unraveling,
                  items: widget.cardTimesheet.unraveling
                      ? []
                      : widget.cardTimesheet.hoursType.toList(),
                  onSelected: (hourId) {
                    setState(() {
                      widget.onSelectedHourType(hourId);
                    });
                  },
                  nameItem: widget.cardTimesheet.hourItem,
                ),
              ),
              Container(
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
                        right:
                            TigrisMenuOption().weekday.length == indexWeek + 1
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
                            style: widget.cardTimesheet.unraveling
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
                              color: widget.cardTimesheet.unraveling ||
                                      widget.cardTimesheet.hourItem ==
                                          'registration_timesheets_screen.hour_type_not_selected'
                                              .tr() ||
                                      widget.listDaysNotBlocked.contains(
                                            indexWeek,
                                          ) ==
                                          false ||
                                      widget.cardTimesheet
                                              .listDaysNotBlockedCardHours
                                              .contains(
                                            indexWeek,
                                          ) ==
                                          false
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
                                    5,
                                  ), // changes position of shadow
                                ),
                              ],
                            ),
                            child: TextField(
                              readOnly: widget.cardTimesheet.unraveling ||
                                  widget.cardTimesheet.hourItem ==
                                      'registration_timesheets_screen.hour_type_not_selected'
                                          .tr() ||
                                  widget.listDaysNotBlocked.contains(
                                        indexWeek,
                                      ) ==
                                      false ||
                                  widget.cardTimesheet
                                          .listDaysNotBlockedCardHours
                                          .contains(
                                        indexWeek,
                                      ) ==
                                      false,
                              textAlign: TextAlign.center,
                              textInputAction: indexWeek != 6
                                  ? TextInputAction.next
                                  : TextInputAction.done,
                              maxLength: 6,
                              keyboardType: TextInputType.number,
                              controller: TextEditingController.fromValue(
                                TextEditingValue(
                                  text: widget
                                          .cardTimesheet.amountOfHoursList.keys
                                          .toList(
                                            growable: false,
                                          )
                                          .contains(
                                            indexWeek,
                                          )
                                      ? widget.cardTimesheet
                                              .amountOfHoursList[indexWeek] ??
                                          ''
                                      : '',
                                  selection: TextSelection.collapsed(
                                    offset: widget
                                            .cardTimesheet
                                            .amountOfHoursList[indexWeek]
                                            ?.length ??
                                        0,
                                  ),
                                ),
                              ),
                              onChanged: (value) {
                                final itemDate = DateTime(
                                  widget.dateMonday.year,
                                  widget.dateMonday.month,
                                  widget.dateMonday.day + indexWeek,
                                );

                                widget.onSelectedTime(
                                  indexWeek,
                                  itemDate,
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
                              style: widget.cardTimesheet.unraveling ||
                                      widget.listDaysNotBlocked.contains(
                                            indexWeek,
                                          ) ==
                                          false ||
                                      widget.cardTimesheet
                                              .listDaysNotBlockedCardHours
                                              .contains(
                                            indexWeek,
                                          ) ==
                                          false
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
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 25,
                ),
                alignment: Alignment.center,
                child: Text(
                  'upload_file'.tr(),
                  style: widget.cardTimesheet.unraveling
                      ? Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: TigrisColor.blackOpacity50,
                          )
                      : Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
