part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.init() = InitLogInState;
  const factory LoginState.logInSuccess({
    required LoginStateDataModel model,
    required String message,
  }) = LogInSuccessState;
  const factory LoginState.logInFailure({
    required LoginStateDataModel model,
  }) = LogInFailureState;
  const factory LoginState.logInInProgress() = LogInInProgressState;
}
