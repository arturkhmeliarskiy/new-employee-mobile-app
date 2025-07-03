import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:tigris/screen/calendar/shift_information.dart';
import 'package:ui_kit/ui_kit.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime date = DateTime.now();
  DateTime selectDate = DateTime.now();
  int onMonth = DateTime.now().month;
  int onYear = DateTime.now().year;

  void callBack(DateTime newDate) {
    setState(() {
      selectDate = newDate;
    });
    context.read<CalendarBloc>().add(
          CalendarEvent.selectDate(selectDate),
        );
  }

  @override
  void initState() {
    context.read<CalendarBloc>().add(
          CalendarEvent.showMonth(date),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final month = DateFormat.MMMM(context.locale.toString()).format(date);
    final height = MediaQuery.of(context).size.height * 0.95;

    return Container(
      height: height,
      decoration: const BoxDecoration(
        color: TigrisColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: BlocListener<CalendarBloc, CalendarState>(
        listener: (context, state) => state.maybeMap(
          loading: (_) {
            LoadingDialog.close();
            date = DateTime(
              onYear,
              onMonth,
              selectDate.month == onMonth ? selectDate.day : 1,
            );
            context.read<CalendarBloc>().add(
                  CalendarEvent.selectDate(date),
                );
            return null;
          },
          error: (state) =>
              TigrisMessage().showOverlay(context, state.message, false),
          orElse: () {
            return null;
          },
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * .08,
              child: const TigrisButtonBack(),
            ),
            SizedBox(
              height: height * .92,
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: height * .05,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'calendar_screen.planned_shifts'.tr(),
                        style: Theme.of(context).textTheme.labelMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * .07,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'bottom_nav_bar_item.calendar'.tr(),
                          style: Theme.of(context).textTheme.labelSmall,
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(),
                        Text(
                          '$month ${DateFormat('y').format(date)}',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(color: TigrisColor.greenOpacity100),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (onMonth == 1) {
                                    onMonth = 13;
                                    onYear--;
                                  }
                                  onMonth--;
                                  date = DateTime(
                                    onYear,
                                    onMonth,
                                  );

                                  context.read<CalendarBloc>().add(
                                        CalendarEvent.showMonth(
                                          date,
                                        ),
                                      );
                                });
                              },
                              child: const TigrisImage(
                                image: TigrisImages.chevronLeft,
                                color: TigrisColor.grey,
                                width: 30.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (onMonth == 12) {
                                    onMonth = 0;
                                    onYear++;
                                  }
                                  onMonth++;
                                  date = DateTime(
                                    onYear,
                                    onMonth,
                                  );

                                  context.read<CalendarBloc>().add(
                                        CalendarEvent.showMonth(
                                          date,
                                        ),
                                      );
                                });
                              },
                              child: const TigrisImage(
                                image: TigrisImages.chevronRight,
                                color: TigrisColor.grey,
                                width: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<CalendarBloc, CalendarState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        init: (state) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TigrisCalendar(
                              date: date,
                              selectDate: selectDate,
                              datesOfAssignedTasks: const [],
                              callback: callBack,
                            ),
                          );
                        },
                        request: (state) {
                          final monthShift = DateFormat.MMM(
                            context.locale.toString(),
                          ).format(
                            selectDate,
                          );
                          final dayWeek = DateFormat.EEEE(
                            context.locale.toString(),
                          ).format(
                            selectDate,
                          );
                          String capitalize(String s) =>
                              s[0].toUpperCase() + s.substring(1);
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: TigrisCalendar(
                                  date: state.date,
                                  selectDate: selectDate,
                                  datesOfAssignedTasks: state.shiftDays,
                                  callback: callBack,
                                ),
                              ),
                              LayoutBuilder(
                                builder: (context, constraints) {
                                  if (state.planned.isNotEmpty) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: height * .05,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                selectDate.day ==
                                                        DateTime.now().day
                                                    ? 'calendar_screen.today'
                                                        .tr()
                                                    : '${selectDate.day} $month ',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall,
                                                textAlign: TextAlign.left,
                                              ),
                                              Text(
                                                'calendar_screen.planned'.tr(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall
                                                    ?.copyWith(
                                                      color: TigrisColor
                                                          .blackOpacity40,
                                                    ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ],
                                          ),
                                        ),
                                        ShadowBoxTigris(
                                          widget: [
                                            ListView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: state.planned.length,
                                              itemBuilder: (_, index) {
                                                return GestureDetector(
                                                  onTap: () =>
                                                      showModalBottomSheet<
                                                          void>(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    context: context,
                                                    isScrollControlled: true,
                                                    builder: (ctx) =>
                                                        ShiftInformation(
                                                      selectDay: selectDate,
                                                      shift:
                                                          state.planned[index],
                                                    ),
                                                  ),
                                                  child: TigrisShiftCard(
                                                    index: index,
                                                    linkLogo: state
                                                        .planned[index]
                                                        .logoAgency,
                                                    titleCard: state
                                                        .planned[index]
                                                        .companyName,
                                                    titleCenter: state
                                                        .planned[index].title,
                                                    titleBottom:
                                                        '${capitalize(dayWeek)} ${selectDate.day} ${monthShift.toLowerCase()}.',
                                                    timePeriod:
                                                        '${state.planned[index].startTime} - ${state.planned[index].endTime}',
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * .025,
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
                                  if (state.available.isNotEmpty) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: state.planned.isNotEmpty
                                              ? height * .025
                                              : height * .05,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                selectDate.day ==
                                                        DateTime.now().day
                                                    ? 'calendar_screen.today'
                                                        .tr()
                                                    : '${selectDate.day} $month ',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall,
                                                textAlign: TextAlign.left,
                                              ),
                                              Text(
                                                'calendar_screen.available'
                                                    .tr(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall
                                                    ?.copyWith(
                                                      color: TigrisColor
                                                          .blackOpacity40,
                                                    ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ],
                                          ),
                                        ),
                                        ShadowBoxTigris(
                                          widget: [
                                            ListView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: state.available.length,
                                              itemBuilder: (_, index) {
                                                return GestureDetector(
                                                  onTap: () =>
                                                      showModalBottomSheet<
                                                          void>(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    context: context,
                                                    isScrollControlled: true,
                                                    builder: (ctx) =>
                                                        ShiftInformation(
                                                      selectDay: selectDate,
                                                      shift: state
                                                          .available[index],
                                                    ),
                                                  ),
                                                  child: TigrisShiftCard(
                                                    index: index,
                                                    linkLogo: state
                                                        .available[index]
                                                        .logoAgency,
                                                    titleCard: state
                                                        .available[index]
                                                        .companyName,
                                                    titleCenter: state
                                                        .available[index].title,
                                                    titleBottom:
                                                        '${capitalize(dayWeek)} ${selectDate.day} ${monthShift.toLowerCase()}.',
                                                    timePeriod:
                                                        '${state.available[index].startTime} - ${state.available[index].endTime}',
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  } else {
                                    return const SizedBox();
                                  }
                                },
                              ),
                              SizedBox(
                                height: height * .025,
                              ),
                            ],
                          );
                        },
                        orElse: () => nil,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
