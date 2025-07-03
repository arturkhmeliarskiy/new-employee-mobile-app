part of 'security_bloc.dart';

@freezed
class SecurityState with _$SecurityState {
  const factory SecurityState.init({required bool isPinCode}) =
      InitSecurityState;
  const factory SecurityState.savePasswordSuccess({
    required MessagesInfoDataModel model,
  }) = SavePasswordSecuritySuccessState;
  const factory SecurityState.savePasswordFailure({
    required MessagesInfoDataModel model,
  }) = SavePasswordSecurityFailureState;
  const factory SecurityState.savePasswordInProgress() =
      SavePasswordSecurityInProgressState;
}
