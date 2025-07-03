part of 'agency_documents_bloc.dart';

@freezed
class AgencyDocumentsState with _$AgencyDocumentsState {
  const factory AgencyDocumentsState.loading() = LoadingAgencyDocumentsState;
  const factory AgencyDocumentsState.init({
    required List<List<AgencyFilesInfoDataModel>> model,
  }) = InitAgencyDocumentsState;
  const factory AgencyDocumentsState.openFile({
    required String nameFile,
    required Uint8List file,
    required String type,
  }) = OpenFileAgencyDocumentsState;
  const factory AgencyDocumentsState.message({
    required String message,
  }) = MessageAgencyDocumentsState;
}
