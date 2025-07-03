part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.init({
    required bool isPinCode,
    required Uint8List uint8list,
    required String userName,
    required String agencyId,
    required bool navigateToPage,
    required bool notification,
    required NotificationMessagesDataModel notificationMessagesDataModel,
    required UserDataInfoModel infoDataModel,
  }) = InitProfileState;
  const factory ProfileState.loading() = LoadingProfileState;
  const factory ProfileState.logout() = LogoutProfileState;
  factory ProfileState.errorConnection({
    required String message,
  }) = ErrorConnectionProfileState;
}
