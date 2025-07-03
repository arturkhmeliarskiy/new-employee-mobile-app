import 'dart:convert';

import 'package:api_services/src/index.dart';
import 'package:shared/shared.dart';

class HomeService {
  final BaseHttpClient _baseHttpClient;

  HomeService(this._baseHttpClient);

  Future<NewsInfoResponseModel> getNews(
    int offset,
    bool isRegisteredUser,
    String agencyId,
  ) async {
    String typeUser = 'guest';
    if (isRegisteredUser) {
      typeUser = 'user';
    }
    NewsInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/news/$typeUser?offset=$offset&limit=10${agencyId.isNotEmpty ? '&fromAgency=$agencyId' : ''}',
    );

    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      result = NewsInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = NewsInfoResponseModel(
        response.statusCode,
        [],
        0,
      );
    }
    return result;
  }

  Future<AgencyFilesResponseModel> getAgencyDocumentsId(String agencyId) async {
    AgencyFilesResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/sffiles/agencyFiles?agencyId=$agencyId',
    );

    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      result = AgencyFilesResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = AgencyFilesResponseModel(
        response.statusCode,
        [],
      );
    }
    return result;
  }

  Future<WorkInfoResponseModel> getWorkInfo() async {
    WorkInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/workinfo',
    );

    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      result = WorkInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = WorkInfoResponseModel(
        response.statusCode,
        [],
      );
    }
    return result;
  }

  Future<CompaniesResponseModel> getJobCompanies(String agencyId) async {
    CompaniesResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/companies/'
      'getjobcompanies?limit=100&offset=0&sortby=startDate&sortdir='
      'DESC&status=Active+placements&fromAgency=${agencyId.isNotEmpty ? agencyId : 'all'}',
    );

    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      result = CompaniesResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = CompaniesResponseModel(
        response.statusCode,
        [],
        0,
      );
    }
    return result;
  }

  Future<TimesheetsInfoResponseModel> getTimesheets() async {
    TimesheetsInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/timesheets/'
      'list/user?period=all&fromAgency=all&offset=0&limit=100',
    );

    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      result = TimesheetsInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = TimesheetsInfoResponseModel(
        response.statusCode,
        [],
        0,
      );
    }
    return result;
  }

  Future<MessagesInfoResponseModel> postApprovalRequests(
    String body,
    String action,
  ) async {
    MessagesInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/approvalrequests/$action',
    );

    final response = await _baseHttpClient.post(url, body: body);
    if (response.statusCode == 200) {
      result = MessagesInfoResponseModel(
        200,
        action == 'approve' ? 'Successful approved' : 'Successful decline',
      );
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
      );
    }
    return result;
  }
}
