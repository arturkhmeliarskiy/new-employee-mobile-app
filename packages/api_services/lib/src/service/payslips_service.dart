import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:api_services/src/models/payslips_response_model.dart';
import 'package:shared/shared.dart';

class PayslipsService {
  final BaseHttpClient _baseHttpClient;

  PayslipsService(
    this._baseHttpClient,
  );

  Future<PayslipsApiResponse> getPayslipsResponse(int year) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/payslips/list?sortby=period&sortdir=DESC&year=$year&fromAgency=all&limit=200',
    );

    final response = await _baseHttpClient.get(url);

    if (response.statusCode == 200) {
      final result = PayslipsApiResponse(
        response.statusCode,
        jsonDecode(response.body)['message'] ?? '',
        PayslipsResponseModel.fromJson(jsonDecode(response.body)),
      );

      return result;
    } else {
      final result = PayslipsApiResponse(
        response.statusCode,
        jsonDecode(response.body)['message'] ?? 'data fetch error',
        PayslipsResponseModel(0, []),
      );
      return result;
    }
  }
}
