import 'dart:typed_data';

import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:tigris/screen/home/agency_contact_modal_window.dart';
import 'package:tigris/screen/home/info_modal_window.dart';
import 'package:tigris/screen/home/news.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:view_models/view_models.dart';

class AgencyRelatedInfoScreen extends StatefulWidget {
  final String agencyId;
  final String agencyColor;
  final String orgLogo;
  final String orgName;
  final String agencyContactNumber;
  final AccruedReservationsDataModel accruedReservations;
  final AverageWorkedHoursDataModel averageWorkedHours;

  const AgencyRelatedInfoScreen({
    required this.agencyId,
    required this.agencyColor,
    required this.orgLogo,
    required this.orgName,
    required this.agencyContactNumber,
    required this.accruedReservations,
    required this.averageWorkedHours,
    Key? key,
  }) : super(key: key);

  @override
  State<AgencyRelatedInfoScreen> createState() =>
      _AgencyRelatedInfoScreenState();
}

class _AgencyRelatedInfoScreenState extends State<AgencyRelatedInfoScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AgencyRelatedInfoBloc>().add(
          AgencyRelatedInfoEvent.init(widget.agencyId),
        );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      color: Color(
        int.parse(
          widget.agencyColor,
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: BlocListener<AgencyRelatedInfoBloc, AgencyRelatedInfoState>(
          listener: (context, state) => state.maybeMap(
            loading: (_) => LoadingDialog.show(context),
            message: (response) {
              LoadingDialog.close();
              TigrisMessage().showOverlay(context, response.message, false);
              return null;
            },
            openFile: (file) {
              LoadingDialog.close();
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => TigrisFilePreview(
                    nameFile: file.nameFile,
                    typeFile: file.type,
                    data: file.file,
                  ),
                ),
              );
              return null;
            },
            orElse: () {
              return null;
            },
          ),
          child: Scaffold(
            backgroundColor: TigrisColor.white,
            body: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Stack(
                  children: [
                    Container(
                      height: 302,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet<void>(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) =>
                                          AgencyContactModalWindow(
                                        title: 'contact'.tr(),
                                        customTextField:
                                            'info_modal_window.custom_text_field'
                                                .tr(),
                                        orgLogo: widget.orgLogo,
                                        agencyColor: widget.agencyColor,
                                        agencyId: widget.agencyId,
                                        agencyContactNumber:
                                            widget.agencyContactNumber,
                                        orgName: widget.orgName,
                                      ),
                                    );
                                  },
                                  child: Stack(
                                    alignment: AlignmentDirectional.topEnd,
                                    children: [
                                      const TigrisImage(
                                        image: TigrisImages.contact,
                                        color: TigrisColor.white,
                                        width: 31,
                                      ),
                                      SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: BlocBuilder<HomeBloc, HomeState>(
                                          builder: (context, state) {
                                            return state.maybeMap(
                                              notification: (initState) {
                                                final isUnreadChatMessages =
                                                    initState.unreadChatMessages
                                                        .chatMessages
                                                        ?.where(
                                                  (element) =>
                                                      element.senderId ==
                                                      widget.agencyId,
                                                );
                                                return isUnreadChatMessages
                                                            ?.isNotEmpty ??
                                                        false
                                                    ? Transform.translate(
                                                        offset:
                                                            const Offset(5, -5),
                                                        child: Container(
                                                          height: 10,
                                                          width: 10,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                              int.parse(
                                                                TigrisColorService
                                                                    .invertColor(
                                                                  widget
                                                                      .agencyColor,
                                                                ),
                                                              ),
                                                            ),
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
                        ),
                        Container(
                          height: 166,
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 150,
                            child: Image.network(
                              widget.orgLogo,
                              width: 180,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 16,
                          ),
                          child: Text(
                            'home_screen.block_header1'.tr(),
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: TigrisColor.white,
                                ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          'agency_related_info_screen.'
                                                  'days_until_payout'
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
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              '?',
                                              style: TextStyle(
                                                fontSize: 64,
                                                fontWeight: FontWeight.w800,
                                                color: Color(
                                                  int.parse(
                                                    widget.agencyColor,
                                                  ),
                                                ),
                                              ),
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
                                          'agency_related_info_screen.'
                                                  'average_worked_hours'
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
                                            '${widget.averageWorkedHours.weekly}',
                                            style: TextStyle(
                                              fontSize: 64,
                                              fontWeight: FontWeight.w800,
                                              color: Color(
                                                int.parse(
                                                  widget.agencyColor,
                                                ),
                                              ),
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
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            '€${widget.accruedReservations.currency}',
                                            style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w800,
                                              color: Color(
                                                int.parse(
                                                  widget.agencyColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
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
                                          'home_screen.'
                                                  'accrued_holiday_hours'
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
                                            '${widget.accruedReservations.hours}',
                                            style: TextStyle(
                                              fontSize: 64,
                                              fontWeight: FontWeight.w800,
                                              color: Color(
                                                int.parse(
                                                  widget.agencyColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BlocBuilder<AgencyRelatedInfoBloc,
                                AgencyRelatedInfoState>(
                              builder: (context, state) {
                                return state.maybeMap(
                                  loadingEmployers: (_) {
                                    return ShadowBoxTigris(
                                      top: 16,
                                      widget: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 16,
                                          ),
                                          child: Text(
                                            'agency_related_info_screen.'
                                                    'my_employers'
                                                .tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: TigrisProgressIndicator(),
                                        )
                                      ],
                                    );
                                  },
                                  init: (initState) {
                                    return ShadowBoxTigris(
                                      listEmpty: initState.jobCompanies.isEmpty,
                                      title: 'agency_related_info_screen.'
                                              'no_employers'
                                          .tr(),
                                      isApplyBorderRadius:
                                          initState.jobCompanies.isEmpty,
                                      top: 16,
                                      widget: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 16,
                                          ),
                                          child: Text(
                                            'agency_related_info_screen.'
                                                    'my_employers'
                                                .tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall,
                                          ),
                                        ),
                                        ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount:
                                              initState.jobCompanies.length,
                                          itemBuilder: (context, index) {
                                            return TigrisListItem(
                                              leftImage: Uint8List(0),
                                              title: initState
                                                  .jobCompanies[index]
                                                  .companyName,
                                              topOffset:
                                                  initState.jobCompanies.isEmpty
                                                      ? 0
                                                      : 8,
                                              bottomOffset: initState
                                                          .jobCompanies
                                                          .length ==
                                                      index + 1
                                                  ? 8
                                                  : 0,
                                              isLastItem: true,
                                              image: initState.orgLogo,
                                              updateData: () {
                                                showModalBottomSheet<void>(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  builder: (context) =>
                                                      InfoModalWindow(
                                                    widget: const [],
                                                    rightIcons: const [],
                                                    mainNumber: initState
                                                        .jobCompanies[index]
                                                        .phone,
                                                    mainEmail: initState
                                                        .jobCompanies[index]
                                                        .email,
                                                    yourContactEmail: initState
                                                        .jobCompanies[index]
                                                        .responsibleClientEmail,
                                                    yourContactNumber: initState
                                                        .jobCompanies[index]
                                                        .responsibleClientPhone,
                                                    customTextField: initState
                                                        .jobCompanies[index]
                                                        .contactInfo,
                                                    customContactTextField:
                                                        'info_modal_window.'
                                                                'your_contact'
                                                            .tr(),
                                                    title: initState
                                                        .jobCompanies[index]
                                                        .companyName,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                  orElse: Container.new,
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
                            BlocBuilder<AgencyRelatedInfoBloc,
                                AgencyRelatedInfoState>(
                              builder: (context, state) {
                                return state.maybeMap(
                                  init: (initState) {
                                    return ShadowBoxTigris(
                                      listEmpty:
                                          initState.newsList.news.isEmpty,
                                      title: 'no_news'.tr(),
                                      widget: [
                                        ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount:
                                              initState.newsList.news.length,
                                          itemBuilder: (context, index) {
                                            return TigrisListItem(
                                              isApplyBorderRadius: false,
                                              leftImage: Uint8List(0),
                                              topOffset: initState
                                                      .newsList.news.isEmpty
                                                  ? 0
                                                  : 8,
                                              bottomOffset: initState.newsList
                                                          .news.length ==
                                                      index + 1
                                                  ? 8
                                                  : 0,
                                              isLastItem: true,
                                              subTitle: initState
                                                  .newsList.news[index].title,
                                              image: initState
                                                  .newsList.news[index].logo,
                                              updateData: () =>
                                                  Navigator.of(context).push(
                                                MaterialPageRoute<void>(
                                                  builder: (context) => News(
                                                    model: initState
                                                        .newsList.news[index],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                        if (initState
                                                .newsList.news.isNotEmpty &&
                                            initState.newsList.totalCount !=
                                                initState.newsList.news.length)
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: SizedBox(
                                              height: 50,
                                              child: TigrisButton.primary(
                                                text:
                                                    'home_screen.button_show_more'
                                                        .tr(),
                                                onPressed: () => context
                                                    .read<
                                                        AgencyRelatedInfoBloc>()
                                                    .add(
                                                      const AgencyRelatedInfoEvent
                                                          .showMoreNews(),
                                                    ),
                                              ),
                                            ),
                                          )
                                      ],
                                    );
                                  },
                                  orElse: Container.new,
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.all(
                                16,
                              ),
                              child: Text(
                                'documents'.tr(),
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ),
                            BlocBuilder<AgencyRelatedInfoBloc,
                                AgencyRelatedInfoState>(
                              builder: (context, state) {
                                return state.maybeMap(
                                  init: (initState) {
                                    return ShadowBoxTigris(
                                      listEmpty: initState.documents.isEmpty,
                                      title: 'agency_related_info_screen.'
                                              'no_documents'
                                          .tr(),
                                      widget: [
                                        ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: initState.documents.length,
                                          itemBuilder: (context, index) {
                                            return ButtonIconTigris(
                                              bottomMargin:
                                                  initState.documents.length ==
                                                      index + 1,
                                              title: initState
                                                  .documents[index].name,
                                              action: () {
                                                context
                                                    .read<
                                                        AgencyRelatedInfoBloc>()
                                                    .add(
                                                      AgencyRelatedInfoEvent
                                                          .loadFile(
                                                        file: initState
                                                            .documents[index],
                                                      ),
                                                    );
                                              },
                                              rightIcon: TigrisImages.eye,
                                            );
                                          },
                                        )
                                      ],
                                    );
                                  },
                                  orElse: Container.new,
                                );
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        )
                      ],
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
