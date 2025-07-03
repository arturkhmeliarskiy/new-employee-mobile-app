part of 'agency_related_info_bloc.dart';

@freezed
class AgencyRelatedInfoState with _$AgencyRelatedInfoState {
  const factory AgencyRelatedInfoState.loading() =
      LoadingAgencyRelatedInfoStateState;
  const factory AgencyRelatedInfoState.loadingEmployers() =
      LoadingEmployersAgencyRelatedInfoStateState;
  const factory AgencyRelatedInfoState.init({
    required List<JobCompaniesDataModel> jobCompanies,
    required NewsInfoDataModel newsList,
    required List<AgencyFilesInfoDataModel> documents,
    required String orgLogo,
  }) = InitAgencyRelatedInfoStateState;
  const factory AgencyRelatedInfoState.openFile({
    required String nameFile,
    required Uint8List file,
    required String type,
  }) = OpenAgencyRelatedInfoStateState;
  const factory AgencyRelatedInfoState.message({
    required String message,
  }) = MessageAgencyRelatedInfoStateState;
}
