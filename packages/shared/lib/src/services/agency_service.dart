import 'package:view_models/view_models.dart';

class AgencyService {
  AgencyInfoModel getAgencyInfo(String employeeId, InfoUserDataModel info) {
    final recordsData =
        info.recordsData?.firstWhere((element) => element.id == employeeId);
    final agencyData = info.agencyData
        ?.firstWhere((element) => element.id == recordsData?.agencyId);
    return AgencyInfoModel(
      agencyId: agencyData?.id ?? '',
      agencyLogo: agencyData?.headerLogoUrl ?? '',
      agencyName: agencyData?.orgName ?? '',
      backgroundColor: agencyData?.styleJson?.header?.backgroundColor ?? '',
      id: agencyData?.id ?? '',
    );
  }

  String getAgencyLogo(String agencyId, InfoUserDataModel info) {
    String url =
        'https://s3-eu-central-1.amazonaws.com/tigris-public/news-images/logo/00D09000007vGzcEAE/6304b710744cfd827f0c8d80/logo';
    for (int index = 0; index < (info.agencyData ?? []).length; index++) {
      if (info.agencyData?[index].id == agencyId) {
        url = info.agencyData?[index].headerLogoUrl ?? '';
        return url;
      }
    }
    return url;
  }

  String getAgencyColor(String agencyId, InfoUserDataModel info) {
    String color = '0xFF12e0b8';
    for (int index = 0; index < (info.agencyData ?? []).length; index++) {
      if (info.agencyData?[index].id == agencyId) {
        color =
            info.agencyData?[index].styleJson?.header?.backgroundColor ?? '';
        return color;
      }
    }
    return color;
  }
}
