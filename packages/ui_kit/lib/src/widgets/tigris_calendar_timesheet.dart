import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class TigrisCalendarTimesheet extends StatefulWidget {
  final double width;
  final void Function(DateTime) onChanged;
  final void Function(DateTime) nextMonth;
  final void Function(DateTime) monthAgo;
  final List<Map<int, String>> listTimesheets;
  final DateTime dateTimeSelected;

  const TigrisCalendarTimesheet({
    required this.width,
    required this.onChanged,
    required this.nextMonth,
    required this.monthAgo,
    required this.listTimesheets,
    required this.dateTimeSelected,
    Key? key,
  }) : super(key: key);

  @override
  State<TigrisCalendarTimesheet> createState() =>
      _TigrisCalendarTimesheetState();
}

class _TigrisCalendarTimesheetState extends State<TigrisCalendarTimesheet> {
  int counter = 0;
  int itemWeek = 0;
  int currentWeek = 0;
  bool orderWeek = false;
  bool isSelected = true;
  DateTime dateTime = DateTime.now();
  bool selectedWeek = false;
  final dateFormat = DateFormat('yyyy-MM-dd');

  @override
  void initState() {
    dateTime = DateTime(
      widget.dateTimeSelected.year,
      widget.dateTimeSelected.month,
      widget.dateTimeSelected.day,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> listOfDays = TigrisMenuOption().weekdays;
    final TextStyle? textStyle = Theme.of(context).textTheme.labelSmall;
    final DateTime date = DateTime(
      dateTime.year,
      dateTime.month + counter,
    );

    final month = DateFormat.MMMM(context.locale.toString()).format(date);
    final indexMonday = [0, 8, 15, 22, 29, 36];
    final List<DateTime> listMonday = <DateTime>[];
    final List<int> weekNumber = <int>[];

    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 380),
        decoration: BoxDecoration(
          color: TigrisColor.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(
            color: TigrisColor.blackOpacity20,
          ),
          boxShadow: [
            BoxShadow(
              color: TigrisColor.blackOpacity20,
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        height: 340,
        width: widget.width * 0.9,
        child: Column(
          children: [
            SizedBox(
              height: widget.width * 0.15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        counter = counter - 1;
                        widget.monthAgo(
                          DateTime(
                            dateTime.year,
                            dateTime.month + counter,
                          ),
                        );
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 14),
                      padding: const EdgeInsets.all(5),
                      height: 37,
                      width: 37,
                      decoration: BoxDecoration(
                        color: TigrisColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(4),
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
                      child: TigrisImage(
                        image: TigrisImages.chevronLeft,
                        color: TigrisColor.blackOpacity100,
                      ),
                    ),
                  ),
                  Container(
                    width: widget.width - 9 * 2 - 37 * 4,
                    height: 37,
                    alignment: Alignment.center,
                    child: Text(
                      '$month ${date.year}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        counter = counter + 1;
                        widget.nextMonth(
                          DateTime(
                            dateTime.year,
                            dateTime.month + counter,
                          ),
                        );
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 14),
                      padding: const EdgeInsets.all(5),
                      height: 37,
                      width: 37,
                      decoration: BoxDecoration(
                        color: TigrisColor.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(4),
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
                      child: TigrisImage(
                        image: TigrisImages.chevronRight,
                        color: TigrisColor.blackOpacity100,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 54),
                        height: 263,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 32,
                              width: widget.width * 0.73,
                              child: GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                crossAxisCount: 7,
                                crossAxisSpacing: 3,
                                children:
                                    List.generate(listOfDays.length, (index) {
                                  return Center(
                                    child: Text(
                                      listOfDays[index],
                                      style: textStyle,
                                    ),
                                  );
                                }),
                              ),
                            ),
                            SizedBox(
                              height: 230,
                              width: widget.width * 0.73,
                              child: GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                crossAxisCount: 7,
                                crossAxisSpacing: 2.7,
                                children: List.generate(42, (index) {
                                  final DateTime timeOfDay = date.add(
                                    Duration(
                                      days: index - date.weekday + 1,
                                    ),
                                  );
                                  final int dayNumber = date
                                      .add(
                                        Duration(
                                          days: index - date.weekday + 1,
                                        ),
                                      )
                                      .day;

                                  if (indexMonday
                                      .contains(index == 0 ? 0 : index + 1)) {
                                    listMonday.add(
                                      date.add(
                                        Duration(
                                          days: index - date.weekday + 1,
                                        ),
                                      ),
                                    );
                                  }
                                  final DateTime timeDay = date.add(
                                    Duration(
                                      days: index - date.weekday + 1,
                                    ),
                                  );
                                  final timeNow = dateFormat.format(timeDay);
                                  final dateTimeNow =
                                      dateFormat.format(DateTime.now());

                                  if (timeNow == dateTimeNow) {
                                    return GestureDetector(
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 25,
                                            width: 25,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: TigrisColor.greenOpacity80,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(15),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '$dayNumber',
                                                style: textStyle?.copyWith(
                                                  color: TigrisColor.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  } else {
                                    return GestureDetector(
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            height: 25,
                                            width: 25,
                                            child: Center(
                                              child: Text(
                                                '$dayNumber',
                                                style: timeOfDay.month !=
                                                        date.month
                                                    ? textStyle?.copyWith(
                                                        color: TigrisColor
                                                            .blackOpacity30,
                                                      )
                                                    : textStyle,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                }),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 35),
                            height: 228,
                            width: 15,
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: listMonday.length,
                              itemBuilder: (_, index) {
                                final isTimesheets = widget.listTimesheets
                                    .where(
                                      (element) =>
                                          element.keys.single ==
                                          DateService()
                                              .isoWeekNumber(listMonday[index]),
                                    )
                                    .toList();

                                if (listMonday[index].year ==
                                    widget.dateTimeSelected.year) {
                                  weekNumber.add(
                                    DateService()
                                        .isoWeekNumber(listMonday[index]),
                                  );
                                }

                                currentWeek = weekNumber.indexOf(
                                  DateService().isoWeekNumber(DateTime.now()),
                                );

                                if (isTimesheets.isNotEmpty &&
                                    currentWeek != index) {
                                  return Container(
                                    margin: EdgeInsets.only(
                                      top: index == 0 ? 12 : 26.5,
                                    ),
                                    height: 12,
                                    width: 10,
                                    child: TigrisImage(
                                      image: isTimesheets.first.values.single,
                                      color: isTimesheets.first.values.single ==
                                              TigrisImages.check
                                          ? TigrisColor.greenOpacity100
                                          : TigrisColor.blackOpacity50,
                                      fit: BoxFit.fill,
                                    ),
                                  );
                                } else {
                                  return Container(
                                    margin: EdgeInsets.only(
                                      top: index == 0 ? 12 : 25.8,
                                    ),
                                    height: 12,
                                    width: 10,
                                  );
                                }
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: TigrisColor.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(4),
                              ),
                              border: Border.all(
                                color: TigrisColor.greenOpacity100,
                              ),
                            ),
                            width: 37,
                            height: 270,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    'week'.tr()[0] +
                                        'week'.tr()['week'.tr().length - 1],
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                                ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: listMonday.length,
                                  itemBuilder: (_, index) {
                                    return Container(
                                      margin: EdgeInsets.only(
                                        top: index == 0 ? 11 : 15.2,
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${DateService().isoWeekNumber(listMonday[index])}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: TigrisColor.blackOpacity50,
                                            ),
                                      ),
                                    );
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 28,
                    left: 5,
                    right: 5,
                  ),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: listMonday.length,
                    itemBuilder: (_, index) {
                      if (isSelected) {
                        itemWeek = weekNumber.indexOf(
                          DateService().isoWeekNumber(widget.dateTimeSelected),
                        );
                      }

                      final isTimesheets = widget.listTimesheets
                          .where(
                            (element) =>
                                element.keys.single ==
                                DateService().isoWeekNumber(listMonday[index]),
                          )
                          .toList();
                      if (currentWeek == index) {
                        selectedWeek = true;
                      } else {
                        selectedWeek = isTimesheets.isEmpty;
                      }

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            itemWeek = index;
                            isSelected = false;
                            if (isTimesheets.isEmpty) {
                              widget.onChanged(listMonday[index]);
                            }
                          });
                        },
                        child: Stack(
                          children: [
                            if (itemWeek == index && selectedWeek)
                              Container(
                                width: widget.width,
                                margin: EdgeInsets.only(
                                  top: index == 0
                                      ? 5
                                      : index == 1
                                          ? 3
                                          : 1,
                                ),
                                height: 40,
                                child: TigrisImage(
                                  image: TigrisImages.staples,
                                  color: TigrisColor.greenOpacity100,
                                  fit: BoxFit.fill,
                                ),
                              )
                            else
                              const SizedBox(),
                            Container(
                              margin: EdgeInsets.only(
                                top: index == 0
                                    ? 7
                                    : index == 1
                                        ? 5
                                        : 3.4,
                              ),
                              decoration: BoxDecoration(
                                color: itemWeek == index && selectedWeek
                                    ? TigrisColor.greenOpacity20
                                    : Colors.transparent,
                              ),
                              height: 35,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
