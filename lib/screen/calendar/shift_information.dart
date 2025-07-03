import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:view_models/view_models.dart';

class ShiftInformation extends StatelessWidget {
  final DateTime selectDay;
  final CalendarShiftsModel shift;
  const ShiftInformation({
    required this.selectDay,
    required this.shift,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final month = DateFormat.MMMM(context.locale.toString()).format(selectDay);
    final height = MediaQuery.of(context).size.height * 0.65;
    final width = MediaQuery.of(context).size.width;
    final bool isAcepted = shift.status == 'Accepted';
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
          init: (_) => LoadingDialog.show(context),
          shiftStatusChanged: (_) {
            Navigator.pop(context);
            LoadingDialog.close();
            context.read<CalendarBloc>().add(
                  CalendarEvent.showMonth(selectDay),
                );

            return null;
          },
          error: (state) {
            LoadingDialog.close();
            TigrisMessage().showOverlay(context, state.message, false);
            return null;
          },
          orElse: () {
            return null;
          },
        ),
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: height * 0.13,
                ),
                Text(
                  shift.companyName.tr(),
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
                Text(
                  shift.title.tr(),
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge?.copyWith(
                        fontSize: 24,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${selectDay.day} $month',
                      style: Theme.of(
                        context,
                      ).textTheme.labelSmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      ' ${shift.startTime} - ${shift.endTime}'.tr(),
                      style: Theme.of(
                        context,
                      ).textTheme.labelSmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'calendar_screen.description'.tr(),
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    shift.description.tr(),
                    style: Theme.of(
                      context,
                    ).textTheme.labelLarge?.copyWith(
                          fontSize: 20,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    if (shift.country.isNotEmpty) {
                      return Text(
                        'calendar_screen.location'.tr(),
                        style: Theme.of(
                          context,
                        ).textTheme.labelSmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    if (shift.location.isNotEmpty && shift.street.isNotEmpty) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          '${shift.location} ${shift.street}',
                          style: Theme.of(
                            context,
                          ).textTheme.labelLarge?.copyWith(
                                fontSize: 20,
                              ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    if (shift.postalCode.isNotEmpty &&
                        shift.mailingCity.isNotEmpty) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          '${shift.postalCode} ${shift.mailingCity}',
                          style: Theme.of(
                            context,
                          ).textTheme.labelLarge?.copyWith(
                                fontSize: 20,
                              ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    if (shift.country.isNotEmpty) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          shift.country,
                          style: Theme.of(
                            context,
                          ).textTheme.labelLarge?.copyWith(
                                fontSize: 20,
                              ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
                SizedBox(
                  height: isAcepted ? 15 : width * .25,
                ),
              ],
            ),
            const Positioned(
              top: 0,
              child: TigrisButtonBack(),
            ),
            Positioned(
              bottom: 0,
              child: isAcepted
                  ? const SizedBox()
                  : Container(
                      height: width * .23,
                      width: width,
                      color: TigrisColor.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'calendar_screen.ask_acceptance'.tr(),
                            style: Theme.of(
                              context,
                            ).textTheme.labelSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: width * .01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  context.read<CalendarBloc>().add(
                                        CalendarEvent.pressedReject(
                                          selectDay,
                                          shift.id,
                                        ),
                                      );
                                },
                                child: Container(
                                  padding: EdgeInsets.all(width * .01),
                                  height: width * .12,
                                  width: width * .12,
                                  decoration: BoxDecoration(
                                    color: TigrisColor.redOpacity100,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                  child: const TigrisImage(
                                    image: TigrisImages.x,
                                    color: TigrisColor.white,
                                    width: 20.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * .1,
                              ),
                              InkWell(
                                onTap: () {
                                  context.read<CalendarBloc>().add(
                                        CalendarEvent.pressedAccept(
                                          selectDay,
                                          shift.id,
                                        ),
                                      );
                                },
                                child: Container(
                                  padding: EdgeInsets.all(width * .01),
                                  height: width * .12,
                                  width: width * .12,
                                  decoration: BoxDecoration(
                                    color: TigrisColor.greenOpacity100,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                  child: const TigrisImage(
                                    image: TigrisImages.check,
                                    color: TigrisColor.white,
                                    width: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: width * .02,
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
