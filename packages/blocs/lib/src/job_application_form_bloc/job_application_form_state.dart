part of 'job_application_form_bloc.dart';

@freezed
class JobApplicationFormState with _$JobApplicationFormState {
  const factory JobApplicationFormState.init() = InitJobApplicationFormState;
  const factory JobApplicationFormState.loading() =
      LoadingJobApplicationFormState;
  const factory JobApplicationFormState.error({
    required String message,
  }) = ErrorJobApplicationFormState;
  const factory JobApplicationFormState.createAccount({
    required String email,
    required String firstName,
    required String lastName,
    required String phoneNamber,
  }) = CreateAccountJobApplicationFormState;
  const factory JobApplicationFormState.resultSuitableOptions({
    required List<SearchInputModel> resultSuitableOptions,
  }) = ResultSuitableOptionsJobApplicationFormState;
  const factory JobApplicationFormState.emailVerificationPage(String email) =
      EmailVerificationPageJobApplicationFormState;
  const factory JobApplicationFormState.choiceOfProfessionPage() =
      ChoiceOfProfessionPageJobApplicationFormState;
  const factory JobApplicationFormState.finishPage() =
      FinishPageJobApplicationFormState;
  const factory JobApplicationFormState.loginPage() =
      loginPageJobApplicationFormState;
}
