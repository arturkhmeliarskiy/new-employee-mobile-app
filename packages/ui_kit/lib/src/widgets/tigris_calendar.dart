import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/src/constants/assets/tigris_images.dart';
import 'package:ui_kit/src/constants/colors/tigris_color.dart';
import 'package:ui_kit/src/widgets/tigris_image.dart';

class TigrisCalendar extends StatefulWidget {
  final DateTime date;
  final DateTime selectDate;
  final List<int> datesOfAssignedTasks;
  final Function callback;
  const TigrisCalendar({
    required this.date,
    required this.selectDate,
    required this.datesOfAssignedTasks,
    required this.callback,
    Key? key,
  }) : super(key: key);

  @override
  State<TigrisCalendar> createState() => _TigrisCalendarState();
}

class _TigrisCalendarState extends State<TigrisCalendar> {
  final List<String> weekdays = TigrisMenuOption().weekdays;
  int pressedDay = 0;

  bool isDayOff(int month, int year, int day) {
    final DateTime date = DateTime(
      year,
      month,
      day,
    );
    if (date.weekday == DateTime.saturday || date.weekday == DateTime.sunday) {
      return true;
    } else {
      return false;
    }
  }

  bool onTasks(int day) {
    bool result = false;
    widget.datesOfAssignedTasks.forEach(
      (e) => {
        if (e == day)
          {
            result = true,
          }
      },
    );
    return result;
  }

  @override
  Widget build(BuildContext context) {
    pressedDay = widget.date.month == widget.selectDate.month
        ? widget.selectDate.day
        : 0;
    final DateTime date = DateTime(
      widget.date.year,
      widget.date.month,
    );

    final TextStyle? textStyle = Theme.of(context).textTheme.labelSmall;

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: TigrisColor.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            border: Border.all(
              color: TigrisColor.blackOpacity10,
            ),
            boxShadow: [
              BoxShadow(
                color: TigrisColor.blackOpacity20,
                blurRadius: 5,
                offset: const Offset(
                  0,
                  5,
                ),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 7,
                  crossAxisSpacing: 3,
                  children: List.generate(weekdays.length, (index) {
                    return Center(
                      child: Text(
                        weekdays[index],
                        style: textStyle,
                      ),
                    );
                  }),
                ),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 7,
                  crossAxisSpacing: 4,
                  children: List.generate(
                      DateTime(widget.date.year, widget.date.month + 1, 0).day +
                          date.weekday -
                          1, (index) {
                    final bool today = date.year == DateTime.now().year &&
                        date.month == DateTime.now().month &&
                        date
                                .add(
                                  Duration(
                                    days: index - date.weekday + 1,
                                  ),
                                )
                                .day ==
                            DateTime.now().day;
                    final bool firstDay = date
                        .add(
                          Duration(
                            days: index - date.weekday + 1,
                          ),
                        )
                        .isAfter(DateTime.now());
                    final int dayNumber =
                        date.add(Duration(days: index - date.weekday + 1)).day;
                    if (index + 1 < date.weekday) {
                      return const SizedBox();
                    } else if (today) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            pressedDay = dayNumber;
                          });
                          widget.callback(
                            DateTime(
                              widget.date.year,
                              widget.date.month,
                              dayNumber,
                            ),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: dayNumber != pressedDay
                                    ? Colors.transparent
                                    : TigrisColor.greenOpacity100,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$dayNumber',
                                  style: dayNumber != pressedDay
                                      ? textStyle?.copyWith(
                                          color: TigrisColor.greenOpacity100,
                                        )
                                      : textStyle?.copyWith(
                                          color: TigrisColor.white,
                                        ),
                                ),
                              ),
                            ),
                            if (onTasks(dayNumber))
                              TigrisImage(
                                image: TigrisImages.check,
                                color: TigrisColor.greenOpacity100,
                                width: 12.0,
                              )
                            else
                              const SizedBox(
                                height: 12,
                              ),
                          ],
                        ),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            pressedDay = dayNumber;
                          });
                          widget.callback(
                            DateTime(
                              widget.date.year,
                              widget.date.month,
                              dayNumber,
                            ),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: dayNumber != pressedDay
                                    ? Colors.transparent
                                    : firstDay
                                        ? TigrisColor.blackOpacity100
                                        : TigrisColor.blackOpacity30,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$dayNumber',
                                  style: dayNumber != pressedDay
                                      ? firstDay &&
                                              !isDayOff(
                                                date.month,
                                                date.year,
                                                dayNumber,
                                              )
                                          ? textStyle
                                          : textStyle?.copyWith(
                                              color: TigrisColor.blackOpacity30,
                                            )
                                      : textStyle?.copyWith(
                                          color: TigrisColor.white,
                                        ),
                                ),
                              ),
                            ),
                            if (onTasks(dayNumber))
                              TigrisImage(
                                image: TigrisImages.check,
                                color: firstDay &&
                                        !isDayOff(
                                          date.month,
                                          date.year,
                                          dayNumber,
                                        )
                                    ? TigrisColor.greenOpacity100
                                    : TigrisColor.blackOpacity30,
                                width: 12.0,
                              )
                            else
                              const SizedBox(
                                height: 12,
                              ),
                          ],
                        ),
                      );
                    }
                  }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
