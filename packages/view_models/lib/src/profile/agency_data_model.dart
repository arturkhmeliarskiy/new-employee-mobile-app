import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:view_models/src/profile/style_json_data_model.dart';

part 'agency_data_model.freezed.dart';
part 'agency_data_model.g.dart';

@freezed
class AgencyDataModel with _$AgencyDataModel {
  const factory AgencyDataModel({
    String? id,
    String? orgName,
    String? orgSlogan,
    String? phone,
    String? country,
    String? styleURL,
    String? link,
    String? agencyAbonnSettings,
    String? agencyTigrisSettings,
    String? sfOrgId,
    String? sfLEId,
    String? sfRecordId,
    bool? isGetLEorg,
    bool? isRootAccount,
    String? fieldSet,
    String? googleTagManagerId,
    String? shippingLongitude,
    String? shippingLatitude,
    String? website,
    String? careerMsg,
    String? menuSettings,
    String? expirationPeriodEmployee,
    String? expirationPeriodApplicant,
    String? fieldSetForProfile,
    String? extendPermissionMessages,
    String? recordTypesIds,
    String? picklistData,
    String? createdAt,
    String? updatedAt,
    String? headerLogoUrl,
    String? zip,
    String? description,
    String? welcomeMsg,
    String? movieAfterInvite,
    StyleJsonDataModel? styleJson,
    int? tigrisClosedYearC,
    bool? tigrisFutureApproveTimesheetC,
    bool? tigrisSeparating38hoursIntoEqualPartsC,
    bool? tigrisTSPerReslevelC,
    bool? tigrisDagReslevelC,
    bool? tigrisPresenterenFdC,
    bool? tigrisFDresC,
    bool? tigrisPresenterenWDCc,
    bool? tigrisPresenterenKVc,
    bool? tigrisPresenterenADVc,
    bool? tigrisADVreserverenC,
    bool? tigrisPresenterenTvTc,
    bool? tigrisTvTreserverenC,
    bool? tigrisPresenterenVDTc,
    bool? tigrisPresenterenVDwc,
    bool? tigrisPresenterenVDbc,
    bool? tigrisPresenterenVGc,
    String? tigrisReservationHalfEvenRoundingFromC,
    String? googlePlacesApiKey,
  }) = _AgencyDataModel;

  factory AgencyDataModel.fromJson(Map<String, dynamic> json) =>
      _$AgencyDataModelFromJson(json);
}
