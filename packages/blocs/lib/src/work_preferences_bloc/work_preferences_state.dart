part of 'work_preferences_bloc.dart';

@freezed
class WorkPreferencesState with _$WorkPreferencesState {
  const factory WorkPreferencesState.loading() = LoadingWorkPreferencesState;
  const factory WorkPreferencesState.saveInformationSuccess({
    required MessagesInfoDataModel model,
  }) = WorkPreferencesSuccessState;
  const factory WorkPreferencesState.saveInformationlogInFailure({
    required MessagesInfoDataModel model,
  }) = WorkPreferencesFailureState;
}
