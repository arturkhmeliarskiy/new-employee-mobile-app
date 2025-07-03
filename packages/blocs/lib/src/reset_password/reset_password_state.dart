part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.loading() = ResetPasswordLoadingSentState;
  const factory ResetPasswordState.openResetPasswordScreen() =
      ResetPasswordOpenResetPasswordScreenState;
  const factory ResetPasswordState.messageSend() =
      ResetPasswordMessageSentState;
  const factory ResetPasswordState.error({
    String? message,
  }) = ResetPasswordErrorState;
  const factory ResetPasswordState.getPasswordResetLink({
    String? email,
  }) = ResetPasswordGetPasswordResetLinkState;
  const factory ResetPasswordState.success({
    String? email,
    String? password,
  }) = ResetPasswordSuceessState;
}
