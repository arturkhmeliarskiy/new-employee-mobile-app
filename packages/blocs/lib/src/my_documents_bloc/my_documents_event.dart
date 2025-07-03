part of 'my_documents_bloc.dart';

@freezed
class MyDocumentsEvent with _$MyDocumentsEvent {
  factory MyDocumentsEvent.init() = InitMyDocumentsEvent;
  factory MyDocumentsEvent.addMyFiles(
    String expirationDate,
    String typeDocument,
    bool shareWithAgency,
  ) = _AddMyFilesEvent;
  factory MyDocumentsEvent.openMyFiles() = _OpenMyFilesEvent;
  factory MyDocumentsEvent.loadFile({
    required FilesInfoDataModel file,
  }) = LoadFileMyDocumentsEvent;
  factory MyDocumentsEvent.deleteFile({
    required String id,
    required String nameFile,
  }) = DeleteFileMyDocumentsEvent;
  factory MyDocumentsEvent.shareFile({
    required bool share,
    required FilesInfoDataModel file,
    required String idAgency,
  }) = ShareFileMyDocumentsEvent;
}
