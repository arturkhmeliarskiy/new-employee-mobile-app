part of 'agency_related_info_bloc.dart';

@freezed
class AgencyRelatedInfoEvent with _$AgencyRelatedInfoEvent {
  const factory AgencyRelatedInfoEvent.init(
    String agencyId,
  ) = InitAgencyRelatedInfoEvent;
  factory AgencyRelatedInfoEvent.loadFile({
    required AgencyFilesInfoDataModel file,
  }) = LoadFileAgencyRelatedInfoEvent;
  const factory AgencyRelatedInfoEvent.showMoreNews() =
      ShowMoreAgencyRelatedInfoEvent;
}
