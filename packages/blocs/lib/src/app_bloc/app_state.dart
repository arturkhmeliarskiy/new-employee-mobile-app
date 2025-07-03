part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  factory AppState.init() = InitAppState;
  factory AppState.preloadDataCompleted(
    bool isAuthed,
    bool isPinCode,
    String languageTag,
    String userName,
    Uint8List userImage,
    NewsInfoDataModel newsList,
    WorkInfoDataModel workInfo,
    String message,
  ) = PreloadDataCompletedAppState;
  factory AppState.activeProtection({
    required bool inactive,
  }) = ActiveProtectionState;
  factory AppState.appInProgress() = AppInProgressState;
  factory AppState.notRegistered({
    required String userName,
    required NewsInfoDataModel newsList,
  }) = NotRegisteredAppState;
  factory AppState.errorConnection({
    required String message,
  }) = ErrorConnectionState;
}
