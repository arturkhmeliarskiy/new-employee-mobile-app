import 'dart:typed_data';

import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:shared/shared.dart';
import 'package:tigris/screen/home/info_modal_window.dart';
import 'package:tigris/screen/timesheet/registration_timesheets_screen.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:view_models/view_models.dart';

class SubmittedTimesheetScreen extends StatefulWidget {
  final WorkInfoDataModel workInfo;
  const SubmittedTimesheetScreen({
    required this.workInfo,
    Key? key,
  }) : super(key: key);

  @override
  State<SubmittedTimesheetScreen> createState() =>
      _SubmittedTimesheetScreenState();
}

class _SubmittedTimesheetScreenState extends State<SubmittedTimesheetScreen> {
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

  final comment = TextEditingController();

  @override
  void dispose() {
    comment.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    context.read<SubmittedTimesheetBloc>().add(
          const SubmittedTimesheetEvent.init(),
        );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final total =
        widget.workInfo.content.map((e) => e.workedHoursDataModel.total).reduce(
              (value, element) => value + element,
            );
    final month =
        widget.workInfo.content.map((e) => e.workedHoursDataModel.month).reduce(
              (value, element) => value + element,
            );
    final week =
        widget.workInfo.content.map((e) => e.workedHoursDataModel.week).reduce(
              (value, element) => value + element,
            );
    final List<double> sortTimeDouble = [total, month, week];
    final timeDuaration = Duration(
      minutes: (sortTimeDouble[sortTimePosition] * 60).toInt(),
    );

    return BlocListener<SubmittedTimesheetBloc, SubmittedTimesheetState>(
      listener: (context, state) => state.maybeMap(
        init: (_) => nil,
        loading: (_) => LoadingDialog.show(context),
        approvalRequestsSuccess: (info) {
          LoadingDialog.close();
          TigrisMessage().showOverlay(context, info.model.message, true);
          context.read<SubmittedTimesheetBloc>().add(
                const SubmittedTimesheetEvent.init(),
              );
          return null;
        },
        approvalRequestsFailure: (info) {
          LoadingDialog.close();
          TigrisMessage().showOverlay(context, info.model.message, false);
          context.read<SubmittedTimesheetBloc>().add(
                const SubmittedTimesheetEvent.init(),
              );
          return null;
        },
        orElse: () {
          return null;
        },
      ),
      child: Container(
        margin: MediaQuery.of(context).viewInsets,
        height: height * 0.95,
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
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: const Size(132, 132),
                    painter: TigrisCircularWorkedHoursDiagram(
                      sortTime: TigrisMenuOption().sortTime[sortTimePosition],
                      workInfo: widget.workInfo,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 60,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        DateService().timeConvertDuration(
                          timeDuaration,
                        ),
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Text(
                'home_screen.hours_worked'.tr(),
                maxLines: 1,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
            ),
            GestureDetector(
              onTap: _incrementCounter,
              child: Container(
                margin: const EdgeInsets.only(
                  top: 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      TigrisMenuOption().sortTime[sortTimePosition],
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: TigrisImage(
                        image: TigrisImages.arrowLeftRight,
                        color: TigrisColor.greenOpacity100,
                        width: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BlocBuilder<SubmittedTimesheetBloc, SubmittedTimesheetState>(
              builder: (context, state) {
                final Map<String, Color> colorIcons = {
                  'gray': TigrisColor.blackOpacity50,
                  'green': TigrisColor.greenOpacity100,
                  'red': TigrisColor.redOpacity100,
                };

                return state.maybeMap(
                  init: (initState) {
                    return ShadowBoxTigris(
                      listEmpty: initState.listTimesheet.isEmpty,
                      title: 'submitted_timesheet_screen.'
                              'no_timesheets'
                          .tr(),
                      top: 25,
                      widget: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: initState.listTimesheet.length,
                          itemBuilder: (context, index) {
                            return TigrisListItem(
                              leftImage: Uint8List(0),
                              widget: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TigrisImage(
                                  image:
                                      initState.listTimesheet[index].nameIcon,
                                  color: colorIcons[
                                      initState.listTimesheet[index].colorIcon],
                                  width: 25.0,
                                ),
                              ),
                              title: initState.listTimesheet[index].companyName,
                              textBottom:
                                  '${DateService().capitalize('week'.tr())} ${initState.listTimesheet[index].weekNumber}',
                              topOffset:
                                  initState.listTimesheet.isEmpty ? 0 : 8,
                              bottomOffset:
                                  initState.listTimesheet.length == index + 1
                                      ? 8
                                      : 0,
                              isLastItem: true,
                              image: initState.listTimesheet[index].orgLogo,
                              updateData: () {
                                showModalBottomSheet<void>(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) => InfoModalWindow(
                                    widget: [
                                      SizedBox(
                                        height: height * .35,
                                        child: ListView(
                                          shrinkWrap: true,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                top: 10.0,
                                                left: 45,
                                                right: 45,
                                              ),
                                              child: Text(
                                                initState.listTimesheet[index]
                                                    .companyName,
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium,
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                top: 20,
                                                left: 55,
                                                right: 55,
                                              ),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'submitted_timesheet_screen.function'
                                                            .tr(),
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .labelSmall
                                                            ?.copyWith(
                                                              color: TigrisColor
                                                                  .blackOpacity50,
                                                            ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Flexible(
                                                        child: FittedBox(
                                                          child: Text(
                                                            initState
                                                                .listTimesheet[
                                                                    index]
                                                                .functionName,
                                                            style: Theme.of(
                                                              context,
                                                            )
                                                                .textTheme
                                                                .labelSmall,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                      2.0,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'submitted_timesheet_screen.week_nr'
                                                              .tr(),
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall
                                                                  ?.copyWith(
                                                                    color: TigrisColor
                                                                        .blackOpacity50,
                                                                  ),
                                                        ),
                                                        Text(
                                                          '${DateService().capitalize('week'.tr())} '
                                                          '${initState.listTimesheet[index].weekNumber}',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                      2.0,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'submitted_timesheet_screen.start_date'
                                                              .tr(),
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall
                                                                  ?.copyWith(
                                                                    color: TigrisColor
                                                                        .blackOpacity50,
                                                                  ),
                                                        ),
                                                        Text(
                                                          initState
                                                              .listTimesheet[
                                                                  index]
                                                              .startDate,
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                      2.0,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'submitted_timesheet_screen.end_date'
                                                              .tr(),
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall
                                                                  ?.copyWith(
                                                                    color: TigrisColor
                                                                        .blackOpacity50,
                                                                  ),
                                                        ),
                                                        Text(
                                                          initState
                                                              .listTimesheet[
                                                                  index]
                                                              .endDate,
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                      2.0,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'hours'.tr(),
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall
                                                                  ?.copyWith(
                                                                    color: TigrisColor
                                                                        .blackOpacity50,
                                                                  ),
                                                        ),
                                                        Text(
                                                          '${initState.listTimesheet[index].hours} '
                                                          '${'hours'.tr().toLowerCase()}',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                      2.0,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'costs'.tr(),
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall
                                                                  ?.copyWith(
                                                                    color: TigrisColor
                                                                        .blackOpacity50,
                                                                  ),
                                                        ),
                                                        Text(
                                                          '€${initState.listTimesheet[index].expensesCost}',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      LayoutBuilder(
                                        builder: (context, constraints) {
                                          if (initState
                                              .listTimesheet[index].isButton) {
                                            return Container(
                                              margin: const EdgeInsets.only(
                                                left: 50,
                                                right: 50,
                                              ),
                                              height: 70,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  TigirsCommentDialog(
                                                    title:
                                                        'submitted_timesheet_screen.confirm'
                                                            .tr(),
                                                    questionConfirm:
                                                        'submitted_timesheet_screen.question_confirm'
                                                            .tr(),
                                                    text: comment,
                                                    confirm: () {
                                                      context
                                                          .read<
                                                              SubmittedTimesheetBloc>()
                                                          .add(
                                                            SubmittedTimesheetEvent
                                                                .approvalRequests(
                                                              initState
                                                                      .listTimesheet[
                                                                  index],
                                                              comment.text,
                                                              'approve',
                                                            ),
                                                          );
                                                    },
                                                  ),
                                                  TigirsCommentDialog(
                                                    title:
                                                        'submitted_timesheet_screen.decline'
                                                            .tr(),
                                                    questionConfirm:
                                                        'submitted_timesheet_screen.question_decline'
                                                            .tr(),
                                                    text: comment,
                                                    confirm: () {
                                                      if (comment
                                                          .text.isNotEmpty) {
                                                        context
                                                            .read<
                                                                SubmittedTimesheetBloc>()
                                                            .add(
                                                              SubmittedTimesheetEvent
                                                                  .approvalRequests(
                                                                initState
                                                                        .listTimesheet[
                                                                    index],
                                                                comment.text,
                                                                'reject',
                                                              ),
                                                            );
                                                      } else {
                                                        TigrisMessage()
                                                            .showOverlay(
                                                          context,
                                                          'submitted_timesheet_screen.reason_for_refusal'
                                                              .tr(),
                                                          false,
                                                        );
                                                      }
                                                    },
                                                  ),
                                                ],
                                              ),
                                            );
                                          } else {
                                            return SizedBox(
                                              height: 70,
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                    top: 12,
                                                    bottom: 12,
                                                    left: 80,
                                                    right: 80,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: TigrisColor
                                                        .greenOpacity100,
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                      Radius.circular(25),
                                                    ),
                                                  ),
                                                  height: 70,
                                                  child: Center(
                                                    child: Text(
                                                      initState
                                                          .listTimesheet[index]
                                                          .status,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelSmall
                                                          ?.copyWith(
                                                            color: TigrisColor
                                                                .white,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                    rightIcons: [
                                      LayoutBuilder(
                                        builder: (context, constraints) {
                                          if (initState
                                              .listTimesheet[index].isEdit) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                right: 8,
                                              ),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                    _createRoute(
                                                      agencyId: initState
                                                          .listTimesheet[index]
                                                          .agencyId,
                                                      placementId: initState
                                                          .listTimesheet[index]
                                                          .placementId,
                                                      agencyColor: initState
                                                          .listTimesheet[index]
                                                          .agencyColor,
                                                      orgLogo: initState
                                                          .listTimesheet[index]
                                                          .orgLogo,
                                                      orgName: initState
                                                          .listTimesheet[index]
                                                          .orgName,
                                                      functionName: initState
                                                          .listTimesheet[index]
                                                          .functionName,
                                                    ),
                                                  );
                                                  // context
                                                  //     .read<TimesheetBloc>()
                                                  //     .add(
                                                  //       TimesheetEvent
                                                  //           .uploadTimesheet(
                                                  //         initState
                                                  //             .listTimesheet[
                                                  //                 index]
                                                  //             .id,
                                                  //         initState
                                                  //             .listTimesheet[
                                                  //                 index]
                                                  //             .placementId,
                                                  //       ),
                                                  //     );
                                                },
                                                child: TigrisImage(
                                                  image: TigrisImages.edit,
                                                  color: TigrisColor
                                                      .blackOpacity100,
                                                  width: 31,
                                                ),
                                              ),
                                            );
                                          } else {
                                            return GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).push(
                                                  _createRoute(
                                                    agencyId: initState
                                                        .listTimesheet[index]
                                                        .agencyId,
                                                    placementId: initState
                                                        .listTimesheet[index]
                                                        .placementId,
                                                    agencyColor: initState
                                                        .listTimesheet[index]
                                                        .agencyColor,
                                                    orgLogo: initState
                                                        .listTimesheet[index]
                                                        .orgLogo,
                                                    orgName: initState
                                                        .listTimesheet[index]
                                                        .orgName,
                                                    functionName: initState
                                                        .listTimesheet[index]
                                                        .functionName,
                                                  ),
                                                );
                                                // context
                                                //     .read<TimesheetBloc>()
                                                //     .add(
                                                //       TimesheetEvent
                                                //           .uploadTimesheet(
                                                //         initState
                                                //             .listTimesheet[
                                                //                 index]
                                                //             .id,
                                                //         initState
                                                //             .listTimesheet[
                                                //                 index]
                                                //             .placementId,
                                                //       ),
                                                //     );
                                              },
                                              child: const Icon(
                                                Icons.info_outline,
                                                size: 31,
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                    customTextField:
                                        'show_contact_information'.tr(),
                                    customContactTextField: 'info_modal_window.'
                                            'your_contact'
                                        .tr(),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    );
                  },
                  orElse: () => nil,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

Route<dynamic> _createRoute({
  required String agencyId,
  required String placementId,
  required String agencyColor,
  required String orgLogo,
  required String orgName,
  required String functionName,
}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        RegistrationTimesheetsScreen(
      agencyId: agencyId,
      placementId: placementId,
      agencyColor: agencyColor,
      orgLogo: orgLogo,
      orgName: orgName,
      functionName: functionName,
    ),
    transitionDuration: const Duration(milliseconds: 600),
    reverseTransitionDuration: const Duration(microseconds: 600),
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
