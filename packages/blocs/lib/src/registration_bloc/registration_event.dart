part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  factory RegistrationEvent.enteredEmail({
    required String email,
  }) = EnteredEmailEvent;
  factory RegistrationEvent.enteredUserInfo({
    required String firstName,
    required String lastName,
    required String phoneNamber,
  }) = EnteredUserInfoEvent;
  factory RegistrationEvent.enteredPassword({
    required String password,
    required String confirmedPassword,
  }) = EnteredPasswordEvent;
  factory RegistrationEvent.updateInformation() = UpdateInformationEvent;
}
