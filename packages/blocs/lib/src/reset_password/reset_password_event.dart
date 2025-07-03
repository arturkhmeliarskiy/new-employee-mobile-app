part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordEvent with _$ResetPasswordEvent {
  factory ResetPasswordEvent.openResetPasswordScreen() =
      OpenResetPasswordScreenEvent;
  factory ResetPasswordEvent.sendRecoveryInstructions({
    required String email,
  }) = SendRecoveryInstructionsEvent;
  factory ResetPasswordEvent.getPasswordResetLink() = GetPasswordResetLinkEvent;
  factory ResetPasswordEvent.saveNewPassword({
    required String password,
    required String repeatPassword,
  }) = SaveNewPasswordEvent;
}
