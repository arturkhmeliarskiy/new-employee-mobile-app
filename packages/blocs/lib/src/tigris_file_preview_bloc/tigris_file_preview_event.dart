part of 'tigris_file_preview_bloc.dart';

@freezed
class TigrisFilePreviewEvent with _$TigrisFilePreviewEvent {
  const factory TigrisFilePreviewEvent.getFile({
    required String nameFile,
    required Uint8List data,
    required String type,
  }) = GetFileTigrisFilePreviewEvent;
  const factory TigrisFilePreviewEvent.saveFile({
    required String nameFile,
    required Uint8List data,
  }) = SaveFileTigrisFilePreviewEvent;
  const factory TigrisFilePreviewEvent.fileNotSupported({
    required String nameFile,
  }) = DeleteFileInCacheTigrisFilePreviewEvent;
}
