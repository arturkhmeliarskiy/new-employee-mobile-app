import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:tigris/screen/timesheet/registration_timesheets_screen.dart';
import 'package:ui_kit/ui_kit.dart';

class SheetModalWindow extends StatelessWidget {
  const SheetModalWindow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return BlocListener<TimesheetBloc, TimesheetState>(
      listener: (context, state) => state.maybeMap(
        getTimesheet: (result) {
          LoadingDialog.close();
          context.read<TimesheetBloc>().add(
                TimesheetEvent.uploadTimesheet(
                  result.timesheetid,
                  result.company.id,
                ),
              );
          Navigator.of(context).push(
            _createRoute(
              agencyId: result.company.agencyId,
              placementId: result.company.id,
              agencyColor: result.company.agencyColor,
              orgLogo: result.company.orgLogo,
              orgName: result.company.orgName,
              functionName: result.company.functieName,
            ),
          );
          return null;
        },
        loading: (_) => LoadingDialog.show(context),
        timesheetError: (result) {
          LoadingDialog.close();
          TigrisMessage().showOverlay(context, result.error, false);

          return null;
        },
        orElse: () => nil,
      ),
      child: Container(
        margin: MediaQuery.of(context).viewInsets,
        height: height * 0.6,
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
              child: FittedBox(
                child: Text(
                  'sheet_modal_window.view_add_sheets'.tr(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 65,
                right: 65,
                bottom: 20,
              ),
              child: Text(
                'sheet_modal_window.select_employer'.tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: TigrisColor.blackOpacity100,
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            BlocBuilder<TimesheetBloc, TimesheetState>(
              builder: (context, state) {
                return state.maybeMap(
                  init: (initState) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: initState.jobCompanies.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            context.read<TimesheetBloc>().add(
                                  TimesheetEvent.getTimesheet(
                                    initState.jobCompanies[index],
                                  ),
                                );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                              bottom: 16,
                            ),
                            height: 125,
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
                                  color: TigrisColor.blackOpacity10,
                                  blurRadius: 5,
                                  offset: const Offset(
                                    0,
                                    5,
                                  ),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Center(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        right: 15,
                                      ),
                                      height: width * .19,
                                      width: width * .2,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                      ),
                                      child: LayoutBuilder(
                                        builder: (context, constraints) {
                                          if (initState.jobCompanies[index]
                                              .orgLogo.isNotEmpty) {
                                            return Image.network(
                                              initState
                                                  .jobCompanies[index].orgLogo,
                                              errorBuilder: (
                                                context,
                                                exception,
                                                stackTrace,
                                              ) {
                                                return const TigrisImage(
                                                  image: TigrisImages.imageOff,
                                                  height: 30,
                                                  width: 30,
                                                );
                                              },
                                            );
                                          } else {
                                            return const SizedBox();
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          initState
                                              .jobCompanies[index].companyName,
                                          style: Theme.of(
                                            context,
                                          ).textTheme.labelSmall,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          initState
                                              .jobCompanies[index].functieName,
                                          style: Theme.of(
                                            context,
                                          ).textTheme.labelLarge,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(
                                          height: 9,
                                        ),
                                        Text(
                                          '${initState.jobCompanies[index].orgName}.',
                                          style: Theme.of(
                                            context,
                                          ).textTheme.labelSmall?.copyWith(
                                                fontSize: 16,
                                              ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          '${initState.jobCompanies[index].startDate}'
                                          '${initState.jobCompanies[index].endDate.isNotEmpty ? ' - ${initState.jobCompanies[index].endDate}' : ''}',
                                          style: Theme.of(
                                            context,
                                          ).textTheme.labelLarge?.copyWith(
                                                color:
                                                    TigrisColor.blackOpacity100,
                                              ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  orElse: Container.new,
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
