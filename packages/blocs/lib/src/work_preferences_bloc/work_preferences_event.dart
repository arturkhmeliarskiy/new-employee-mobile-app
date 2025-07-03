part of 'work_preferences_bloc.dart';

@freezed
class WorkPreferencesEvent with _$WorkPreferencesEvent {
  const factory WorkPreferencesEvent.updateWorkPreferencesProfileData(
    String desiredSalary,
    String desiredFunction,
    String maxTravelTimeMinutes,
  ) = UpdateWorkPreferencesProfileDataEvent;
}
