import 'package:blocs/blocs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nil/nil.dart';
import 'package:open_mail_app/open_mail_app.dart';
import 'package:shared/shared.dart';
import 'package:tigris/screen/job_application_form/drop_down_list.dart';
import 'package:ui_kit/ui_kit.dart';

class UploadCVScreen extends StatefulWidget {
  const UploadCVScreen({Key? key}) : super(key: key);

  @override
  State<UploadCVScreen> createState() => _UploadCVScreenState();
}

class _UploadCVScreenState extends State<UploadCVScreen> {
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _confirmationCode = TextEditingController();
  final TextEditingController _professsion = TextEditingController();
  final List<String> professions = [];
  final List<String> codeOccupation = [];

  List<Map<String, String>> listLanguage = [];
  String language = '';
  bool languageInitialize = true;

  @override
  void initState() {
    listLanguage = fillListLanguage();

    super.initState();
  }

  @override
  void dispose() {
    _phone.dispose();
    _email.dispose();
    _password.dispose();
    _lastName.dispose();
    _firstName.dispose();
    _professsion.dispose();
    _confirmationCode.dispose();
    super.dispose();
  }

  List<Map<String, String>> fillListLanguage() {
    final result = <Map<String, String>>[];
    TigrisMenuOption().languages.forEach((element) {
      if (element['language'].toString() != 'Polish') {
        result.add(element);
      }
    });
    return result;
  }

