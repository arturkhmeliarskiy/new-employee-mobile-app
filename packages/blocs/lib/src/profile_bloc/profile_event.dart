part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.init() = _InitEvent;
  const factory ProfileEvent.updateBasicInformation() =
      UpdateBasicInformationEvent;
  const factory ProfileEvent.updateUserImage() =
      UpdateUserImageBasicInformationEvent;
  const factory ProfileEvent.deleteMessageId(
    String typeMessage,
    String id,
  ) = DeleteMessageIdEvent;
  const factory ProfileEvent.newNotification() = ProfileNewNotificationEvent;
  const factory ProfileEvent.logout() = _LogoutEvent;
}
