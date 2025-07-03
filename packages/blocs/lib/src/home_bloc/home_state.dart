part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = LoadingHomeState;
  const factory HomeState.notification(
    bool notification,
    ChatMessagesAgencyDataModel unreadChatMessages,
  ) = HomeNotificationState;
}