  @override
  Widget build(BuildContext context) {
    language = languageInitialize
        ? listLanguage
            .firstWhere(
              (element) => element['value'] == context.locale.toLanguageTag(),
              orElse: () => listLanguage[2],
            )['label']
            .toString()
        : language;
    languageInitialize = false;
    final height = MediaQuery.of(context).size.height * 0.95;
    return BlocListener<JobApplicationFormBloc, JobApplicationFormState>(
      listener: (context, state) => state.maybeMap(
        createAccount: (values) {
          setState(() {
            _firstName.text = values.firstName;
            _lastName.text = values.lastName;
            _phone.text = values.phoneNamber;
            _email.text = values.email;
          });

          return null;
        },
        loginPage: (_) {
          return showModalBottomSheet<void>(
            backgroundColor: Colors.transparent,
            context: context,
            isScrollControlled: true,
            builder: (ctx) => loginPage(height),
          );
        },
        error: (response) =>
            TigrisMessage().showOverlay(context, response.message, false),
        orElse: () {
          return null;
        },
      ),
      child: WillPopScope(
        onWillPop: () async => false,
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
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: BlocBuilder<JobApplicationFormBloc, JobApplicationFormState>(
              buildWhen: (previous, current) {
                bool selectStete = true;
                current.maybeMap(
                  error: (_) {
                    selectStete = false;
                  },
                  loginPage: (_) {
                    selectStete = false;
                  },
                  orElse: () => null,
                );
                return selectStete;
              },
              builder: (context, state) {
                return state.maybeMap(
                  init: (_) {
                    return initScreen(height);
                  },
                  createAccount: (response) {
                    return createAccount(height, response.firstName);
                  },
                  emailVerificationPage: (_) {
                    return emailVerificationPage(height);
                  },
                  choiceOfProfessionPage: (_) => choiceOfProfessionPage(height),
                  finishPage: (_) => finishPage(height),
                  loading: (_) => Container(
                    color: TigrisColor.greenOpacity20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TigrisProgressIndicator(
                          sizeRatio: 1.3,
                        ),
                        SizedBox(
                          height: height * .1,
                        ),
                      ],
                    ),
                  ),
                  orElse: () => nil,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget emailVerificationPage(double height) {
    return Scaffold(
      backgroundColor: TigrisColor.greenOpacity20,
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: height * .08,
              child: InkWell(
                onTap: () => context.read<JobApplicationFormBloc>().add(
                      JobApplicationFormEvent.selectPageToCreateAccount(),
                    ),
                child: Row(
                  children: [
                    const TigrisImage(
                      image: TigrisImages.chevronLeft,
                      color: TigrisColor.grey,
                      width: 25.0,
                    ),
                    Text(
                      'back_button_name'.tr(),
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: TigrisColor.greenOpacity100,
                              ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            Center(
              child: Stack(
                children: [
                  SizedBox(
                    height: 130,
                    child: TigrisImage(
                      image: TigrisImages.inbox,
                      color: TigrisColor.blackOpacity100,
                      width: 74.0,
                    ),
                  ),
                  Positioned(
                    left: 18,
                    right: 18,
                    bottom: 70,
                    top: 10,
                    child: Container(
                      color: TigrisColor.white,
                    ),
                  ),
                  Positioned(
                    left: 18,
                    right: 18,
                    bottom: 70,
                    top: 10,
                    child: Container(
                      color: TigrisColor.greenOpacity20,
                    ),
                  ),
                  Positioned(
                    left: 10,
                    right: 10,
                    bottom: 67,
                    child: TigrisImage(
                      image: TigrisImages.fileText,
                      color: TigrisColor.greenOpacity100,
                      width: 47.0,
                      height: 59,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .11,
              child: Center(
                child: Text(
                  'job_application_form.email_confirmation'.tr(),
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            SizedBox(
              child: Center(
                child: Text(
                  'job_application_form.description_email_confirmation'.tr(),
                  style: Theme.of(context).textTheme.labelSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TigrisButton.primary(
                text: 'reset_password_screen.button_open_mail_app'.tr(),
                onPressed: () async {
                  await OpenMailApp.openMailApp();
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TigrisTextField(
                greenBackGround: true,
                onSubmitted: (_) => {},
                topTip: true,
                controller: _confirmationCode,
                title:
                    'job_application_form.title_input_confirmation_code'.tr(),
                textInputType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: height * .1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TigrisButton.primary(
                text: 'job_application_form.button_title_confirm_email_address'
                    .tr(),
                onPressed: () => context.read<JobApplicationFormBloc>().add(
                      JobApplicationFormEvent.sendCode(
                        code: _confirmationCode.text,
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget initScreen(double height) {
    return Scaffold(
      backgroundColor: TigrisColor.greenOpacity20,
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          SizedBox(
            height: height * .08,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Row(
                  children: [
                    const TigrisImage(
                      image: TigrisImages.chevronLeft,
                      color: TigrisColor.grey,
                      width: 25.0,
                    ),
                    Text(
                      'back_button_name'.tr(),
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: TigrisColor.greenOpacity100,
                              ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: height * .05),
          SizedBox(
            height: height * .14,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Text(
                  'job_application_form.title_ask_for_download'.tr(),
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * .08,
            child: Center(
              child: Text(
                'job_application_form.description_ask_for_download'.tr(),
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: height * .65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: TigrisButton.primary(
                    text: 'job_application_form.button_upload_cv'.tr(),
                    onPressed: () {
                      context.read<JobApplicationFormBloc>().add(
                            JobApplicationFormEvent.uploadResume(),
                          );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                TigrisButton.text(
                  textColor: TigrisColor.blackOpacity50,
                  text: 'initial_screen.skip'.tr(),
                  onPressed: () {
                    context.read<JobApplicationFormBloc>().add(
                          JobApplicationFormEvent.resumeIsParsed(
                            status: 'skip',
                            parsedResumeId: '',
                          ),
                        );
                  },
                ),
                SizedBox(height: height * .05),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget createAccount(double height, String firstName) {
    return Scaffold(
      backgroundColor: TigrisColor.greenOpacity20,
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: height * .08,
              child: InkWell(
                onTap: () => context.read<JobApplicationFormBloc>().add(
                      JobApplicationFormEvent.selectPageToInit(),
                    ),
                child: Row(
                  children: [
                    const TigrisImage(
                      image: TigrisImages.chevronLeft,
                      color: TigrisColor.grey,
                      width: 25.0,
                    ),
                    Text(
                      'back_button_name'.tr(),
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: TigrisColor.greenOpacity100,
                              ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            SizedBox(
              height: height * .09,
              child: Center(
                child: Text(
                  '${'job_application_form.welcom'.tr()}${firstName.isNotEmpty ? ', $firstName' : ''}!',
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
            ),
            SizedBox(
              height: height * .08,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: Text(
                    'job_application_form.description_create_account'.tr(),
                    style: Theme.of(context).textTheme.labelSmall,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TigrisTextField(
                greenBackGround: true,
                onSubmitted: (_) => {},
                topTip: true,
                controller: _firstName,
                title: 'registration_screen.first_name'.tr(),
                textInputType: TextInputType.name,
                textInputAction: TextInputAction.next,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TigrisTextField(
                greenBackGround: true,
                onSubmitted: (_) => {},
                topTip: true,
                controller: _lastName,
                title: 'registration_screen.last_name'.tr(),
                textInputType: TextInputType.name,
                textInputAction: TextInputAction.next,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TigrisTextField(
                greenBackGround: true,
                onSubmitted: (_) => {},
                topTip: true,
                controller: _phone,
                title: 'registration_screen.phone_number'.tr(),
                textInputType: TextInputType.phone,
                textInputAction: TextInputAction.next,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TigrisTextField(
                greenBackGround: true,
                topTip: true,
                onSubmitted: (_) => {},
                controller: _email,
                title: 'registration_screen.email_adress'.tr(),
                textInputType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: height * .09,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TigrisButton.primary(
                text: 'job_application_form.next_step'.tr(),
                onPressed: () {
                  context.read<JobApplicationFormBloc>().add(
                        JobApplicationFormEvent.sendUserInfo(
                          firstName: _firstName.text,
                          lastName: _lastName.text,
                          phone: _phone.text,
                          email: _email.text,
                        ),
                      );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget choiceOfProfessionPage(double height) {
    return Scaffold(
      backgroundColor: TigrisColor.greenOpacity20,
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: height * .05,
            ),
            SizedBox(
              height: height * .11,
              child: Center(
                child: Text(
                  'job_application_form.title_profession_page'.tr(),
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Center(
              child: Text(
                'job_application_form.description_profession_page'.tr(),
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
            TigrisDropdownMenu(
              visibleBorder: false,
              items: listLanguage,
              nameItem: '${'job_application_form.search_in'.tr()} $language',
              onSelected: (type) {
                setState(() {
                  language = type;
                });
              },
            ),
            SizedBox(
              height: height * .01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: DropDownList(
                onSubmit: () {
                  if (professions.length < 5) {
                    codeOccupation.add('');
                    professions.add(_professsion.text);
                  } else {
                    TigrisMessage().showOverlay(
                      context,
                      'job_application_form.max_number_of_professions'.tr(),
                      false,
                    );
                  }
                  _professsion.clear();
                  setState(() {});
                },
                occupation: (value) {
                  if (professions.length < 5) {
                    codeOccupation.add(value);
                    professions.add(_professsion.text);
                  } else {
                    TigrisMessage().showOverlay(
                      context,
                      'job_application_form.max_number_of_professions'.tr(),
                      false,
                    );
                  }
                  FocusScope.of(context).unfocus();
                  _professsion.clear();
                  setState(() {});
                },
                controller: _professsion,
                curentLang: language,
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'job_application_form.name_list_functions'.tr(),
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            if (professions.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: height * .4,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: professions.length,
                    itemBuilder: (_, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        height: 54,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          border: Border.all(
                            color: TigrisColor.greenOpacity100,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                professions[index],
                                style: Theme.of(context).textTheme.labelSmall,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                codeOccupation.remove(codeOccupation[index]);
                                professions.remove(professions[index]);
                                setState(() {});
                              },
                              child: TigrisImage(
                                image: TigrisImages.x,
                                width: 25,
                                color: TigrisColor.blackOpacity100,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            if (professions.isEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: height * .4,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'job_application_form.no_profession_selected'.tr(),
                          style: Theme.of(context).textTheme.labelSmall,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: TigrisButton.primary(
                text: 'job_application_form.button_i_chose_features'.tr(),
                onPressed: () => context.read<JobApplicationFormBloc>().add(
                      JobApplicationFormEvent.enterProfession(
                        professions: professions,
                        codeOccupation: codeOccupation,
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget finishPage(double height) {
    return Scaffold(
      backgroundColor: TigrisColor.greenOpacity20,
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: height * .2),
              child: SizedBox(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'job_application_form.title_finish_page'.tr(),
                        style: Theme.of(context).textTheme.labelMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'job_application_form.description_finish_page'.tr(),
                        style: Theme.of(context).textTheme.labelSmall,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
              child: TigrisButton.primary(
                text: 'bottom_nav_bar_item.home'.tr(),
                onPressed: () async {
                  GetIt.instance.get<SocketService>().disconnect();
                  context.read<AppBloc>().add(
                        const AppEvent.preloadData(),
                      );
                  await Navigator.of(context).pushNamedAndRemoveUntil(
                    '/',
                    (route) => false,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget loginPage(double height) {
    return BlocListener<JobApplicationFormBloc, JobApplicationFormState>(
      listener: (context, state) => state.maybeMap(
        choiceOfProfessionPage: (_) {
          return Navigator.pop(context);
        },
        orElse: () {
          return null;
        },
      ),
      child: Container(
        height: 550,
        decoration: const BoxDecoration(
          color: TigrisColor.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: Scaffold(
            backgroundColor: TigrisColor.greenOpacity20,
            resizeToAvoidBottomInset: true,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
                  SizedBox(
                    height: height * .08,
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Row(
                        children: [
                          const TigrisImage(
                            image: TigrisImages.chevronLeft,
                            color: TigrisColor.grey,
                            width: 25.0,
                          ),
                          Text(
                            'back_button_name'.tr(),
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: TigrisColor.greenOpacity100,
                                ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Center(
                      child: Text(
                        'job_application_form.message_user_exists'.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(fontSize: 24),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: TigrisTextField(
                      topTip: true,
                      greenBackGround: true,
                      onSubmitted: (_) {},
                      controller: _email,
                      title: 'login_screen.username_textfield_hint'.tr(),
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: TigrisTextField(
                      topTip: true,
                      greenBackGround: true,
                      onSubmitted: (_) {},
                      obscureText: true,
                      controller: _password,
                      title: 'login_screen.password_textfield_hint'.tr(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 60,
                      bottom: 30,
                    ),
                    child: TigrisButton.primary(
                      text: 'login_screen.bottom_button'.tr(),
                      onPressed: () {
                        context.read<JobApplicationFormBloc>().add(
                              JobApplicationFormEvent.login(
                                email: _email.text,
                                password: _password.text,
                              ),
                            );
                      },
                    ),
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
