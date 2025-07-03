import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

class WorkPereferencesModalWindow extends StatefulWidget {
  const WorkPereferencesModalWindow({
    Key? key,
  }) : super(key: key);

  @override
  State<WorkPereferencesModalWindow> createState() =>
      _WorkPereferencesModalWindowModalWindowState();
}

class _WorkPereferencesModalWindowModalWindowState
    extends State<WorkPereferencesModalWindow> {
  bool inputActiveProfile = false;
  bool inputActiveContact = false;

  final desiredSalary = TextEditingController();
  final desiredFunction = TextEditingController();
  final maxTravelTimeMinutes = TextEditingController();

  @override
  void initState() {
    context.read<ProfileBloc>().add(
          const ProfileEvent.init(),
        );
    super.initState();
  }

  @override
  void dispose() {
    desiredSalary.dispose();
    desiredFunction.dispose();
    maxTravelTimeMinutes.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) => state.maybeMap(
        init: (initState) {
          LoadingDialog.close();
          setState(() {
            desiredSalary.text = initState.infoDataModel.desiredSalary;
            desiredFunction.text = initState.infoDataModel.desiredFunction;
            maxTravelTimeMinutes.text =
                initState.infoDataModel.maxTravelTimeMinutes;
          });

          return null;
        },
        loading: (_) => LoadingDialog.show(context),
        orElse: () {
          return null;
        },
      ),
      child: BlocListener<WorkPreferencesBloc, WorkPreferencesState>(
        listener: (context, state) => state.maybeMap(
          saveInformationSuccess: (info) {
            LoadingDialog.close();
            TigrisMessage().showOverlay(
              context,
              'work_preferences_modal_window.message_successfully_saved'.tr(),
              true,
            );

            return null;
          },
          saveInformationlogInFailure: (info) {
            LoadingDialog.close();
            TigrisMessage().showOverlay(context, info.model.message, false);

            return null;
          },
          loading: (_) => LoadingDialog.show(context),
          orElse: () {
            return null;
          },
        ),
        child: Container(
          margin: MediaQuery.of(context).viewInsets,
          height: MediaQuery.of(context).size.height * 0.95,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: ListView(
            children: [
              const TigrisButtonBack(),
              const SizedBox(
                height: 20,
              ),
              Text(
                'work_preferences_modal_window.name_page'.tr(),
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              ShadowBoxTigris(
                updateData: () {
                  context.read<WorkPreferencesBloc>().add(
                        WorkPreferencesEvent.updateWorkPreferencesProfileData(
                          desiredSalary.text,
                          desiredFunction.text,
                          maxTravelTimeMinutes.text,
                        ),
                      );
                },
                resetData: () {
                  context.read<ProfileBloc>().add(
                        const ProfileEvent.init(),
                      );
                },
                focus: true,
                widget: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 15,
                      right: 15,
                      bottom: 15,
                    ),
                    child: TigrisTextField(
                      textInputType: TextInputType.number,
                      topTip: true,
                      onSubmitted: (_) => {},
                      controller: desiredSalary,
                      title: 'work_preferences_modal_window.hint_desired_salary'
                          .tr(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      bottom: 15,
                    ),
                    child: TigrisTextField(
                      topTip: true,
                      onSubmitted: (_) => {},
                      controller: desiredFunction,
                      title:
                          'work_preferences_modal_window.hint_desired_function'
                              .tr(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      bottom: 15,
                    ),
                    child: TigrisTextField(
                      textInputType: TextInputType.number,
                      topTip: true,
                      onSubmitted: (_) => {},
                      controller: maxTravelTimeMinutes,
                      title:
                          'work_preferences_modal_window.hint_max_travel_time_minutes'
                              .tr(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}
