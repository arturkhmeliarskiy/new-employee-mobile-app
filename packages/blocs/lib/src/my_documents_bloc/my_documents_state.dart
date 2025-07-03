part of 'my_documents_bloc.dart';

@freezed
class MyDocumentsState with _$MyDocumentsState {
  const factory MyDocumentsState.loading() = LoadingMyDocumentsState;
  const factory MyDocumentsState.loadingClose() = LoadingCloseMyDocumentsState;
  const factory MyDocumentsState.init({
    required List<FilesInfoDataModel> allFilesCVDataModel,
    required List<FilesInfoDataModel> allFilesDataModel,
    required WorkInfoDataModel workInfo,
  }) = InitMyDocumentsState;
  const factory MyDocumentsState.addMyFileSuccess({
    required MessagesInfoAddFileDataModel model,
  }) = AddMyFileMyDocumentsSuccessState;
  const factory MyDocumentsState.addMyFileFailure({
    required MessagesInfoAddFileDataModel model,
  }) = AddMyFileMyDocumentsFailureState;
  const factory MyDocumentsState.openFile({
    required String nameFile,
    required Uint8List file,
    required String type,
  }) = OpenFileMyDocumentsState;
  const factory MyDocumentsState.message({
    required String message,
  }) = MessageMyDocumentsState;
}
