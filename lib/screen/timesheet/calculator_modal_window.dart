import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class CalculatorModalWindow extends StatefulWidget {
  final String googleApiKey;
  const CalculatorModalWindow({
    required this.googleApiKey,
    Key? key,
  }) : super(key: key);

  @override
  State<CalculatorModalWindow> createState() => _CalculatorModalWindowState();
}

class _CalculatorModalWindowState extends State<CalculatorModalWindow> {
  bool isSwitch = false;

  double distance = 0.0;

  double startLocationLatitude = 0.0;
  double startLocationLongitude = 0.0;

  final listWeekDaySelected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: MediaQuery.of(context).viewInsets,
      height: height * 0.8,
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
              'Calculator',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
              bottom: 5,
            ),
            child: Row(
              children: [
                Text(
                  'From',
                  style: Theme.of(context).textTheme.labelSmall,
                )
              ],
            ),
          ),
          TigrisSearchInput(
            googleApiKey: widget.googleApiKey,
            location: (locationLatitude, locationLongitude) {
              startLocationLatitude = locationLatitude;
              startLocationLongitude = locationLongitude;
            },
            totalDistance: (totalDistance) {
              setState(() {
                distance = totalDistance;
              });
            },
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 10,
              left: 15,
              right: 15,
              bottom: 5,
            ),
            child: Row(
              children: [
                Text(
                  'To',
                  style: Theme.of(context).textTheme.labelSmall,
                )
              ],
            ),
          ),
          TigrisSearchInput(
            googleApiKey: widget.googleApiKey,
            location: (locationLatitude, locationLongitude) {},
            totalDistance: (totalDistance) {
              setState(() {
                distance = totalDistance;
              });
            },
            startLocationLatitude: startLocationLatitude,
            startLocationLongitude: startLocationLongitude,
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 27,
              left: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Text(
                            'Return',
                            style: Theme.of(context).textTheme.labelSmall,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 8.6,
                      ),
                      child: TigrisSwitchAnimated(
                        width: 91,
                        height: 41,
                        toggleSize: 29,
                        value: isSwitch,
                        showOnOff: true,
                        onToggle: (value) {
                          setState(() {
                            isSwitch = value;
                          });
                        },
                        isShadow: true,
                        activeColor: TigrisColor.greenOpacity100,
                        inactiveColor: TigrisColor.redOpacity100,
                        activeText: 'Yes',
                        inactiveText: 'No',
                        valueFontSize: 18,
                        padding: 6,
                        activeTextColor: TigrisColor.blackOpacity100,
                        inactiveTextColor: TigrisColor.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 64,
                  width: 107,
                  margin: const EdgeInsets.only(
                    right: 16,
                    left: 16,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: TigrisColor.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        15,
                      ),
                    ),
                    border: Border.all(color: TigrisColor.blackOpacity20),
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
                  child: Text(
                    isSwitch
                        ? '${distance.toInt() * 2} km'
                        : '${distance.toInt()} km',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 64,
            margin: const EdgeInsets.only(top: 9, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 1,
                  width: 73,
                  color: TigrisColor.grey,
                ),
                Text(
                  'Add to',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Container(
                  height: 1,
                  width: 73,
                  color: TigrisColor.grey,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 4.6),
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    for (int i = 0; i < 4; i++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            listWeekDaySelected[i] = !listWeekDaySelected[i];
                          });
                        },
                        child: Container(
                          height: 64,
                          width: 64,
                          margin: const EdgeInsets.only(
                            right: 16,
                            left: 16,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: listWeekDaySelected[i]
                                ? TigrisColor.greenOpacity10
                                : TigrisColor.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                15,
                              ),
                            ),
                            border: Border.all(
                              color: listWeekDaySelected[i]
                                  ? TigrisColor.greenOpacity10
                                  : TigrisColor.blackOpacity20,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: listWeekDaySelected[i]
                                    ? TigrisColor.greenOpacity10
                                    : TigrisColor.blackOpacity10,
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(
                                  0,
                                  3,
                                ), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Text(
                            TigrisMenuOption().weekday[i][0] +
                                TigrisMenuOption().weekday[i][1],
                            style: Theme.of(
                              context,
                            ).textTheme.labelSmall,
                          ),
                        ),
                      )
                  ],
                ),
                Row(
                  children: [
                    for (int i = 0; i < 3; i++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            listWeekDaySelected[4 + i] =
                                !listWeekDaySelected[4 + i];
                          });
                        },
                        child: Container(
                          height: 64,
                          width: 64,
                          margin: const EdgeInsets.only(
                            right: 16,
                            left: 16,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: listWeekDaySelected[4 + i]
                                ? TigrisColor.greenOpacity10
                                : TigrisColor.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                15,
                              ),
                            ),
                            border: Border.all(
                              color: listWeekDaySelected[4 + i]
                                  ? TigrisColor.greenOpacity10
                                  : TigrisColor.blackOpacity20,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: listWeekDaySelected[4 + i]
                                    ? TigrisColor.greenOpacity10
                                    : TigrisColor.blackOpacity10,
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(
                                  0,
                                  3,
                                ), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Text(
                            TigrisMenuOption().weekday[4 + i][0] +
                                TigrisMenuOption().weekday[4 + i][1],
                            style: Theme.of(
                              context,
                            ).textTheme.labelSmall,
                          ),
                        ),
                      ),
                    Container(
                      height: 64,
                      width: 64,
                      margin: const EdgeInsets.only(
                        left: 16,
                      ),
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Add',
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(
                                color: TigrisColor.greenOpacity100,
                              ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
