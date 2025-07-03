import 'dart:math' as math;

import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:view_models/view_models.dart';

class CardTimesheetStartStop extends StatefulWidget {
  final String projectType;
  final String unravelingType;
  final int indexCard;
  final bool isUnravelingTypesInUse;
  final StartStopCardDataModel cardTimesheet;
  final List<Map<String, String>> projects;
  final List<Map<String, String>> unravelingTypes;
  final void Function(DateTime, DateTime, int) updateWorkingHoursStartTime;
  final void Function(DateTime, DateTime, int) updateWorkingHoursEndTime;
  final void Function(String, DateTime, DateTime, DateTime, DateTime, int, int)
      updateBreakStartTime;
  final void Function(String, DateTime, DateTime, DateTime, DateTime, int, int)
      updateBreakEndTime;
  final void Function(String, DateTime, DateTime, int) addBreak;
  final void Function(String, DateTime, DateTime, int, int) deleteBreak;
  final void Function(String) onSelectedProject;
  final void Function(String) onSelectedUnraveling;

  const CardTimesheetStartStop({
    required this.cardTimesheet,
    required this.projects,
    required this.indexCard,
    required this.updateWorkingHoursStartTime,
    required this.updateWorkingHoursEndTime,
    required this.updateBreakStartTime,
    required this.unravelingTypes,
    required this.updateBreakEndTime,
    required this.addBreak,
    required this.deleteBreak,
    required this.onSelectedProject,
    required this.onSelectedUnraveling,
    required this.isUnravelingTypesInUse,
    this.projectType = '',
    this.unravelingType = '',
    Key? key,
  }) : super(key: key);

  @override
  State<CardTimesheetStartStop> createState() => _CardTimesheetStartStopState();
}

class _CardTimesheetStartStopState extends State<CardTimesheetStartStop> {
  final time = TextEditingController();

  @override
  void dispose() {
    time.dispose();
    super.dispose();
  }

  final dateFormat = DateFormat('yyyy-MM-dd');

  DateTime _dateTime = DateTime(0);

