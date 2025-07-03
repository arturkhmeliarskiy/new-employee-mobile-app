part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.init() = RegistrationInitState;
  const factory RegistrationState.fieldValues({
    required String email,
    required String firstName,
    required String lastName,
    required String phoneNamber,
    required String password,
    required String confirmedPassword,
  }) = RegistrationFieldValuesState;
  const factory RegistrationState.loading() = RegistrationLoadingState;
  const factory RegistrationState.success({
    required String email,
    required String password,
  }) = RegistrationSuccessState;
  const factory RegistrationState.error({
    required String page,
    required String message,
  }) = RegistrationErrorState;
  const factory RegistrationState.errorResponse({
    required String message,
  }) = RegistrationErrorResponseState;
}
