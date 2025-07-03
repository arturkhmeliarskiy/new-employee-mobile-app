import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:shared/shared.dart';

class RegistrationService {
  final BaseHttpClient _baseHttpClient;

  RegistrationService(this._baseHttpClient);

  Future<MessagesInfoResponseModel> putRegistration(
    String body,
  ) async {
    MessagesInfoResponseModel result;

    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/auth/user/signup',
    );

    final response = await _baseHttpClient.post(
      url,
      body: body,
    );

    if (response.statusCode == 201) {
      result = MessagesInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'] ?? '',
      );
    }

    return result;
  }
}
