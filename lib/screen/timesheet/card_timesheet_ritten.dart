import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';
import 'package:tigris/screen/timesheet/calculator_modal_window.dart';
import 'package:ui_kit/ui_kit.dart';

class CardTimesheetRitten extends StatefulWidget {
  final List<Map<String, String>> projects;
  final String googleApiKey;

  const CardTimesheetRitten({
    required this.projects,
    this.googleApiKey = '',
    Key? key,
  }) : super(key: key);

  @override
  State<CardTimesheetRitten> createState() => _CardTimesheetReservationState();
}

class _CardTimesheetReservationState extends State<CardTimesheetRitten> {
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
          height: 250,
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
                    Row(
                      children: [
                        Text(
                          'Ritten',
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: GestureDetector(
                            onTap: () async => showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) => CalculatorModalWindow(
                                googleApiKey: widget.googleApiKey,
                              ),
                            ),
                            child: TigrisImage(
                              image: TigrisImages.calculator,
                              width: 25,
                              color: TigrisColor.greenOpacity100,
                            ),
                          ),
                        )
                      ],
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return GestureDetector(
                          onTap: () {},
                          child: TigrisImage(
                            image: TigrisImages.x,
                            width: 25,
                            color: TigrisColor.redOpacity100,
                          ),
                        );
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
                  items: widget.projects,
                  nameItem: widget.projects.first.values.first,
                  onSelected: (costKey) {
                    setState(() {});
                  },
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
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
                                style: Theme.of(
                                  context,
                                ).textTheme.labelSmall,
                              ),
                              Container(
                                height: 54,
                                width: 54,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: TigrisColor.white,
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
                                  textAlign: TextAlign.center,
                                  textInputAction: indexWeek != 6
                                      ? TextInputAction.next
                                      : TextInputAction.done,
                                  maxLength: 6,
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {},
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
                                  style: Theme.of(
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
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
