import 'dart:io';
import 'dart:typed_data';

import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:shared/shared.dart';
import 'package:tigris/screen/home/agency_related_info_screen.dart';
import 'package:tigris/screen/home/news.dart';
import 'package:tigris/screen/home/submitted_timesheet_screen.dart';
import 'package:tigris/screen/job_application_form/upload_cv_screen.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:view_models/view_models.dart';

class HomeScreen extends StatefulWidget {
  final void Function(int) numberPage;
  const HomeScreen({
    required this.numberPage,
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int sortTimePosition = 0;
  void _incrementCounter() {
    setState(() {
      if (sortTimePosition < 2) {
        sortTimePosition++;
      } else {
        sortTimePosition = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final DateTime dateTime = DateTime.now();
    final dayWeek = DateFormat.EEEE(context.locale.toString()).format(dateTime);
    final dateDay = DateFormat.d(context.locale.toString()).format(dateTime);
    final month = DateFormat.MMM(context.locale.toString()).format(dateTime);

    return Scaffold(
      backgroundColor: TigrisColor.colorBackground,
      body: WillPopScope(
        onWillPop: () async {
          return TigrisDialog.selectDialog(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            context: context,
            widget: [
              Text(
                'home_screen.title_exit_app'.tr(),
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'home_screen.question_log_out_of_the_app'.tr(),
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            button: Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    //return true when click on "Yes"
                    child: Text(
                      'button_cancel'.tr(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (Platform.isIOS) {
                        SystemNavigator.pop();
                      } else {
                        exit(0);
                      }
                    },
                    //return true when click on "Yes"
                    child: Text(
                      'home_screen.exit_app_dialog_ok'.tr(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
            height: 100,
            width: 360,
          );
        },
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            BlocBuilder<AppBloc, AppState>(
              buildWhen: (previous, current) {
                bool selectStete = true;
                current.maybeMap(
                  errorConnection: (_) {
                    selectStete = false;
                  },
                  orElse: () => null,
                );
                return selectStete;
              },
              builder: (context, state) {
                return state.maybeMap(
                  preloadDataCompleted: (initState) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 16,
                            left: 16,
                            right: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${'home_screen.hello'.tr()} ${initState.userName}',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              GestureDetector(
                                onTap: () {
                                  widget.numberPage(3);
                                },
                                child: Stack(
                                  alignment: AlignmentDirectional.topEnd,
                                  children: [
                                    TigrisImage(
                                      image: TigrisImages.bell,
                                      color: TigrisColor.blackOpacity100,
                                      width: 25,
                                    ),
                                    SizedBox(
                                      height: 8,
                                      width: 8,
                                      child: BlocBuilder<HomeBloc, HomeState>(
                                        builder: (context, state) {
                                          return state.maybeMap(
                                            notification: (initState) {
                                              return initState.notification
                                                  ? Transform.translate(
                                                      offset:
                                                          const Offset(5, -5),
                                                      child: Container(
                                                        height: 8,
                                                        width: 8,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: TigrisColor
                                                              .greenOpacity100,
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .all(
                                                            Radius.circular(
                                                              5,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  : const SizedBox();
                                            },
                                            orElse: () => nil,
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 16,
                          ),
                          child: Text(
                            '${DateService().capitalize(dayWeek)} $dateDay ${month.toLowerCase()}, '
                            '${dateTime.year}',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    );
                  },
                  notRegistered: (initState) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 16,
                            left: 16,
                            right: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${'home_screen.hello'.tr()} ${initState.userName}',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              TigrisImage(
                                image: TigrisImages.bell,
                                color: TigrisColor.blackOpacity100,
                                width: 25,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 16,
                          ),
                          child: Text(
                            '${DateService().capitalize(dayWeek)} $dateDay ${month.toLowerCase()}, '
                            '${dateTime.year}',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    );
                  },
                  orElse: () => nil,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 166,
                left: 16,
              ),
              child: Text(
                'home_screen.block_header1'.tr(),
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            Stack(
              children: [
                BlocBuilder<AppBloc, AppState>(
                  buildWhen: (previous, current) {
                    bool selectStete = true;
                    current.maybeMap(
                      errorConnection: (_) {
                        selectStete = false;
                      },
                      orElse: () => null,
                    );
                    return selectStete;
                  },
                  builder: (context, state) {
                    return state.maybeMap(
                      preloadDataCompleted: (_) => Container(
                        margin: const EdgeInsets.only(top: 58),
                        width: width,
                        height: height * 1.1,
                        color: TigrisColor.white,
                      ),
                      notRegistered: (_) => Container(
                        margin: const EdgeInsets.only(top: 58),
                        width: width,
                        height: height * .51,
                        color: TigrisColor.white,
                      ),
                      orElse: () => nil,
                    );
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<AppBloc, AppState>(
                      buildWhen: (previous, current) {
                        bool selectStete = true;
                        current.maybeMap(
                          errorConnection: (_) {
                            selectStete = false;
                          },
                          orElse: () => null,
                        );
                        return selectStete;
                      },
                      builder: (context, state) {
                        return state.maybeMap(
                          preloadDataCompleted: (initState) {
                            if (initState.workInfo.content.isNotEmpty) {
                              final total = initState.workInfo.content
                                  .map((e) => e.workedHoursDataModel.total)
                                  .reduce(
                                    (value, element) => value + element,
                                  );
                              final month = initState.workInfo.content
                                  .map((e) => e.workedHoursDataModel.month)
                                  .reduce(
                                    (value, element) => value + element,
                                  );
                              final week = initState.workInfo.content
                                  .map((e) => e.workedHoursDataModel.week)
                                  .reduce(
                                    (value, element) => value + element,
                                  );
                              final List<double> sortTimeDouble = [
                                total,
                                month,
                                week
                              ];
                              final timeDuaration = Duration(
                                minutes: (sortTimeDouble[sortTimePosition] * 60)
                                    .toInt(),
                              );
                              return Stack(
                                children: [
                                  GestureDetector(
                                    onTap: () async => showModalBottomSheet(
                                      isScrollControlled: true,
                                      useRootNavigator: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) =>
                                          SubmittedTimesheetScreen(
                                        workInfo: initState.workInfo,
                                      ),
                                    ),
                                    child: ShadowBoxTigris(
                                      top: 8,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      widget: [
                                        SizedBox(
                                          height: initState
                                                      .workInfo.content.length >
                                                  2
                                              ? initState.workInfo.content
                                                          .length *
                                                      18 +
                                                  120
                                              : 164,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.of(
                                                          context,
                                                        ).size.width *
                                                        0.45,
                                                    margin:
                                                        const EdgeInsets.only(
                                                      left: 16,
                                                      top: 16,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Text(
                                                            'home_screen.hours_worked'
                                                                .tr(),
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: Theme.of(
                                                              context,
                                                            )
                                                                .textTheme
                                                                .labelSmall,
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap:
                                                              _incrementCounter,
                                                          child: Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 2,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  TigrisMenuOption()
                                                                          .sortTime[
                                                                      sortTimePosition],
                                                                  style: Theme
                                                                          .of(
                                                                    context,
                                                                  )
                                                                      .textTheme
                                                                      .labelLarge,
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                    left: 10,
                                                                  ),
                                                                  child:
                                                                      TigrisImage(
                                                                    image: TigrisImages
                                                                        .arrowLeftRight,
                                                                    color: TigrisColor
                                                                        .greenOpacity100,
                                                                    width: 18,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.45,
                                                    height: initState.workInfo
                                                            .content.length *
                                                        32,
                                                    margin:
                                                        const EdgeInsets.only(
                                                      left: 16,
                                                    ),
                                                    child: ListView.builder(
                                                      shrinkWrap: true,
                                                      physics:
                                                          const NeverScrollableScrollPhysics(),
                                                      itemCount: initState
                                                          .workInfo
                                                          .content
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .only(
                                                            top: 8,
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                    int.parse(
                                                                      initState
                                                                          .workInfo
                                                                          .content[
                                                                              index]
                                                                          .colorAgency,
                                                                    ),
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .all(
                                                                    Radius
                                                                        .circular(
                                                                      15,
                                                                    ),
                                                                  ),
                                                                  border: Border
                                                                      .all(
                                                                    color: TigrisColor
                                                                        .blackOpacity20,
                                                                  ),
                                                                ),
                                                                height: 8,
                                                                width: 8,
                                                              ),
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  margin:
                                                                      const EdgeInsets
                                                                          .only(
                                                                    left: 12,
                                                                  ),
                                                                  child: Text(
                                                                    initState
                                                                        .workInfo
                                                                        .content[
                                                                            index]
                                                                        .orgName,
                                                                    style: Theme
                                                                            .of(
                                                                      context,
                                                                    )
                                                                        .textTheme
                                                                        .headlineMedium,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    maxLines: 1,
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  right: 16,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomPaint(
                                                      size: const Size(
                                                        132,
                                                        132,
                                                      ),
                                                      painter:
                                                          TigrisCircularWorkedHoursDiagram(
                                                        sortTime:
                                                            TigrisMenuOption()
                                                                    .sortTime[
                                                                sortTimePosition],
                                                        workInfo:
                                                            initState.workInfo,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 120,
                                                      height: 60,
                                                      child: FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Text(
                                                          DateService()
                                                              .timeConvertDuration(
                                                            timeDuaration,
                                                          ),
                                                          style: Theme.of(
                                                            context,
                                                          )
                                                              .textTheme
                                                              .labelMedium,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }
                            return const SizedBox();
                          },
                          notRegistered: (_) {
                            return ShadowBoxTigris(
                              top: 16,
                              widget: [
                                SizedBox(
                                  height: height * .2,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16,
                                          left: 16,
                                          right: 16,
                                        ),
                                        child: Text(
                                          'home_screen.looking_for_a_job'.tr(),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          const Positioned(
                                            left: 120,
                                            top: 33,
                                            child: TigrisImage(
                                              image: TigrisImages.search,
                                              color: TigrisColor.appGreen,
                                              width: 25.0,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: TigrisButton.secondary(
                                              onPressed: () {
                                                showModalBottomSheet<void>(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  isScrollControlled: true,
                                                  builder: (ctx) =>
                                                      const UploadCVScreen(),
                                                );
                                              },
                                              text:
                                                  'home_screen.button_yes'.tr(),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                          orElse: () => nil,
                        );
                      },
                    ),
                    BlocBuilder<AppBloc, AppState>(
                      buildWhen: (previous, current) {
                        bool selectStete = true;
                        current.maybeMap(
                          errorConnection: (_) {
                            selectStete = false;
                          },
                          orElse: () => null,
                        );
                        return selectStete;
                      },
                      builder: (context, state) {
                        return state.maybeMap(
                          preloadDataCompleted: (initState) {
                            if (initState.workInfo.content.isNotEmpty) {
                              final holidayPay = initState.workInfo.content
                                  .map(
                                    (e) => e.accruedReservations.currency,
                                  )
                                  .reduce(
                                    (value, element) => value + element,
                                  );
                              final holidayHours = initState.workInfo.content
                                  .map(
                                    (e) => e.accruedReservations.hours,
                                  )
                                  .reduce(
                                    (value, element) => value + element,
                                  );
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ShadowBoxTigris(
                                    top: 16,
                                    right: 0,
                                    widget: [
                                      SizedBox(
                                        height: 164,
                                        width: width / 2.4,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 16,
                                                left: 16,
                                                right: 16,
                                              ),
                                              child: Text(
                                                'home_screen.accrued_holiday_pay'
                                                    .tr(),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Container(
                                              height: 102,
                                              width: 120,
                                              alignment: Alignment.center,
                                              child: FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Text(
                                                  '€${holidayPay.toStringAsFixed(0)}',
                                                  style: TextStyle(
                                                    fontSize: 32,
                                                    fontWeight: FontWeight.w800,
                                                    color: TigrisColor
                                                        .blackOpacity100,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  ShadowBoxTigris(
                                    top: 16,
                                    left: 0,
                                    widget: [
                                      SizedBox(
                                        height: 164,
                                        width: width / 2.4,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 16,
                                                left: 16,
                                                right: 16,
                                              ),
                                              child: Text(
                                                'home_screen.accrued_holiday_hours'
                                                    .tr(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall,
                                                textAlign: TextAlign.center,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              ),
                                            ),
                                            Container(
                                              height: 102,
                                              width: 120,
                                              alignment: Alignment.center,
                                              child: FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Text(
                                                  holidayHours
                                                      .toStringAsFixed(0),
                                                  style: TextStyle(
                                                    fontSize: 50,
                                                    fontWeight: FontWeight.w800,
                                                    color: TigrisColor
                                                        .blackOpacity100,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            }
                            return const SizedBox();
                          },
                          notRegistered: (_) => const SizedBox(),
                          orElse: () => nil,
                        );
                      },
                    ),
                    BlocBuilder<AppBloc, AppState>(
                      buildWhen: (previous, current) {
                        bool selectStete = true;
                        current.maybeMap(
                          errorConnection: (_) {
                            selectStete = false;
                          },
                          orElse: () => null,
                        );
                        return selectStete;
                      },
                      builder: (context, state) {
                        return state.maybeMap(
                          preloadDataCompleted: (initState) {
                            return ShadowBoxTigris(
                              listEmpty: initState.workInfo.content.isEmpty,
                              title: 'profile_screen.message_empty_list'.tr(),
                              isApplyBorderRadius:
                                  initState.workInfo.content.isEmpty,
                              top: 16,
                              widget: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 16,
                                  ),
                                  child: Text(
                                    'home_screen.my_agencies'.tr(),
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: initState.workInfo.content.length,
                                  itemBuilder: (context, index) {
                                    return TigrisListItem(
                                      leftImage: Uint8List(0),
                                      title: initState
                                          .workInfo.content[index].orgName,
                                      topOffset:
                                          initState.workInfo.content.isEmpty
                                              ? 0
                                              : 8,
                                      bottomOffset:
                                          initState.workInfo.content.length ==
                                                  index + 1
                                              ? 8
                                              : 0,
                                      isLastItem: true,
                                      image: initState
                                          .workInfo.content[index].orgLogo,
                                      updateData: () {
                                        Navigator.of(context).push(
                                          _createRoute(
                                            initState.workInfo.content[index]
                                                .agencyId,
                                            initState.workInfo.content[index]
                                                .colorAgency,
                                            initState.workInfo.content[index]
                                                .orgLogo,
                                            initState.workInfo.content[index]
                                                .orgName,
                                            initState
                                                .workInfo.content[index].phone,
                                            initState.workInfo.content[index]
                                                .accruedReservations,
                                            initState.workInfo.content[index]
                                                .averageWorkedHoursDataModel,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            );
                          },
                          notRegistered: (_) => const SizedBox(),
                          orElse: () => nil,
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(
                        16,
                      ),
                      child: Text(
                        'news'.tr(),
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    BlocBuilder<AppBloc, AppState>(
                      buildWhen: (previous, current) {
                        bool selectStete = true;
                        current.maybeMap(
                          errorConnection: (_) {
                            selectStete = false;
                          },
                          orElse: () => null,
                        );
                        return selectStete;
                      },
                      builder: (context, state) {
                        return state.maybeMap(
                          preloadDataCompleted: (initState) {
                            return ShadowBoxTigris(
                              listEmpty: initState.newsList.news.isEmpty,
                              title: 'no_news'.tr(),
                              widget: [
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: initState.newsList.news.length,
                                  itemBuilder: (context, index) {
                                    return TigrisListItem(
                                      isApplyBorderRadius: false,
                                      leftImage: Uint8List(0),
                                      topOffset: initState.newsList.news.isEmpty
                                          ? 0
                                          : 8,
                                      bottomOffset:
                                          initState.newsList.news.length ==
                                                  index + 1
                                              ? 8
                                              : 0,
                                      isLastItem: true,
                                      subTitle:
                                          initState.newsList.news[index].title,
                                      image:
                                          initState.newsList.news[index].logo,
                                      updateData: () =>
                                          Navigator.of(context).push(
                                        MaterialPageRoute<void>(
                                          builder: (context) => News(
                                            model:
                                                initState.newsList.news[index],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                if (initState.newsList.news.isNotEmpty &&
                                    initState.newsList.totalCount !=
                                        initState.newsList.news.length)
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: SizedBox(
                                      height: 50,
                                      child: TigrisButton.primary(
                                        text:
                                            'home_screen.button_show_more'.tr(),
                                        onPressed: () =>
                                            context.read<AppBloc>().add(
                                                  const AppEvent.showMoreNews(),
                                                ),
                                      ),
                                    ),
                                  )
                              ],
                            );
                          },
                          notRegistered: (initState) {
                            return ShadowBoxTigris(
                              listEmpty: initState.newsList.news.isEmpty,
                              title: 'no_news'.tr(),
                              widget: [
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: initState.newsList.news.length,
                                  itemBuilder: (context, index) {
                                    return TigrisListItem(
                                      isApplyBorderRadius: false,
                                      leftImage: Uint8List(0),
                                      topOffset: initState.newsList.news.isEmpty
                                          ? 0
                                          : 8,
                                      bottomOffset:
                                          initState.newsList.news.length ==
                                                  index + 1
                                              ? 8
                                              : 0,
                                      isLastItem: true,
                                      subTitle:
                                          initState.newsList.news[index].title,
                                      image:
                                          initState.newsList.news[index].logo,
                                      updateData: () =>
                                          Navigator.of(context).push(
                                        MaterialPageRoute<void>(
                                          builder: (context) => News(
                                            model:
                                                initState.newsList.news[index],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                if (initState.newsList.news.isNotEmpty &&
                                    initState.newsList.totalCount !=
                                        initState.newsList.news.length)
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: SizedBox(
                                      height: 50,
                                      child: TigrisButton.primary(
                                        text:
                                            'home_screen.button_show_more'.tr(),
                                        onPressed: () =>
                                            context.read<AppBloc>().add(
                                                  const AppEvent.showMoreNews(),
                                                ),
                                      ),
                                    ),
                                  )
                              ],
                            );
                          },
                          orElse: () => nil,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Route<dynamic> _createRoute(
  String agencyId,
  String agencyColor,
  String orgLogo,
  String orgName,
  String agencyContactNumber,
  AccruedReservationsDataModel accruedReservationsDataModel,
  AverageWorkedHoursDataModel averageWorkedHoursDataModel,
) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        AgencyRelatedInfoScreen(
      agencyId: agencyId,
      agencyColor: agencyColor,
      orgLogo: orgLogo,
      orgName: orgName,
      agencyContactNumber: agencyContactNumber,
      accruedReservations: accruedReservationsDataModel,
      averageWorkedHours: averageWorkedHoursDataModel,
    ),
    transitionDuration: const Duration(milliseconds: 600),
    reverseTransitionDuration: const Duration(milliseconds: 600),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      final tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
