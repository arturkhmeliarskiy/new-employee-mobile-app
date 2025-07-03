part of 'job_application_form_bloc.dart';

@freezed
class JobApplicationFormEvent with _$JobApplicationFormEvent {
  factory JobApplicationFormEvent.selectPageToInit() =
      SelectPageToInitJobApplicationFormEvent;
  factory JobApplicationFormEvent.selectPageToCreateAccount() =
      SelectPageToCreateAccountJobApplicationFormEvent;
  factory JobApplicationFormEvent.uploadResume() =
      UploadResumeJobApplicationFormEvent;
  factory JobApplicationFormEvent.resumeIsParsed({
    required String status,
    required String parsedResumeId,
  }) = ResumeIsParsedJobApplicationFormEvent;
  const factory JobApplicationFormEvent.sendUserInfo({
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
  }) = SendUserInfoJobApplicationFormEvent;
  const factory JobApplicationFormEvent.enterProfession({
    required List<String> professions,
    required List<String> codeOccupation,
  }) = EnterProfessionJobApplicationFormEvent;
  factory JobApplicationFormEvent.getSuitableOptions({
    required String text,
    required String currentLang,
  }) = GetSuitableOptionsJobApplicationFormEvent;
  factory JobApplicationFormEvent.createAccount() =
      CreateAccountJobApplicationFormEvent;
  factory JobApplicationFormEvent.sendCode({
    required String code,
  }) = SendCodeJobApplicationFormEvent;
  factory JobApplicationFormEvent.login({
    required String email,
    required String password,
  }) = LoginJobApplicationFormEvent;
}
