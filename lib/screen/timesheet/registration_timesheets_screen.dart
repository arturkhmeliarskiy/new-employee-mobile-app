import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:shared/shared.dart';
import 'package:tigris/screen/timesheet/card_timesheet_expenses.dart';
import 'package:tigris/screen/timesheet/card_timesheet_hours.dart';
import 'package:tigris/screen/timesheet/card_timesheet_reservation.dart';
import 'package:tigris/screen/timesheet/card_timesheet_ritten.dart';
import 'package:tigris/screen/timesheet/card_timesheet_start_stop.dart';
import 'package:tigris/screen/timesheet/types_registration.dart';
import 'package:ui_kit/ui_kit.dart';

class RegistrationTimesheetsScreen extends StatefulWidget {
  final String agencyId;
  final String placementId;
  final String agencyColor;
  final String orgLogo;
  final String orgName;
  final String functionName;

  const RegistrationTimesheetsScreen({
    required this.agencyId,
    required this.placementId,
    required this.agencyColor,
    required this.orgLogo,
    required this.orgName,
    required this.functionName,
    Key? key,
  }) : super(key: key);

  @override
  State<RegistrationTimesheetsScreen> createState() =>
      _RegistrationTimesheetsScreenState();
}

class _RegistrationTimesheetsScreenState
    extends State<RegistrationTimesheetsScreen> {
  String? documentType;
  bool openCalendar = false;
  bool selectedWeek = false;
  DateTime dateTime = DateTime.now();
  DateTime lastTime = DateTime.now();
  final time = TextEditingController();

  @override
  void dispose() {
    time.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return BlocListener<TimesheetBloc, TimesheetState>(
      listener: (context, state) => state.maybeMap(
        init: (value) => LoadingDialog.close(),
        update: (_) => setState(() {}),
        hoursError: (result) {
          TigrisMessage().showOverlay(context, result.hoursError, false);

          return null;
        },
        message: (response) {
          context.read<SubmittedTimesheetBloc>().add(
                const SubmittedTimesheetEvent.init(),
              );
          TigrisMessage().showOverlay(context, response.message, true);
          return null;
        },
        loading: (_) => LoadingDialog.show(context),
        orElse: () {
          return null;
        },
      ),
      child: Container(
        color: Color(
          int.parse(
            widget.agencyColor,
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Scaffold(
            backgroundColor: TigrisColor.white,
            body: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 340,
                          color: Color(
                            int.parse(
                              widget.agencyColor,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Row(
                                        children: [
                                          const TigrisImage(
                                            image: TigrisImages.chevronLeft,
                                            color: TigrisColor.white,
                                            width: 25.0,
                                          ),
                                          Text(
                                            'back_button_name'.tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall
                                                ?.copyWith(
                                                  color: TigrisColor.white,
                                                ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 16,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                widget.orgName,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      color: TigrisColor.white,
                                    ),
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              height: 166,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      widget.functionName,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(
                                            color: TigrisColor.white,
                                          ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      'registration_timesheets_screen.via'.tr(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.copyWith(
                                            color: TigrisColor.white,
                                          ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 8),
                                    height: 70,
                                    child: Image.network(
                                      widget.orgLogo,
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 16,
                              ),
                              child: Text(
                                'registration_timesheets_screen.select_week'
                                    .tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      color: TigrisColor.white,
                                    ),
                              ),
                            ),
                            SizedBox(
                              child: BlocBuilder<TimesheetBloc, TimesheetState>(
                                buildWhen: (previous, current) {
                                  bool result = true;
                                  current.maybeMap(
                                    loading: (_) => result = false,
                                    hoursError: (_) => result = false,
                                    orElse: () {},
                                  );
                                  return result;
                                },
                                builder: (context, state) {
                                  return state.maybeMap(
                                    init: (initState) {
                                      dateTime = initState.startDateTimesheet;
                                      DateTime getDate(DateTime d) =>
                                          DateTime(d.year, d.month, d.day);

                                      final endWeek = getDate(
                                        dateTime.add(
                                          Duration(
                                            days: DateTime.daysPerWeek -
                                                dateTime.weekday,
                                          ),
                                        ),
                                      );

                                      String month(DateTime date) {
                                        return DateFormat.MMM(
                                          context.locale.toString(),
                                        ).format(date);
                                      }

                                      return GestureDetector(
                                        onTap: () {
                                          if (initState.isEditableTimesheet) {
                                            setState(() {
                                              openCalendar = !openCalendar;
                                            });
                                            context.read<TimesheetBloc>().add(
                                                  TimesheetEvent
                                                      .getTimesheetsForCurrentPeriod(
                                                    dateTime.year,
                                                    dateTime.month - 1,
                                                    widget.placementId,
                                                  ),
                                                );
                                          }
                                        },
                                        child: ShadowBoxTigris(
                                          top: 16,
                                          widget: [
                                            SizedBox(
                                              height: 64,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Flexible(
                                                    child: FittedBox(
                                                      child: Container(
                                                        margin: const EdgeInsets
                                                            .only(
                                                          left: 15,
                                                        ),
                                                        child: Text(
                                                          '${DateService().capitalize('week'.tr())} ${DateService().isoWeekNumber(dateTime)} '
                                                          '(${month(dateTime).toLowerCase()} ${dateTime.day} '
                                                          '- ${month(endWeek).toLowerCase()} ${endWeek.day}, '
                                                          '${dateTime.year})',
                                                          style: (initState
                                                                  .isEditableTimesheet)
                                                              ? Theme.of(
                                                                  context,
                                                                )
                                                                  .textTheme
                                                                  .bodySmall
                                                              : Theme.of(
                                                                  context,
                                                                )
                                                                  .textTheme
                                                                  .bodySmall
                                                                  ?.copyWith(
                                                                    color: TigrisColor
                                                                        .blackOpacity50,
                                                                  ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                      right: 15,
                                                    ),
                                                    child: TigrisImage(
                                                      image: TigrisIcons
                                                          .chevronDown,
                                                      color: TigrisColor
                                                          .greenOpacity100,
                                                      fit: BoxFit.fitWidth,
                                                      width: 30,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                    orElse: () => nil,
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              child: BlocBuilder<TimesheetBloc, TimesheetState>(
                                buildWhen: (previous, current) {
                                  bool result = true;
                                  current.maybeMap(
                                    loading: (_) => result = false,
                                    hoursError: (_) => result = false,
                                    orElse: () {},
                                  );
                                  return result;
                                },
                                builder: (context, state) {
                                  return state.maybeMap(
                                    init: (initState) {
                                      final rittenList =
                                          initState.listExpensesCards.where(
                                        (element) =>
                                            element.cardType == 'Ritten',
                                      );
                                      return Column(
                                        children: [
                                          ListView.builder(
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount:
                                                initState.listHoursCards.length,
                                            itemBuilder: (context, index) {
                                              return CardTimesheetHours(
                                                dateMonday: initState
                                                    .startDateTimesheet,
                                                onSelectedProject: (projectId) {
                                                  setState(() {
                                                    context
                                                        .read<TimesheetBloc>()
                                                        .add(
                                                          TimesheetEvent
                                                              .updateHoursCard(
                                                            index,
                                                            -1,
                                                            DateTime(0),
                                                            '',
                                                            projectId,
                                                            '',
                                                          ),
                                                        );
                                                  });
                                                },
                                                onSelectedHourType: (hourId) {
                                                  setState(() {
                                                    context
                                                        .read<TimesheetBloc>()
                                                        .add(
                                                          TimesheetEvent
                                                              .updateHoursCard(
                                                            index,
                                                            -1,
                                                            DateTime(0),
                                                            '',
                                                            initState
                                                                .listHoursCards[
                                                                    index]
                                                                .projectId,
                                                            hourId,
                                                          ),
                                                        );
                                                  });
                                                },
                                                onSelectedTime: (
                                                  indexWeek,
                                                  itemDate,
                                                  value,
                                                ) async {
                                                  lastTime = DateTime.now();
                                                  await Future<void>.delayed(
                                                    const Duration(
                                                      milliseconds: 800,
                                                    ),
                                                  );
                                                  final timeDifference =
                                                      DateTime.now()
                                                          .difference(lastTime)
                                                          .inMilliseconds;
                                                  if (timeDifference > 799) {
                                                    context
                                                        .read<TimesheetBloc>()
                                                        .add(
                                                          TimesheetEvent
                                                              .updateHoursCard(
                                                            index,
                                                            indexWeek,
                                                            itemDate,
                                                            value,
                                                            '',
                                                            '',
                                                          ),
                                                        );
                                                  }
                                                },
                                                listDaysNotBlocked: initState
                                                    .listDaysNotBlocked,
                                                cardTimesheet: initState
                                                    .listHoursCards[index],
                                                indexCard: index,
                                              );
                                            },
                                          ),
                                          ListView.builder(
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount: initState
                                                .listExpensesCards.length,
                                            itemBuilder: (context, index) {
                                              return CardTimesheetExpenses(
                                                isEditableTimesheet: !initState
                                                    .isEditableTimesheet,
                                                indexCard: index,
                                                onSelectedProject: (value) {
                                                  context
                                                      .read<TimesheetBloc>()
                                                      .add(
                                                        TimesheetEvent
                                                            .updateExpensesCard(
                                                          index,
                                                          -1,
                                                          '',
                                                          '',
                                                          '',
                                                          value,
                                                          '',
                                                          initState
                                                              .listExpensesCards[
                                                                  index]
                                                              .cpcExpenseTypeConfigId,
                                                          'projectType',
                                                        ),
                                                      );
                                                },
                                                onSelectedCpcExpenseType:
                                                    (value) {
                                                  context
                                                      .read<TimesheetBloc>()
                                                      .add(
                                                        TimesheetEvent
                                                            .updateExpensesCard(
                                                          index,
                                                          -1,
                                                          '',
                                                          '',
                                                          '',
                                                          initState
                                                              .listExpensesCards[
                                                                  index]
                                                              .projectId,
                                                          '',
                                                          value,
                                                          'cpcExpenseType',
                                                        ),
                                                      );
                                                },
                                                onSelectedExpense: (
                                                  indexWeek,
                                                  itemDate,
                                                  value,
                                                ) async {
                                                  lastTime = DateTime.now();
                                                  await Future<void>.delayed(
                                                    const Duration(
                                                      milliseconds: 800,
                                                    ),
                                                  );
                                                  final timeDifference =
                                                      DateTime.now()
                                                          .difference(lastTime)
                                                          .inMilliseconds;
                                                  if (timeDifference > 799) {
                                                    context
                                                        .read<TimesheetBloc>()
                                                        .add(
                                                          TimesheetEvent
                                                              .updateExpensesCard(
                                                            index,
                                                            indexWeek,
                                                            itemDate,
                                                            '',
                                                            value,
                                                            '',
                                                            '',
                                                            '',
                                                            'amount',
                                                          ),
                                                        );
                                                  }
                                                },
                                                onSelectedPrice: (price) async {
                                                  lastTime = DateTime.now();
                                                  await Future<void>.delayed(
                                                    const Duration(
                                                      milliseconds: 800,
                                                    ),
                                                  );
                                                  final timeDifference =
                                                      DateTime.now()
                                                          .difference(lastTime)
                                                          .inMilliseconds;
                                                  if (timeDifference > 799) {
                                                    context
                                                        .read<TimesheetBloc>()
                                                        .add(
                                                          TimesheetEvent
                                                              .updateExpensesCard(
                                                            index,
                                                            -1,
                                                            '',
                                                            price,
                                                            '',
                                                            '',
                                                            '',
                                                            '',
                                                            'costPerUnit',
                                                          ),
                                                        );
                                                  }
                                                },
                                                listDaysNotBlocked: initState
                                                    .listDaysNotBlocked,
                                                startDateTimesheet: initState
                                                    .startDateTimesheet
                                                    .toString(),
                                                cardTimesheet: initState
                                                    .listExpensesCards[index],
                                              );
                                            },
                                          ),
                                          ListView.builder(
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount: initState
                                                .listReservationCards.length,
                                            itemBuilder: (context, index) {
                                              return CardTimesheetReservation(
                                                indexCard: index,
                                                available: initState
                                                    .listReservationCards[index]
                                                    .available,
                                                availableBalance: initState
                                                    .listReservationCards[index]
                                                    .availableBalance,
                                                onCostType: (value) {
                                                  context
                                                      .read<TimesheetBloc>()
                                                      .add(
                                                        TimesheetEvent
                                                            .updateReservationCard(
                                                          index,
                                                          -1,
                                                          value,
                                                          '',
                                                        ),
                                                      );
                                                },
                                                cardTimesheet: initState
                                                        .listReservationCards[
                                                    index],
                                                onSelectedReservation: (
                                                  indexWeek,
                                                  reservationKey,
                                                  value,
                                                ) async {
                                                  lastTime = DateTime.now();
                                                  await Future<void>.delayed(
                                                    const Duration(
                                                      milliseconds: 800,
                                                    ),
                                                  );
                                                  final timeDifference =
                                                      DateTime.now()
                                                          .difference(lastTime)
                                                          .inMilliseconds;
                                                  if (timeDifference > 799) {
                                                    context
                                                        .read<TimesheetBloc>()
                                                        .add(
                                                          TimesheetEvent
                                                              .updateReservationCard(
                                                            index,
                                                            indexWeek,
                                                            reservationKey,
                                                            value,
                                                          ),
                                                        );
                                                  }
                                                },
                                              );
                                            },
                                          ),
                                          ListView.builder(
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount: initState
                                                .listStartStopCard.length,
                                            itemBuilder: (context, index) {
                                              return CardTimesheetStartStop(
                                                indexCard: index,
                                                projects: initState.projects,
                                                unravelingTypes:
                                                    initState.unravelingTypes,
                                                unravelingType: initState
                                                    .listStartStopCard[index]
                                                    .unravelingName,
                                                projectType: initState
                                                    .listStartStopCard[index]
                                                    .projectName,
                                                cardTimesheet: initState
                                                    .listStartStopCard[index],
                                                isUnravelingTypesInUse:
                                                    initState
                                                        .isUnravelingTypesInUse,
                                                onSelectedProject: (projectId) {
                                                  context
                                                      .read<TimesheetBloc>()
                                                      .add(
                                                        TimesheetEvent
                                                            .updateStartStopCard(
                                                          projectId,
                                                          initState
                                                              .listStartStopCard[
                                                                  index]
                                                              .unravelingId,
                                                          index,
                                                          0,
                                                          0,
                                                          DateTime(0),
                                                          DateTime(0),
                                                          DateTime(0),
                                                          DateTime(0),
                                                          'update_project',
                                                        ),
                                                      );
                                                },
                                                onSelectedUnraveling:
                                                    (unravelingId) {
                                                  context
                                                      .read<TimesheetBloc>()
                                                      .add(
                                                        TimesheetEvent
                                                            .updateStartStopCard(
                                                          initState
                                                              .listStartStopCard[
                                                                  index]
                                                              .projectId,
                                                          unravelingId,
                                                          index,
                                                          0,
                                                          0,
                                                          DateTime(0),
                                                          DateTime(0),
                                                          DateTime(0),
                                                          DateTime(0),
                                                          'update_unraveling',
                                                        ),
                                                      );
                                                },
                                                updateWorkingHoursStartTime: (
                                                  startTime,
                                                  endTime,
                                                  indexWeek,
                                                ) async {
                                                  lastTime = DateTime.now();
                                                  await Future<void>.delayed(
                                                    const Duration(
                                                      milliseconds: 800,
                                                    ),
                                                  );
                                                  final timeDifference =
                                                      DateTime.now()
                                                          .difference(lastTime)
                                                          .inMilliseconds;
                                                  if (timeDifference > 799) {
                                                    context
                                                        .read<TimesheetBloc>()
                                                        .add(
                                                          TimesheetEvent
                                                              .updateStartStopCard(
                                                            initState
                                                                .listStartStopCard[
                                                                    index]
                                                                .projectId,
                                                            initState
                                                                .listStartStopCard[
                                                                    index]
                                                                .unravelingId,
                                                            index,
                                                            indexWeek,
                                                            0,
                                                            startTime,
                                                            endTime,
                                                            DateTime(0),
                                                            DateTime(0),
                                                            'update_time',
                                                          ),
                                                        );
                                                  }
                                                },
                                                updateWorkingHoursEndTime: (
                                                  startTime,
                                                  endTime,
                                                  indexWeek,
                                                ) async {
                                                  lastTime = DateTime.now();
                                                  await Future<void>.delayed(
                                                    const Duration(
                                                      milliseconds: 800,
                                                    ),
                                                  );
                                                  final timeDifference =
                                                      DateTime.now()
                                                          .difference(lastTime)
                                                          .inMilliseconds;
                                                  if (timeDifference > 799) {
                                                    context
                                                        .read<TimesheetBloc>()
                                                        .add(
                                                          TimesheetEvent
                                                              .updateStartStopCard(
                                                            initState
                                                                .listStartStopCard[
                                                                    index]
                                                                .projectId,
                                                            initState
                                                                .listStartStopCard[
                                                                    index]
                                                                .unravelingId,
                                                            index,
                                                            indexWeek,
                                                            0,
                                                            startTime,
                                                            endTime,
                                                            DateTime(0),
                                                            DateTime(0),
                                                            'update_time',
                                                          ),
                                                        );
                                                  }
                                                },
                                                addBreak: (
                                                  status,
                                                  startTime,
                                                  endTime,
                                                  indexWeek,
                                                ) {
                                                  context
                                                      .read<TimesheetBloc>()
                                                      .add(
                                                        TimesheetEvent
                                                            .updateStartStopCard(
                                                          initState
                                                              .listStartStopCard[
                                                                  index]
                                                              .projectId,
                                                          initState
                                                              .listStartStopCard[
                                                                  index]
                                                              .unravelingId,
                                                          index,
                                                          indexWeek,
                                                          0,
                                                          startTime,
                                                          endTime,
                                                          DateTime(0),
                                                          DateTime(0),
                                                          status,
                                                        ),
                                                      );
                                                },
                                                deleteBreak: (
                                                  status,
                                                  startTime,
                                                  endTime,
                                                  indexWeek,
                                                  indexBreak,
                                                ) {
                                                  context
                                                      .read<TimesheetBloc>()
                                                      .add(
                                                        TimesheetEvent
                                                            .updateStartStopCard(
                                                          initState
                                                              .listStartStopCard[
                                                                  index]
                                                              .projectId,
                                                          initState
                                                              .listStartStopCard[
                                                                  index]
                                                              .unravelingId,
                                                          index,
                                                          indexWeek,
                                                          indexBreak,
                                                          startTime,
                                                          endTime,
                                                          DateTime(0),
                                                          DateTime(0),
                                                          status,
                                                        ),
                                                      );
                                                },
                                                updateBreakStartTime: (
                                                  status,
                                                  startTime,
                                                  endTime,
                                                  startTimeBreak,
                                                  endTimeBreak,
                                                  indexWeek,
                                                  indexBreak,
                                                ) async {
                                                  lastTime = DateTime.now();
                                                  await Future<void>.delayed(
                                                    const Duration(
                                                      milliseconds: 800,
                                                    ),
                                                  );
                                                  final timeDifference =
                                                      DateTime.now()
                                                          .difference(lastTime)
                                                          .inMilliseconds;
                                                  if (timeDifference > 799) {
                                                    context
                                                        .read<TimesheetBloc>()
                                                        .add(
                                                          TimesheetEvent
                                                              .updateStartStopCard(
                                                            initState
                                                                .listStartStopCard[
                                                                    index]
                                                                .projectId,
                                                            initState
                                                                .listStartStopCard[
                                                                    index]
                                                                .unravelingId,
                                                            index,
                                                            indexWeek,
                                                            indexBreak,
                                                            startTime,
                                                            endTime,
                                                            startTimeBreak,
                                                            endTimeBreak,
                                                            status,
                                                          ),
                                                        );
                                                  }
                                                },
                                                updateBreakEndTime: (
                                                  status,
                                                  startTime,
                                                  endTime,
                                                  startTimeBreak,
                                                  endTimeBreak,
                                                  indexWeek,
                                                  indexBreak,
                                                ) async {
                                                  lastTime = DateTime.now();
                                                  await Future<void>.delayed(
                                                    const Duration(
                                                      milliseconds: 800,
                                                    ),
                                                  );
                                                  final timeDifference =
                                                      DateTime.now()
                                                          .difference(lastTime)
                                                          .inMilliseconds;
                                                  if (timeDifference > 799) {
                                                    context
                                                        .read<TimesheetBloc>()
                                                        .add(
                                                          TimesheetEvent
                                                              .updateStartStopCard(
                                                            initState
                                                                .listStartStopCard[
                                                                    index]
                                                                .projectId,
                                                            initState
                                                                .listStartStopCard[
                                                                    index]
                                                                .unravelingId,
                                                            index,
                                                            indexWeek,
                                                            indexBreak,
                                                            startTime,
                                                            endTime,
                                                            startTimeBreak,
                                                            endTimeBreak,
                                                            status,
                                                          ),
                                                        );
                                                  }
                                                },
                                              );
                                            },
                                          ),
                                          ListView.builder(
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount: rittenList.length,
                                            itemBuilder: (context, index) {
                                              return CardTimesheetRitten(
                                                projects: initState.projects,
                                                googleApiKey:
                                                    initState.googleApiKey,
                                              );
                                            },
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              showModalBottomSheet<void>(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder: (context) =>
                                                    TypesRegistration(
                                                  isReservationAdd: initState
                                                      .isReservationAdd,
                                                  isActiveHoursTimesheetButton:
                                                      initState
                                                          .isActiveHoursTimesheetButoon,
                                                  isActiveStartStopTimesheetButoon:
                                                      initState
                                                          .isActiveStartStopTimesheetButoon,
                                                ),
                                              );
                                            },
                                            child: initState.isEditableTimesheet
                                                ? Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                      top: 25,
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Text.rich(
                                                      TextSpan(
                                                        text:
                                                            'registration_timesheets_screen.add_registration'
                                                                .tr(),
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyLarge,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: '+',
                                                            style: Theme.of(
                                                              context,
                                                            )
                                                                .textTheme
                                                                .bodyLarge,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                : const SizedBox(),
                                          ),
                                        ],
                                      );
                                    },
                                    orElse: () => nil,
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              child: BlocBuilder<TimesheetBloc, TimesheetState>(
                                buildWhen: (previous, current) {
                                  bool result = true;
                                  current.maybeMap(
                                    loading: (_) => result = false,
                                    hoursError: (_) => result = false,
                                    orElse: () {},
                                  );
                                  return result;
                                },
                                builder: (context, state) {
                                  return state.maybeMap(
                                    init: (initState) {
                                      return initState.listHoursCards.isNotEmpty
                                          ? Column(
                                              children: [
                                                ListView.builder(
                                                  shrinkWrap: true,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  itemCount: initState
                                                      .listProjectsInfo.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Container(
                                                      decoration: BoxDecoration(
                                                        border: Border(
                                                          bottom: BorderSide(
                                                            color: TigrisColor
                                                                .blackOpacity20,
                                                          ),
                                                        ),
                                                      ),
                                                      margin: EdgeInsets.only(
                                                        top: index == 0
                                                            ? 56
                                                            : 16,
                                                        left: 16,
                                                        right: 16,
                                                      ),
                                                      height: 104,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                            height: 20,
                                                            child: Text(
                                                              initState
                                                                  .listProjectsInfo[
                                                                      index]
                                                                  .projectItem,
                                                              style: Theme.of(
                                                                context,
                                                              )
                                                                  .textTheme
                                                                  .labelSmall,
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 10,
                                                            ),
                                                            height: 20,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  '${'hours'.tr()}:',
                                                                  style: Theme
                                                                          .of(
                                                                    context,
                                                                  )
                                                                      .textTheme
                                                                      .labelSmall,
                                                                ),
                                                                Text(
                                                                  initState
                                                                      .listProjectsInfo[
                                                                          index]
                                                                      .hours,
                                                                  style: Theme
                                                                          .of(
                                                                    context,
                                                                  )
                                                                      .textTheme
                                                                      .labelSmall,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 10,
                                                            ),
                                                            height: 20,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  '${'costs'.tr()}:',
                                                                  style: Theme
                                                                          .of(
                                                                    context,
                                                                  )
                                                                      .textTheme
                                                                      .labelSmall,
                                                                ),
                                                                Text(
                                                                  '€${initState.listProjectsInfo[index].costs}',
                                                                  style: Theme
                                                                          .of(
                                                                    context,
                                                                  )
                                                                      .textTheme
                                                                      .labelSmall,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                    top: 16,
                                                    left: 16,
                                                    right: 16,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        '${'registration_timesheets_screen.total_hours'.tr()}:',
                                                        style: Theme.of(
                                                          context,
                                                        ).textTheme.labelSmall,
                                                      ),
                                                      Text(
                                                        initState.totalHours,
                                                        style: Theme.of(
                                                          context,
                                                        ).textTheme.labelSmall,
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
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        '${'registration_timesheets_screen.total_costs'.tr()}:',
                                                        style: Theme.of(
                                                          context,
                                                        ).textTheme.labelSmall,
                                                      ),
                                                      Text(
                                                        '€${initState.totalCosts}',
                                                        style: Theme.of(
                                                          context,
                                                        ).textTheme.labelSmall,
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          : const SizedBox();
                                    },
                                    orElse: () => nil,
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              child: BlocBuilder<TimesheetBloc, TimesheetState>(
                                buildWhen: (previous, current) {
                                  bool result = true;
                                  current.maybeMap(
                                    loading: (_) => result = false,
                                    hoursError: (_) => result = false,
                                    orElse: () {},
                                  );
                                  return result;
                                },
                                builder: (context, state) {
                                  return state.maybeMap(
                                    init: (initState) {
                                      return Column(
                                        children: [
                                          LayoutBuilder(
                                            builder: (context, constraints) {
                                              if (initState.isApprovalInfo) {
                                                return Column(
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                        top: 16,
                                                        left: 16,
                                                        right: 16,
                                                      ),
                                                      child:
                                                          TigrisButton.primary(
                                                        text:
                                                            'registration_timesheets_screen.approve'
                                                                .tr(),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                        top: 16,
                                                        left: 16,
                                                        right: 16,
                                                      ),
                                                      child:
                                                          TigrisButton.primary(
                                                        backgroundColor:
                                                            TigrisColor
                                                                .blackOpacity30,
                                                        textColor:
                                                            TigrisColor.white,
                                                        text:
                                                            'registration_timesheets_screen.reject'
                                                                .tr(),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              } else {
                                                return const SizedBox();
                                              }
                                            },
                                          ),
                                          LayoutBuilder(
                                            builder: (context, constraints) {
                                              if (initState.hideSend) {
                                                return Container(
                                                  margin: const EdgeInsets.only(
                                                    top: 16,
                                                    left: 16,
                                                    right: 16,
                                                  ),
                                                  child: TigrisButton.primary(
                                                    text:
                                                        'registration_timesheets_screen.send'
                                                            .tr(),
                                                    onPressed: () {
                                                      if (double.parse(
                                                                initState
                                                                    .totalHours,
                                                              ) !=
                                                              0 ||
                                                          initState
                                                              .listExpensesCards
                                                              .isNotEmpty) {
                                                        context
                                                            .read<
                                                                TimesheetBloc>()
                                                            .add(
                                                              const TimesheetEvent
                                                                  .saveTimesheet(
                                                                true,
                                                              ),
                                                            );
                                                      }
                                                    },
                                                  ),
                                                );
                                              } else {
                                                return const SizedBox();
                                              }
                                            },
                                          ),
                                          LayoutBuilder(
                                            builder: (context, constraints) {
                                              if (initState
                                                  .isEditableTimesheet) {
                                                return Container(
                                                  margin: const EdgeInsets.only(
                                                    top: 16,
                                                    left: 16,
                                                    right: 16,
                                                  ),
                                                  child: TigrisButton.primary(
                                                    backgroundColor: double
                                                                    .parse(
                                                                  initState
                                                                      .totalHours,
                                                                ) !=
                                                                0 ||
                                                            initState
                                                                    .listExpensesCards
                                                                    .isNotEmpty &&
                                                                initState
                                                                    .listExpensesCards
                                                                    .first
                                                                    .cpcExpenseTypeConfigId
                                                                    .isNotEmpty
                                                        ? TigrisColor
                                                            .greenOpacity100
                                                        : TigrisColor
                                                            .blackOpacity30,
                                                    textColor: double.parse(
                                                                  initState
                                                                      .totalHours,
                                                                ) !=
                                                                0 ||
                                                            initState
                                                                    .listExpensesCards
                                                                    .isNotEmpty &&
                                                                initState
                                                                    .listExpensesCards
                                                                    .first
                                                                    .cpcExpenseTypeConfigId
                                                                    .isNotEmpty
                                                        ? TigrisColor
                                                            .blackOpacity100
                                                        : TigrisColor.white,
                                                    text: 'button_save'.tr(),
                                                    onPressed: () {
                                                      if (double.parse(
                                                                initState
                                                                    .totalHours,
                                                              ) !=
                                                              0 ||
                                                          initState
                                                              .listExpensesCards
                                                              .isNotEmpty) {
                                                        context
                                                            .read<
                                                                TimesheetBloc>()
                                                            .add(
                                                              const TimesheetEvent
                                                                  .saveTimesheet(
                                                                false,
                                                              ),
                                                            );
                                                      }
                                                    },
                                                  ),
                                                );
                                              } else {
                                                return const SizedBox();
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
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            const SizedBox(
                              height: 25,
                            )
                          ],
                        ),
                      ],
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        if (openCalendar) {
                          return BlocBuilder<TimesheetBloc, TimesheetState>(
                            builder: (context, state) {
                              return state.maybeMap(
                                init: (initState) {
                                  return TigrisCalendarTimesheet(
                                    listTimesheets: initState.listTimesheets,
                                    dateTimeSelected: dateTime,
                                    width: width,
                                    nextMonth: (value) {
                                      setState(() {
                                        selectedWeek = true;
                                      });
                                      context.read<TimesheetBloc>().add(
                                            TimesheetEvent
                                                .getTimesheetsForCurrentPeriod(
                                              value.year,
                                              value.month - 1,
                                              widget.placementId,
                                            ),
                                          );
                                    },
                                    monthAgo: (value) {
                                      setState(() {
                                        selectedWeek = true;
                                      });
                                      context.read<TimesheetBloc>().add(
                                            TimesheetEvent
                                                .getTimesheetsForCurrentPeriod(
                                              value.year,
                                              value.month - 1,
                                              widget.placementId,
                                            ),
                                          );
                                    },
                                    onChanged: (monday) {
                                      if ((monday.isAfter(
                                                initState.placementStartDate,
                                              ) ||
                                              monday ==
                                                  initState
                                                      .placementStartDate) &&
                                          (monday ==
                                                  initState.placementEndDate ||
                                              monday.isBefore(
                                                initState.placementEndDate,
                                              ))) {
                                        setState(() {
                                          openCalendar = false;
                                          selectedWeek = true;
                                          dateTime = monday;
                                        });
                                      }
                                      context.read<TimesheetBloc>().add(
                                            TimesheetEvent.selectWeek(
                                              monday,
                                            ),
                                          );
                                    },
                                  );
                                },
                                orElse: () => nil,
                              );
                            },
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
        ),
      ),
    );
  }
}
