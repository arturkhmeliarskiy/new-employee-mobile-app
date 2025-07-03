// import 'dart:async';

import 'dart:async';
import 'dart:typed_data';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:view_models/view_models.dart';

part 'job_application_form_bloc.freezed.dart';
part 'job_application_form_event.dart';
part 'job_application_form_state.dart';

class JobApplicationFormBloc
    extends Bloc<JobApplicationFormEvent, JobApplicationFormState> {
  final ProfileRepository _profileRepository;
  final JobApplicationFormRepository _jobApplicationFormRepository;
  final SocketService _socketService;
  final AuthRepository _authRepository;
  final SharedPreferencesService _preferencesService;

  String fieldsAreNotFilled = 'registration_screen.fields_are_not_filled'.tr();
  StreamSubscription<dynamic>? otherBlocSubscription;

  String email = '';
  String firstName = '';
  String lastName = '';
  String phone = '';
  String addText = '';
  String userId = '';
  String resumeId = '';

  FileInfoDataModel file = FileInfoDataModel(
    uint8list: Uint8List(0),
    sizeInMb: 0.0,
  );

  JobApplicationFormBloc(
    this._profileRepository,
    this._jobApplicationFormRepository,
    this._socketService,
    this._authRepository,
    this._preferencesService,
  ) : super(const JobApplicationFormState.init()) {
    on<SelectPageToInitJobApplicationFormEvent>(selectPageToInit);
    on<SelectPageToCreateAccountJobApplicationFormEvent>(
      selectPageToCreateAccount,
    );
    on<UploadResumeJobApplicationFormEvent>(uploadResume);
    on<ResumeIsParsedJobApplicationFormEvent>(resumeIsParsed);
    on<SendUserInfoJobApplicationFormEvent>(sendUserInfo);
    on<SendCodeJobApplicationFormEvent>(sendCode);
    on<EnterProfessionJobApplicationFormEvent>(sendProfessions);
    on<GetSuitableOptionsJobApplicationFormEvent>(getSuitableOptions);
    on<LoginJobApplicationFormEvent>(login);

    streamState();
  }
  @override
  Future<void> close() {
    otherBlocSubscription?.cancel();
    _socketService.streamSocket.dispose();
    return super.close();
  }

  StreamSubscription<dynamic>? streamState() {
    return otherBlocSubscription =
        _socketService.streamSocket.getResponse.listen((data) {
      add(
        JobApplicationFormEvent.resumeIsParsed(
          status: data['status'] ?? '',
          parsedResumeId: data['parsedResumeId'] ?? '',
        ),
      );
    });
  }

  String getLanguage(String language) {
    return TigrisMenuOption()
        .languages
        .firstWhere(
          (element) => element['label'] == language,
        )['language']
        .toString();
  }

  Future<void> selectPageToInit(
    SelectPageToInitJobApplicationFormEvent event,
    Emitter<JobApplicationFormState> emit,
  ) async {
    emit(const JobApplicationFormState.init());
  }

  Future<void> login(
    LoginJobApplicationFormEvent event,
    Emitter<JobApplicationFormState> emit,
  ) async {
    if (event.email.isNotEmpty && event.password.isNotEmpty) {
      final response =
          await _authRepository.getAccessCookie(event.email, event.password);
      if (response.code == 200) {
        final resultNotificationTokens =
            await _profileRepository.postNotificationTokens();

        await _profileRepository.getNotificationMessages();
        if (response.code == 200 && resultNotificationTokens.code == 200) {
          await _preferencesService.setString(
            key: SharedPrefKeys.userNameKey,
            value: response.userDataModel?.firstName ?? '',
          );
          await _preferencesService.setString(
            key: SharedPrefKeys.userIdKey,
            value: response.userDataModel?.id ?? '',
          );
        }
        emit(const JobApplicationFormState.choiceOfProfessionPage());
      } else {
        emit(JobApplicationFormState.error(message: response.message));
        emit(
          JobApplicationFormState.createAccount(
            email: email,
            firstName: firstName,
            lastName: lastName,
            phoneNamber: phone,
          ),
        );
      }
    } else {
      emit(JobApplicationFormState.error(message: fieldsAreNotFilled));
      emit(
        JobApplicationFormState.createAccount(
          email: email,
          firstName: firstName,
          lastName: lastName,
          phoneNamber: phone,
        ),
      );
    }
  }

  Future<void> selectPageToCreateAccount(
    SelectPageToCreateAccountJobApplicationFormEvent event,
    Emitter<JobApplicationFormState> emit,
  ) async {
    emit(
      JobApplicationFormState.createAccount(
        email: email,
        firstName: firstName,
        lastName: lastName,
        phoneNamber: phone,
      ),
    );
  }

  Future<void> getSuitableOptions(
    GetSuitableOptionsJobApplicationFormEvent event,
    Emitter<JobApplicationFormState> emit,
  ) async {
    List<SearchInputModel> result = [];
    if (addText != event.text && event.text.length > 2) {
      result = await _jobApplicationFormRepository.getSuitableOptions(
        event.text,
        getLanguage(event.currentLang).toLowerCase(),
      );
    }
    addText = event.text;
    emit(
      JobApplicationFormState.resultSuitableOptions(
        resultSuitableOptions: result,
      ),
    );
    emit(
      const JobApplicationFormState.choiceOfProfessionPage(),
    );
  }

  Future<void> sendProfessions(
    EnterProfessionJobApplicationFormEvent event,
    Emitter<JobApplicationFormState> emit,
  ) async {
    if (event.professions.isEmpty) {
      emit(
        JobApplicationFormState.error(
          message: 'job_application_form.no_profession_selected'.tr(),
        ),
      );
    } else {
      emit(const JobApplicationFormState.loading());
      final response =
          await _jobApplicationFormRepository.sendingListOfProfessions(
        userId,
        resumeId,
        event.professions,
        event.codeOccupation,
      );
      if (response.code == 200) {
        emit(const JobApplicationFormState.finishPage());
      } else {
        emit(JobApplicationFormState.error(message: response.message ?? ''));
        emit(
          const JobApplicationFormState.choiceOfProfessionPage(),
        );
      }
    }
  }

  Future<void> uploadResume(
    UploadResumeJobApplicationFormEvent event,
    Emitter<JobApplicationFormState> emit,
  ) async {
    final newFile = await _profileRepository.formatFile();
    if (newFile.sizeInMb != 0.0) {
      emit(
        const JobApplicationFormState.loading(),
      );
      file = newFile;
      final response = await _jobApplicationFormRepository.uploadResume(file);
      userId = response.userId ?? '';
      if (response.code != 200) {
        emit(
          JobApplicationFormState.error(
            message: response.message ?? '',
          ),
        );
        emit(const JobApplicationFormState.init());
      }
    } else {
      emit(
        JobApplicationFormState.error(
          message: 'job_application_form.file_not_selected'.tr(),
        ),
      );
      emit(const JobApplicationFormState.init());
    }
  }

  Future<void> resumeIsParsed(
    ResumeIsParsedJobApplicationFormEvent event,
    Emitter<JobApplicationFormState> emit,
  ) async {
    resumeId = event.parsedResumeId;
    if (event.status == 'finished') {
      final response = await _jobApplicationFormRepository.getUserInfo(
        event.parsedResumeId,
        userId,
      );
      if (response.code == 200) {
        email = response.email ?? '';
        firstName = response.firstName ?? '';
        lastName = response.lastName ?? '';
        phone = response.phone ?? '';
      } else {
        emit(
          JobApplicationFormState.error(
            message: 'job_application_form.failed_parsed_resume'.tr(),
          ),
        );
      }
    } else if (event.status == 'failed') {
      emit(
        JobApplicationFormState.error(
          message: 'job_application_form.failed_upload_resume'.tr(),
        ),
      );
    }

    emit(
      JobApplicationFormState.createAccount(
        email: email,
        firstName: firstName,
        lastName: lastName,
        phoneNamber: phone,
      ),
    );
  }

  Future<void> sendUserInfo(
    SendUserInfoJobApplicationFormEvent event,
    Emitter<JobApplicationFormState> emit,
  ) async {
    void error(String message) {
      emit(
        JobApplicationFormState.error(
          message: message,
        ),
      );
      emit(
        JobApplicationFormState.createAccount(
          email: email,
          firstName: firstName,
          lastName: lastName,
          phoneNamber: phone,
        ),
      );
    }

    if (event.firstName.isNotEmpty &&
        event.lastName.isNotEmpty &&
        event.phone.isNotEmpty &&
        event.email.isNotEmpty) {
      emit(
        const JobApplicationFormState.loading(),
      );
      firstName = event.firstName;
      lastName = event.lastName;
      phone = event.phone;
      email = event.email;
      final response = await _jobApplicationFormRepository.userIsExists(
        email,
      );
      if (response.code == 200) {
        if (response.message == 'Need to verify user email!') {
          emit(
            JobApplicationFormState.emailVerificationPage(
              email,
            ),
          );
        } else {
          emit(
            JobApplicationFormState.createAccount(
              email: email,
              firstName: firstName,
              lastName: lastName,
              phoneNamber: phone,
            ),
          );
          emit(const JobApplicationFormState.loginPage());
        }
      } else {
        error(response.message ?? '');
      }
    } else {
      error(fieldsAreNotFilled);
    }
  }

  Future<void> sendCode(
    SendCodeJobApplicationFormEvent event,
    Emitter<JobApplicationFormState> emit,
  ) async {
    void error(String message) {
      emit(
        JobApplicationFormState.error(
          message: message,
        ),
      );
      emit(
        JobApplicationFormState.emailVerificationPage(
          email,
        ),
      );
    }

    if (event.code.isNotEmpty) {
      emit(
        const JobApplicationFormState.loading(),
      );
      final response = await _jobApplicationFormRepository.sendCode(
        event.code,
        firstName,
        lastName,
        email,
        phone,
      );
      if (response.code == 200) {
        final password = response.password ?? '';
        if (password.isNotEmpty) {
          final result = await _authRepository.getAccessCookie(email, password);
          userId = result.userDataModel?.id ?? '';
          final resultNotificationTokens =
              await _profileRepository.postNotificationTokens();

          await _profileRepository.getNotificationMessages();
          if (response.code == 200 && resultNotificationTokens.code == 200) {
            await _preferencesService.setString(
              key: SharedPrefKeys.userNameKey,
              value: result.userDataModel?.firstName ?? '',
            );
            await _preferencesService.setString(
              key: SharedPrefKeys.userIdKey,
              value: result.userDataModel?.id ?? '',
            );
          }
          emit(const JobApplicationFormState.choiceOfProfessionPage());
        } else {
          error(response.message ?? '');
        }
      } else {
        error(response.message ?? '');
      }
    } else {
      error(fieldsAreNotFilled);
    }
  }
}
