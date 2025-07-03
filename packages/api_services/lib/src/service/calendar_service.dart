import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:api_services/src/index.dart';
import 'package:shared/shared.dart';

class CalendarService {
  final BaseHttpClient _baseHttpClient;
  CalendarService(this._baseHttpClient);

  Future<ShiftsResponseModel> getShifts(
    String startDate,
    String endDate,
  ) async {
    ShiftsResponseModel result;
    final List<ShiftsModel> resultList = [];
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/calendarevents/eventsForEmployee?agencyid=all&startdate=$startDate&enddate=$endDate',
    );
    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      jsonDecode(response.body).forEach(
        (dynamic element) => {resultList.add(ShiftsModel.fromJson(element))},
      );

      result = ShiftsResponseModel(
        response.statusCode,
        '',
        resultList,
      );
    } else {
      result = ShiftsResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'] ?? '',
        [],
      );
    }

    return result;
  }

  Future<int> putAcceptEvent(
    String id,
  ) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/calendarevents/acceptEventForEmployee?eventid=$id',
    );
    final response = await _baseHttpClient.put(url);
    return response.statusCode;
  }

  Future<int> putRejectEvent(
    String id,
  ) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/calendarevents/rejectEventForEmployee?eventid=$id',
    );
    final response = await _baseHttpClient.put(url);
    return response.statusCode;
  }
}
