part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.preloadData() = _PreloadDataAppEvent;
  const factory AppEvent.logInSuccess() = LogInSuccessAppEvent;
  const factory AppEvent.notRegistered() = NotRegisteredAppEvent;
  const factory AppEvent.exeptionMessage() = ExeptionMessageAppEvent;
  const factory AppEvent.showMoreNews() = ShowMoreNewsAppEvent;
}
