import 'dart:convert';

import 'package:api_services/src/index.dart';
import 'package:shared/shared.dart';

class TimesheetService {
  final BaseHttpClient _baseHttpClient;

  TimesheetService(this._baseHttpClient);

  Future<List<TimesheetsCurrentPeriod>> getTimesheetsForCurrentPeriod(
    int year,
    int month,
    String placementId,
  ) async {
    List<TimesheetsCurrentPeriod> result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/timesheets'
      '/getTimesheetsForCurrentPeriod?year=$year&month=$month'
      '&placement=$placementId',
    );

    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> items = jsonDecode(response.body);

      result = List<TimesheetsCurrentPeriod>.from(
        items.map(
          (item) => TimesheetsCurrentPeriod(
            item['id'],
            item['name'],
            item['startDate'],
            item['endDate'],
            item['status'],
          ),
        ),
      ).toList();
    } else {
      result = <TimesheetsCurrentPeriod>[];
    }
    return result;
  }

  Future<TimesheetsResponseModel> getTimesheetsInfo(
    String timesheetid,
    String placementid,
  ) async {
    TimesheetsResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/timesheets?'
      'timesheetid=$timesheetid&placementid=$placementid',
    );

    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      result = TimesheetsResponseModel.fromJson(
        (jsonDecode(response.body) as Map<String, dynamic>)
          ..addAll({'code': 200}),
      );
    } else {
      result = TimesheetsResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
        [],
        [],
        [],
        [],
        [],
        null,
        null,
        [],
        {},
        null,
        [],
        null,
        [],
        [],
        [],
        [],
        [],
      );
    }
    return result;
  }

  Future<SfServiceCreateTimesheetResponseModel> postSfServiceCreateTimesheet(
    String agencyid,
    String body,
  ) async {
    SfServiceCreateTimesheetResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/timesheets/sfservicecreatetimesheet?agencyid=$agencyid',
    );

    final response = await _baseHttpClient.post(url, body: body);
    if (response.statusCode == 200) {
      result = SfServiceCreateTimesheetResponseModel.fromJson(
        jsonDecode(response.body),
      );
    } else {
      result = SfServiceCreateTimesheetResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
      );
    }

    return result;
  }

  Future<SfServiceCreateTimesheetResponseModel> postUpdateTimesheetNew(
    String body,
  ) async {
    SfServiceCreateTimesheetResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/timesheets/updateTimesheetNew',
    );

    final response = await _baseHttpClient.post(url, body: body);
    if (response.statusCode == 200) {
      result = SfServiceCreateTimesheetResponseModel.fromJson(
        jsonDecode(response.body),
      );
    } else {
      result = SfServiceCreateTimesheetResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
      );
    }

    return result;
  }
}
