import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';
import 'package:ui_kit/ui_kit.dart';

class BasicInformationModalWindow extends StatefulWidget {
  const BasicInformationModalWindow({
    Key? key,
  }) : super(key: key);

  @override
  State<BasicInformationModalWindow> createState() =>
      _BasicInformationModalWindowState();
}

class _BasicInformationModalWindowState
    extends State<BasicInformationModalWindow> {
  bool inputActiveProfile = false;
  bool inputActiveContact = false;
  DateTime dateTime = DateTime.now();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final nickName = TextEditingController();
  final dateOfBirth = TextEditingController();
  final nationality = TextEditingController();
  final telephoneNumber = TextEditingController();
  final email = TextEditingController();

  @override
  void initState() {
    context.read<ProfileBloc>().add(
          const ProfileEvent.init(),
        );
    super.initState();
  }

  @override
  void dispose() {
    firstName.dispose();
    lastName.dispose();
    nickName.dispose();
    dateOfBirth.dispose();
    nationality.dispose();
    telephoneNumber.dispose();
    email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.95;
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) => state.maybeMap(
        init: (initState) {
          LoadingDialog.close();
          setState(() {
            firstName.text = initState.infoDataModel.firstName;
            lastName.text = initState.infoDataModel.lastName;
            nickName.text = initState.infoDataModel.nickName;
            dateOfBirth.text = initState.infoDataModel.birthDate;
            nationality.text = initState.infoDataModel.nationality;
            telephoneNumber.text = initState.infoDataModel.phone;
            email.text = initState.infoDataModel.email;
          });

          return null;
        },
        loading: (_) => LoadingDialog.show(context),
        orElse: () {
          return null;
        },
      ),
      child: BlocListener<BasicInformationBloc, BasicInformationState>(
        listener: (context, state) => state.maybeMap(
          saveInformationSuccess: (info) {
            LoadingDialog.close();

            TigrisMessage().showOverlay(
              context,
              'basic_information_modal_window.message_successfully_saved'.tr(),
              true,
            );
            return null;
          },
          saveUserImageSuccess: (info) {
            LoadingDialog.close();

            TigrisMessage().showOverlay(
              context,
              'basic_information_modal_window.message_successfully_saved'.tr(),
              true,
            );

            return null;
          },
          saveInformationFailure: (info) {
            LoadingDialog.close();
            TigrisMessage().showOverlay(context, info.model.message, false);
            return null;
          },
          saveUserImageFailure: (info) {
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
          height: height,
          decoration: const BoxDecoration(
            color: TigrisColor.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: Scaffold(
              body: Stack(
                children: [
                  ListView(
                    children: [
                      const TigrisButtonBack(),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'basic_information_modal_window.basic_information'.tr(),
                        style: Theme.of(context).textTheme.labelMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      BlocBuilder<ProfileBloc, ProfileState>(
                        builder: (context, state) {
                          return state.maybeMap(
                            init: (initState) {
                              return CircleAvatar(
                                radius: 50,
                                backgroundColor: TigrisColor.white,
                                child: ClipOval(
                                  child: initState.uint8list.isNotEmpty
                                      ? Image.memory(
                                          initState.uint8list,
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        )
                                      : Image.asset(
                                          'assets/images/profile-user-image.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                ),
                              );
                            },
                            orElse: () => nil,
                          );
                        },
                      ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            context.read<BasicInformationBloc>().add(
                                  const BasicInformationEvent.updateUserImage(),
                                );
                          });
                        },
                        child: Text(
                          'basic_information_modal_window.change_picture'.tr(),
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'basic_information_modal_window.profile.profile_title'
                              .tr(),
                          style: Theme.of(context).textTheme.labelSmall,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      ShadowBoxTigris(
                        updateData: () {
                          context.read<BasicInformationBloc>().add(
                                BasicInformationEvent.updateUserProfileData(
                                  firstName.text,
                                  lastName.text,
                                  nickName.text,
                                  dateOfBirth.text,
                                  nationality.text,
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
                            ),
                            child: TigrisTextField(
                              topTip: true,
                              onSubmitted: (_) => {},
                              controller: firstName,
                              title:
                                  'basic_information_modal_window.profile.hint_first_name'
                                      .tr(),
                              textInputType: TextInputType.name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                            ),
                            child: TigrisTextField(
                              topTip: true,
                              onSubmitted: (_) => {},
                              controller: lastName,
                              title:
                                  'basic_information_modal_window.profile.hint_last_name'
                                      .tr(),
                              textInputType: TextInputType.name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                            ),
                            child: TigrisTextField(
                              topTip: true,
                              onSubmitted: (_) => {},
                              controller: nickName,
                              title:
                                  'basic_information_modal_window.profile.hint_nick_name'
                                      .tr(),
                              textInputType: TextInputType.name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                            ),
                            child: InkWell(
                              onTap: () async {
                                FocusScope.of(context).unfocus();

                                dateTime = await TigrisDateService.selectDate(
                                      context,
                                      selectedDate: dateTime,
                                    ) ??
                                    dateTime;
                                dateOfBirth.text = '${dateTime.year}/'
                                    '${dateTime.month}/'
                                    '${dateTime.day}';
                                inputActiveProfile = true;
                              },
                              child: TigrisTextField(
                                enabled: false,
                                topTip: true,
                                onTap: () {},
                                onSubmitted: (_) => {},
                                controller: dateOfBirth,
                                title:
                                    'basic_information_modal_window.profile.hint_date_of_birth'
                                        .tr(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                              bottom: 15,
                            ),
                            child: TigrisTextField(
                              topTip: true,
                              onSubmitted: (_) => {},
                              controller: nationality,
                              title:
                                  'basic_information_modal_window.profile.hint_nationality'
                                      .tr(),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'contact'.tr(),
                          style: Theme.of(context).textTheme.labelSmall,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      ShadowBoxTigris(
                        updateData: () {
                          context.read<BasicInformationBloc>().add(
                                BasicInformationEvent.updateUserContactData(
                                  telephoneNumber.text,
                                  email.text,
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
                              topTip: true,
                              onSubmitted: (_) => {},
                              controller: telephoneNumber,
                              title:
                                  'basic_information_modal_window.telephone_number'
                                      .tr(),
                              textInputType: TextInputType.phone,
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
                              controller: email,
                              title: 'E-mail',
                              textInputType: TextInputType.phone,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 35),
                    ],
                  ),
                  const Positioned(
                    top: 0,
                    child: TigrisButtonBack(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
