part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.notification({
    required bool notification,
    required bool unreadChatMessages,
    required String agencyId,
  }) = NotificationHomeEvent;
}
