part of 'agency_documents_bloc.dart';

@freezed
class AgencyDocumentsEvent with _$AgencyDocumentsEvent {
  factory AgencyDocumentsEvent.init() = InitAgencyDocumentsEvent;
  factory AgencyDocumentsEvent.loadFile({
    required AgencyFilesInfoDataModel file,
  }) = LoadFileAgencyDocumentsEvent;
}