  final weekday = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  @override
  Widget build(BuildContext context) {
    return ShadowBoxTigris(
      crossAxisAlignment: CrossAxisAlignment.start,
      top: 20,
      widget: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                              right: !widget.cardTimesheet.isEditableTimesheet
                                  ? 16
                                  : 0,
                            ),
                            child: TigrisDropdownTimesheetMenu(
                              disabledMargin: true,
                              items: widget.cardTimesheet.isEditableTimesheet
                                  ? []
                                  : widget.projects,
                              nameItem: widget.projectType,
                              unraveling:
                                  widget.cardTimesheet.isEditableTimesheet,
                              onSelected: (projectId) {
                                setState(() {
                                  widget.onSelectedProject(projectId);
                                });
                              },
                            ),
                          ),
                        ),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            if (!widget.cardTimesheet.isEditableTimesheet) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    // context.read<TimesheetBloc>().add(
                                    //       TimesheetEvent.deleteStartStopCard(
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
                    LayoutBuilder(
                      builder: (context, constraints) {
                        if (widget.isUnravelingTypesInUse) {
                          return Column(
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        right: !widget.cardTimesheet
                                                .isEditableTimesheet
                                            ? 16
                                            : 0,
                                      ),
                                      child: TigrisDropdownTimesheetMenu(
                                        disabledMargin: true,
                                        items: widget.cardTimesheet
                                                .isEditableTimesheet
                                            ? []
                                            : widget.unravelingTypes,
                                        nameItem: widget.unravelingType,
                                        unraveling: widget
                                            .cardTimesheet.isEditableTimesheet,
                                        onSelected: (unravelingId) {
                                          setState(() {
                                            widget.onSelectedUnraveling(
                                              unravelingId,
                                            );
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: !widget
                                            .cardTimesheet.isEditableTimesheet
                                        ? 25
                                        : 0,
                                  )
                                ],
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
              for (int i = 0; i < weekday.length; i++)
                LayoutBuilder(
                  builder: (context, constraints) {
                    final listStartStopTime =
                        widget.cardTimesheet.listStartStopTime
                            .where(
                              (element) => element['indexDay'] == i,
                            )
                            .toList();
                    return Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        right: 15,
                        top: 21,
                        bottom: weekday.length - 1 == i ? 21 : 0,
                      ),
                      height: listStartStopTime.isNotEmpty
                          ? (listStartStopTime.first['rests'] as List<dynamic>)
                                  .isNotEmpty
                              ? (117 +
                                      (listStartStopTime.first['rests']
                                                  as List<dynamic>)
                                              .length *
                                          65)
                                  .toDouble()
                              : 117
                          : 117,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        border: Border.all(
                          color: TigrisColor.blackOpacity20,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 13,
                              left: 15.6,
                              right: 11.6,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  weekday[i],
                                  style: widget
                                          .cardTimesheet.isEditableTimesheet
                                      ? Theme.of(
                                          context,
                                        ).textTheme.labelSmall?.copyWith(
                                            color: TigrisColor.blackOpacity50,
                                          )
                                      : Theme.of(
                                          context,
                                        ).textTheme.labelSmall,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 39,
                                      width: 84,
                                      child: TextField(
                                        readOnly: widget
                                            .cardTimesheet.isEditableTimesheet,
                                        textAlign: TextAlign.center,
                                        style: widget.cardTimesheet
                                                .isEditableTimesheet
                                            ? Theme.of(
                                                context,
                                              ).textTheme.labelSmall?.copyWith(
                                                  color: TigrisColor
                                                      .blackOpacity50,
                                                )
                                            : Theme.of(
                                                context,
                                              ).textTheme.labelSmall,
                                        controller:
                                            TextEditingController.fromValue(
                                          TextEditingValue(
                                            text: listStartStopTime.isNotEmpty
                                                ? listStartStopTime.first[
                                                        'startTimeHours'] ??
                                                    ''
                                                : '',
                                            selection: TextSelection.collapsed(
                                              offset: (listStartStopTime
                                                          .isNotEmpty
                                                      ? listStartStopTime.first[
                                                              'startTimeHours'] ??
                                                          ''
                                                      : '')
                                                  .length,
                                            ),
                                          ),
                                        ),
                                        keyboardType: TextInputType.none,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: TigrisColor.blackOpacity20,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              width: widget.cardTimesheet
                                                      .isEditableTimesheet
                                                  ? 1
                                                  : 2,
                                              color: widget.cardTimesheet
                                                      .isEditableTimesheet
                                                  ? TigrisColor.blackOpacity20
                                                  : TigrisColor.greenOpacity100,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                          ),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: TigrisColor.blackOpacity20,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                          ),
                                          fillColor: TigrisColor.white,
                                          filled: true,
                                          counterText: '',
                                          contentPadding:
                                              const EdgeInsets.only(),
                                          hintStyle: Theme.of(
                                            context,
                                          ).textTheme.labelSmall,
                                        ),
                                        inputFormatters: <TextInputFormatter>[
                                          TimeTextInputFormatter(
                                            RegExp(
                                              r'^[0-9:]+$',
                                            ),
                                          ) // This input formatter will do the job
                                        ],
                                        onTap: () {
                                          if (!widget.cardTimesheet
                                              .isEditableTimesheet) {
                                            TigrisDialog.selectDialog(
                                              context: context,
                                              isScroll: false,
                                              widget: [
                                                Container(
                                                  width: 270,
                                                  height: 150,
                                                  alignment: Alignment.center,
                                                  child: TimePickerSpinner(
                                                    normalTextStyle:
                                                        const TextStyle(
                                                      fontSize: 24,
                                                      color:
                                                          TigrisColor.appBlack,
                                                    ),
                                                    highlightedTextStyle:
                                                        const TextStyle(
                                                      fontSize: 24,
                                                      color:
                                                          TigrisColor.appGreen,
                                                    ),
                                                    time: listStartStopTime
                                                            .isNotEmpty
                                                        ? listStartStopTime
                                                                    .first[
                                                                'startTime'] ??
                                                            DateTime(0)
                                                        : DateTime(0),
                                                    onTimeChange: (startTime) {
                                                      _dateTime = startTime;
                                                    },
                                                    spacing: 20,
                                                    itemHeight: 40,
                                                    itemWidth: 40,
                                                    alignment: Alignment.center,
                                                  ),
                                                )
                                              ],
                                              button: Container(
                                                margin: const EdgeInsets.only(
                                                  left: 25,
                                                  right: 25,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        'button_cancel'.tr(),
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall,
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          widget
                                                              .updateWorkingHoursStartTime(
                                                            _dateTime,
                                                            listStartStopTime
                                                                    .isNotEmpty
                                                                ? listStartStopTime
                                                                            .first[
                                                                        'endTime'] ??
                                                                    DateTime(0)
                                                                : DateTime(0),
                                                            i,
                                                          );
                                                        });
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        'profile_screen.notification_dialog_ok'
                                                            .tr(),
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              height: 200,
                                              width: 100,
                                            );
                                          }
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    SizedBox(
                                      height: 39,
                                      width: 84,
                                      child: TextField(
                                        readOnly: widget
                                            .cardTimesheet.isEditableTimesheet,
                                        textAlign: TextAlign.center,
                                        style: widget.cardTimesheet
                                                .isEditableTimesheet
                                            ? Theme.of(
                                                context,
                                              ).textTheme.labelSmall?.copyWith(
                                                  color: TigrisColor
                                                      .blackOpacity50,
                                                )
                                            : Theme.of(
                                                context,
                                              ).textTheme.labelSmall,
                                        controller:
                                            TextEditingController.fromValue(
                                          TextEditingValue(
                                            text: listStartStopTime.isNotEmpty
                                                ? listStartStopTime.first[
                                                        'endTimeHours'] ??
                                                    ''
                                                : '',
                                            selection: TextSelection.collapsed(
                                              offset: (listStartStopTime
                                                          .isNotEmpty
                                                      ? listStartStopTime.first[
                                                              'endTimeHours'] ??
                                                          ''
                                                      : '')
                                                  .length,
                                            ),
                                          ),
                                        ),
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: TigrisColor.blackOpacity20,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              width: widget.cardTimesheet
                                                      .isEditableTimesheet
                                                  ? 1
                                                  : 2,
                                              color: widget.cardTimesheet
                                                      .isEditableTimesheet
                                                  ? TigrisColor.blackOpacity20
                                                  : TigrisColor.greenOpacity100,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                          ),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: TigrisColor.blackOpacity20,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                          ),
                                          fillColor: TigrisColor.white,
                                          filled: true,
                                          counterText: '',
                                          contentPadding:
                                              const EdgeInsets.only(),
                                          hintStyle: Theme.of(
                                            context,
                                          ).textTheme.labelSmall,
                                        ),
                                        keyboardType: TextInputType.none,
                                        inputFormatters: <TextInputFormatter>[
                                          TimeTextInputFormatter(
                                            RegExp(
                                              r'^[0-9:]+$',
                                            ),
                                          ) // This input formatter will do the job
                                        ],
                                        onTap: () {
                                          if (!widget.cardTimesheet
                                              .isEditableTimesheet) {
                                            TigrisDialog.selectDialog(
                                              context: context,
                                              isScroll: false,
                                              widget: [
                                                Container(
                                                  width: 270,
                                                  height: 150,
                                                  alignment: Alignment.center,
                                                  child: TimePickerSpinner(
                                                    normalTextStyle:
                                                        const TextStyle(
                                                      fontSize: 24,
                                                      color:
                                                          TigrisColor.appBlack,
                                                    ),
                                                    highlightedTextStyle:
                                                        const TextStyle(
                                                      fontSize: 24,
                                                      color:
                                                          TigrisColor.appGreen,
                                                    ),
                                                    time: listStartStopTime
                                                            .isNotEmpty
                                                        ? listStartStopTime
                                                                    .first[
                                                                'endTime'] ??
                                                            DateTime(0)
                                                        : DateTime(0),
                                                    spacing: 20,
                                                    itemHeight: 40,
                                                    itemWidth: 40,
                                                    alignment: Alignment.center,
                                                    onTimeChange: (endTime) {
                                                      _dateTime = endTime;
                                                    },
                                                  ),
                                                )
                                              ],
                                              button: Container(
                                                margin: const EdgeInsets.only(
                                                  left: 25,
                                                  right: 25,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        'button_cancel'.tr(),
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall,
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          widget
                                                              .updateWorkingHoursStartTime(
                                                            listStartStopTime
                                                                    .isNotEmpty
                                                                ? listStartStopTime
                                                                            .first[
                                                                        'startTime'] ??
                                                                    DateTime(0)
                                                                : DateTime(0),
                                                            _dateTime,
                                                            i,
                                                          );
                                                        });
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        'profile_screen.notification_dialog_ok'
                                                            .tr(),
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              height: 200,
                                              width: 100,
                                            );
                                          }
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 1,
                            margin: const EdgeInsets.only(
                              top: 9,
                              left: 15.6,
                              right: 11.6,
                            ),
                            color: TigrisColor.blackOpacity20,
                          ),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              if (listStartStopTime.isNotEmpty) {
                                String formatTime(int value) {
                                  return value.toString().length > 1
                                      ? value.toString()
                                      : '0$value';
                                }

                                return (listStartStopTime.first['rests']
                                            as List<dynamic>)
                                        .isNotEmpty
                                    ? SizedBox(
                                        height:
                                            (listStartStopTime.first['rests']
                                                        as List<dynamic>)
                                                    .length *
                                                62,
                                        child: ListView.builder(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemCount:
                                              (listStartStopTime.first['rests']
                                                      as List<dynamic>)
                                                  .length,
                                          itemBuilder: (
                                            context,
                                            indexBreak,
                                          ) {
                                            return SizedBox(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                      top: 13,
                                                      left: 15.6,
                                                      right: 11.6,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Break',
                                                          style: Theme.of(
                                                            context,
                                                          )
                                                              .textTheme
                                                              .labelSmall
                                                              ?.copyWith(
                                                                color: TigrisColor
                                                                    .blackOpacity50,
                                                              ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            SizedBox(
                                                              height: 39,
                                                              width: widget
                                                                      .cardTimesheet
                                                                      .isEditableTimesheet
                                                                  ? 84
                                                                  : 66,
                                                              child: TextField(
                                                                readOnly: widget
                                                                    .cardTimesheet
                                                                    .isEditableTimesheet,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: widget
                                                                        .cardTimesheet
                                                                        .isEditableTimesheet
                                                                    ? Theme.of(
                                                                        context,
                                                                      )
                                                                        .textTheme
                                                                        .labelSmall
                                                                        ?.copyWith(
                                                                          color:
                                                                              TigrisColor.blackOpacity50,
                                                                        )
                                                                    : Theme.of(
                                                                        context,
                                                                      )
                                                                        .textTheme
                                                                        .labelSmall,
                                                                controller:
                                                                    TextEditingController
                                                                        .fromValue(
                                                                  TextEditingValue(
                                                                    text: listStartStopTime
                                                                            .isNotEmpty
                                                                        ? '${formatTime(((listStartStopTime.first['rests'] as List<dynamic>)[indexBreak]['restStart'] as DateTime).hour)}'
                                                                            ':${formatTime(((listStartStopTime.first['rests'] as List<dynamic>)[indexBreak]['restStart'] as DateTime).minute)}'
                                                                        : '',
                                                                    selection:
                                                                        TextSelection
                                                                            .collapsed(
                                                                      offset: (listStartStopTime.isNotEmpty
                                                                              ? '${formatTime(((listStartStopTime.first['rests'] as List<dynamic>)[indexBreak]['restStart'] as DateTime).hour)}'
                                                                                  ':${formatTime(((listStartStopTime.first['rests'] as List<dynamic>)[indexBreak]['restStart'] as DateTime).minute)}'
                                                                              : '')
                                                                          .length,
                                                                    ),
                                                                  ),
                                                                ),
                                                                decoration:
                                                                    InputDecoration(
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: TigrisColor
                                                                          .blackOpacity20,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .all(
                                                                      Radius
                                                                          .circular(
                                                                        15.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      width: widget
                                                                              .cardTimesheet
                                                                              .isEditableTimesheet
                                                                          ? 1
                                                                          : 2,
                                                                      color: widget
                                                                              .cardTimesheet
                                                                              .isEditableTimesheet
                                                                          ? TigrisColor
                                                                              .blackOpacity20
                                                                          : TigrisColor
                                                                              .greenOpacity100,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .all(
                                                                      Radius
                                                                          .circular(
                                                                        15.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: TigrisColor
                                                                          .blackOpacity20,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .all(
                                                                      Radius
                                                                          .circular(
                                                                        15.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  fillColor:
                                                                      TigrisColor
                                                                          .white,
                                                                  filled: true,
                                                                  counterText:
                                                                      '',
                                                                  contentPadding:
                                                                      const EdgeInsets
                                                                          .only(),
                                                                  hintStyle: Theme
                                                                          .of(
                                                                    context,
                                                                  )
                                                                      .textTheme
                                                                      .labelSmall,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .none,
                                                                inputFormatters: <TextInputFormatter>[
                                                                  TimeTextInputFormatter(
                                                                    RegExp(
                                                                      r'^[0-9:]+$',
                                                                    ),
                                                                  ) // This input formatter will do the job
                                                                ],
                                                                onTap: () {
                                                                  if (!widget
                                                                      .cardTimesheet
                                                                      .isEditableTimesheet) {
                                                                    TigrisDialog
                                                                        .selectDialog(
                                                                      context:
                                                                          context,
                                                                      isScroll:
                                                                          false,
                                                                      widget: [
                                                                        Container(
                                                                          width:
                                                                              270,
                                                                          height:
                                                                              150,
                                                                          alignment:
                                                                              Alignment.center,
                                                                          // color: Colors.amber,
                                                                          child:
                                                                              TimePickerSpinner(
                                                                            normalTextStyle:
                                                                                const TextStyle(
                                                                              fontSize: 24,
                                                                              color: TigrisColor.appBlack,
                                                                            ),
                                                                            highlightedTextStyle:
                                                                                const TextStyle(
                                                                              fontSize: 24,
                                                                              color: TigrisColor.appGreen,
                                                                            ),
                                                                            time: listStartStopTime.isNotEmpty
                                                                                ? (listStartStopTime.first['rests'] as List<dynamic>)[indexBreak]['restStart']
                                                                                : DateTime,
                                                                            spacing:
                                                                                20,
                                                                            itemHeight:
                                                                                40,
                                                                            itemWidth:
                                                                                40,
                                                                            alignment:
                                                                                Alignment.center,
                                                                            onTimeChange:
                                                                                (startTimeBreak) {
                                                                              _dateTime = startTimeBreak;
                                                                            },
                                                                          ),
                                                                        )
                                                                      ],
                                                                      button:
                                                                          Container(
                                                                        margin:
                                                                            const EdgeInsets.only(
                                                                          left:
                                                                              25,
                                                                          right:
                                                                              25,
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                Navigator.pop(context);
                                                                              },
                                                                              child: Text(
                                                                                'button_cancel'.tr(),
                                                                                style: Theme.of(context).textTheme.bodySmall,
                                                                              ),
                                                                            ),
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                setState(() {
                                                                                  widget.updateBreakStartTime(
                                                                                    'update_break_time',
                                                                                    listStartStopTime.isNotEmpty ? listStartStopTime.first['startTime'] ?? DateTime(1970) : DateTime(1970),
                                                                                    listStartStopTime.isNotEmpty ? listStartStopTime.first['endTime'] ?? DateTime(1970) : DateTime(1970),
                                                                                    _dateTime,
                                                                                    (listStartStopTime.first['rests'] as List<dynamic>)[indexBreak]['restEnd'] as DateTime,
                                                                                    i,
                                                                                    indexBreak,
                                                                                  );
                                                                                });
                                                                                Navigator.pop(context);
                                                                              },
                                                                              child: Text(
                                                                                'profile_screen.notification_dialog_ok'.tr(),
                                                                                style: Theme.of(context).textTheme.bodySmall,
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      height:
                                                                          200,
                                                                      width:
                                                                          100,
                                                                    );
                                                                  }
                                                                },
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              width: 3,
                                                            ),
                                                            SizedBox(
                                                              height: 39,
                                                              width: widget
                                                                      .cardTimesheet
                                                                      .isEditableTimesheet
                                                                  ? 84
                                                                  : 66,
                                                              child: TextField(
                                                                readOnly: widget
                                                                    .cardTimesheet
                                                                    .isEditableTimesheet,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: widget
                                                                        .cardTimesheet
                                                                        .isEditableTimesheet
                                                                    ? Theme.of(
                                                                        context,
                                                                      )
                                                                        .textTheme
                                                                        .labelSmall
                                                                        ?.copyWith(
                                                                          color:
                                                                              TigrisColor.blackOpacity50,
                                                                        )
                                                                    : Theme.of(
                                                                        context,
                                                                      )
                                                                        .textTheme
                                                                        .labelSmall,
                                                                controller:
                                                                    TextEditingController
                                                                        .fromValue(
                                                                  TextEditingValue(
                                                                    text: listStartStopTime
                                                                            .isNotEmpty
                                                                        ? '${formatTime(((listStartStopTime.first['rests'] as List<dynamic>)[indexBreak]['restEnd'] as DateTime).hour)}'
                                                                            ':${formatTime(((listStartStopTime.first['rests'] as List<dynamic>)[indexBreak]['restEnd'] as DateTime).minute)}'
                                                                        : '',
                                                                    selection:
                                                                        TextSelection
                                                                            .collapsed(
                                                                      offset: (listStartStopTime.isNotEmpty
                                                                              ? '${formatTime(((listStartStopTime.first['rests'] as List<dynamic>)[indexBreak]['restEnd'] as DateTime).hour)}'
                                                                                  ':${formatTime(((listStartStopTime.first['rests'] as List<dynamic>)[indexBreak]['restEnd'] as DateTime).minute)}'
                                                                              : '')
                                                                          .length,
                                                                    ),
                                                                  ),
                                                                ),
                                                                decoration:
                                                                    InputDecoration(
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: TigrisColor
                                                                          .blackOpacity20,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .all(
                                                                      Radius
                                                                          .circular(
                                                                        15.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      width: widget
                                                                              .cardTimesheet
                                                                              .isEditableTimesheet
                                                                          ? 1
                                                                          : 2,
                                                                      color: widget
                                                                              .cardTimesheet
                                                                              .isEditableTimesheet
                                                                          ? TigrisColor
                                                                              .blackOpacity20
                                                                          : TigrisColor
                                                                              .greenOpacity100,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .all(
                                                                      Radius
                                                                          .circular(
                                                                        15.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: TigrisColor
                                                                          .blackOpacity20,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .all(
                                                                      Radius
                                                                          .circular(
                                                                        15.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  fillColor:
                                                                      TigrisColor
                                                                          .white,
                                                                  filled: true,
                                                                  counterText:
                                                                      '',
                                                                  contentPadding:
                                                                      const EdgeInsets
                                                                          .only(),
                                                                  hintStyle: Theme
                                                                          .of(
                                                                    context,
                                                                  )
                                                                      .textTheme
                                                                      .labelSmall,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .none,
                                                                inputFormatters: <TextInputFormatter>[
                                                                  TimeTextInputFormatter(
                                                                    RegExp(
                                                                      r'^[0-9:]+$',
                                                                    ),
                                                                  ) // This input formatter will do the job
                                                                ],
                                                                onTap: () {
                                                                  if (!widget
                                                                      .cardTimesheet
                                                                      .isEditableTimesheet) {
                                                                    TigrisDialog
                                                                        .selectDialog(
                                                                      context:
                                                                          context,
                                                                      isScroll:
                                                                          false,
                                                                      widget: [
                                                                        Container(
                                                                          width:
                                                                              270,
                                                                          height:
                                                                              150,
                                                                          alignment:
                                                                              Alignment.center,
                                                                          // color: Colors.amber,
                                                                          child:
                                                                              TimePickerSpinner(
                                                                            normalTextStyle:
                                                                                const TextStyle(
                                                                              fontSize: 24,
                                                                              color: TigrisColor.appBlack,
                                                                            ),
                                                                            highlightedTextStyle:
                                                                                const TextStyle(
                                                                              fontSize: 24,
                                                                              color: TigrisColor.appGreen,
                                                                            ),
                                                                            time: listStartStopTime.isNotEmpty
                                                                                ? (listStartStopTime.first['rests'] as List<dynamic>)[indexBreak]['restEnd']
                                                                                : DateTime,
                                                                            spacing:
                                                                                20,
                                                                            itemHeight:
                                                                                40,
                                                                            itemWidth:
                                                                                40,
                                                                            alignment:
                                                                                Alignment.center,
                                                                            onTimeChange:
                                                                                (endTimeBreak) {
                                                                              _dateTime = endTimeBreak;
                                                                            },
                                                                          ),
                                                                        )
                                                                      ],
                                                                      button:
                                                                          Container(
                                                                        margin:
                                                                            const EdgeInsets.only(
                                                                          left:
                                                                              25,
                                                                          right:
                                                                              25,
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                Navigator.pop(context);
                                                                              },
                                                                              child: Text(
                                                                                'button_cancel'.tr(),
                                                                                style: Theme.of(context).textTheme.bodySmall,
                                                                              ),
                                                                            ),
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                setState(() {
                                                                                  widget.updateBreakEndTime(
                                                                                    'update_break_time',
                                                                                    listStartStopTime.isNotEmpty ? listStartStopTime.first['startTime'] ?? DateTime(1970) : DateTime(1970),
                                                                                    listStartStopTime.isNotEmpty ? listStartStopTime.first['endTime'] ?? DateTime(1970) : DateTime(1970),
                                                                                    (listStartStopTime.first['rests'] as List<dynamic>)[indexBreak]['restStart'] as DateTime,
                                                                                    _dateTime,
                                                                                    i,
                                                                                    indexBreak,
                                                                                  );
                                                                                });
                                                                                Navigator.pop(context);
                                                                              },
                                                                              child: Text(
                                                                                'profile_screen.notification_dialog_ok'.tr(),
                                                                                style: Theme.of(context).textTheme.bodySmall,
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      height:
                                                                          200,
                                                                      width:
                                                                          100,
                                                                    );
                                                                  }
                                                                },
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: widget
                                                                      .cardTimesheet
                                                                      .isEditableTimesheet
                                                                  ? 0
                                                                  : 10,
                                                            ),
                                                            LayoutBuilder(
                                                              builder: (
                                                                context,
                                                                constraints,
                                                              ) {
                                                                if (!widget
                                                                    .cardTimesheet
                                                                    .isEditableTimesheet) {
                                                                  return GestureDetector(
                                                                    onTap: () {
                                                                      setState(
                                                                          () {
                                                                        widget
                                                                            .deleteBreak(
                                                                          'delete_break',
                                                                          listStartStopTime.isNotEmpty
                                                                              ? listStartStopTime.first['startTime'] ??
                                                                                  DateTime(
                                                                                    0,
                                                                                  )
                                                                              : DateTime(
                                                                                  0,
                                                                                ),
                                                                          listStartStopTime.isNotEmpty
                                                                              ? listStartStopTime.first['endTime'] ??
                                                                                  DateTime(
                                                                                    0,
                                                                                  )
                                                                              : DateTime(
                                                                                  0,
                                                                                ),
                                                                          i,
                                                                          indexBreak,
                                                                        );
                                                                      });
                                                                    },
                                                                    child:
                                                                        TigrisImage(
                                                                      image:
                                                                          TigrisImages
                                                                              .x,
                                                                      width: 25,
                                                                      color: TigrisColor
                                                                          .redOpacity100,
                                                                    ),
                                                                  );
                                                                } else {
                                                                  return const SizedBox();
                                                                }
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 1,
                                                    margin:
                                                        const EdgeInsets.only(
                                                      top: 9,
                                                      left: 15.6,
                                                      right: 11.6,
                                                    ),
                                                    color: TigrisColor
                                                        .blackOpacity20,
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      )
                                    : const SizedBox();
                              } else {
                                return const SizedBox();
                              }
                            },
                          ),
                          GestureDetector(
                            onTap: () {
                              if (listStartStopTime.isNotEmpty &&
                                  !widget.cardTimesheet.isEditableTimesheet) {
                                setState(() {
                                  widget.addBreak(
                                    'add_break',
                                    listStartStopTime.isNotEmpty
                                        ? listStartStopTime
                                                .first['startTime'] ??
                                            DateTime(0)
                                        : DateTime(0),
                                    listStartStopTime.isNotEmpty
                                        ? listStartStopTime.first['endTime'] ??
                                            DateTime(0)
                                        : DateTime(0),
                                    i,
                                  );
                                });
                              }
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 15.6,
                                right: 11.6,
                              ),
                              alignment: Alignment.center,
                              height: 53,
                              child: Text(
                                'Add break',
                                style: Theme.of(
                                  context,
                                ).textTheme.labelSmall?.copyWith(
                                      color: TigrisColor.blackOpacity50,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
            ],
          ),
        )
      ],
    );
  }
}

class TimeTextInputFormatter extends TextInputFormatter {
  final RegExp _exp;

  TimeTextInputFormatter(this._exp);

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (_exp.hasMatch(newValue.text)) {
      TextSelection newSelection = newValue.selection;

      final String value = newValue.text;
      String newText;

      String leftChunk = '';
      String rightChunk = '';

      if (value.length >= 5) {
        if (value.substring(0, 4) == '00:0') {
          leftChunk = '00:';
          rightChunk = value.substring(leftChunk.length + 1, value.length);
        } else if (value.substring(0, 3) == '00:') {
          leftChunk = '0';
          rightChunk = '${value.substring(3, 4)}:${value.substring(4)}';
        } else {
          leftChunk = '';
          rightChunk =
              '${value.substring(1, 2)}${value.substring(3, 4)}:${value.substring(4, 5)}${value.substring(5)}';
        }
      } else if (value.length == 4) {
        if (value.substring(0, 4) == '00:0') {
          leftChunk = '';
          rightChunk = '';
        } else if (value.substring(0, 3) == '00:') {
          leftChunk = '00:0';
          rightChunk = value.substring(3, 4);
        } else if (value.substring(0, 1) == '0') {
          leftChunk = '00:';
          rightChunk = '${value.substring(1, 2)}${value.substring(3, 4)}';
        } else {
          leftChunk = '';
          rightChunk = '${value.substring(1, 2)}${value.substring(3, 4)}';
        }
      } else {
        leftChunk = '00:0';
        rightChunk = value;
      }

      if (oldValue.text.isNotEmpty && oldValue.text.substring(0, 1) != '0') {
        if (value.length > 5) {
          return oldValue;
        } else {
          leftChunk = '0';
          rightChunk =
              '${value.substring(0, 1)}:${value.substring(1, 2)}${value.substring(3, 4)}';
        }
      }

      newText = leftChunk + rightChunk;

      newSelection = newValue.selection.copyWith(
        baseOffset: math.min(newText.length, newText.length),
        extentOffset: math.min(newText.length, newText.length),
      );

      return TextEditingValue(
        text: newText,
        selection: newSelection,
      );
    }
    return oldValue;
  }
}
