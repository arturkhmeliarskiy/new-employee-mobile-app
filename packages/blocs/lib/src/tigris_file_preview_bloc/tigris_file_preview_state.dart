part of 'tigris_file_preview_bloc.dart';

@freezed
class TigrisFilePreviewState with _$TigrisFilePreviewState {
  const factory TigrisFilePreviewState.init() = InitTigrisFilePreviewState;
  const factory TigrisFilePreviewState.loadFile({
    required Uint8List file,
    required String fileName,
    required String type,
  }) = LoadFileTigrisFilePreviewState;
  const factory TigrisFilePreviewState.saveFile({
    required String message,
  }) = SaveFileTigrisFilePreviewState;
  const factory TigrisFilePreviewState.fileIsNotSupported({
    required String fileName,
  }) = FileIsNotSupportedTigrisFilePreviewState;
  const factory TigrisFilePreviewState.error({
    required String message,
  }) = ErrorFileTigrisFilePreviewState;
}
