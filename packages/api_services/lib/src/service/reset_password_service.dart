import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:shared/shared.dart';

class ResetPasswordService {
  final BaseHttpClient _baseHttpClient;

  ResetPasswordService(this._baseHttpClient);
  Future<MessagesInfoResponseModel> sendMessageToEmail(
    String body,
  ) async {
    MessagesInfoResponseModel result;

    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/auth/forgotpassword',
    );

    final response = await _baseHttpClient.post(
      url,
      body: body,
    );

    if (response.statusCode == 200) {
      result = MessagesInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'] ?? '',
      );
    }

    return result;
  }

  Future<MessagesInfoResponseModel> putResetPassword(
    String body,
  ) async {
    MessagesInfoResponseModel result;

    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/auth/resetpassword',
    );

    final response = await _baseHttpClient.post(
      url,
      body: body,
    );

    if (response.statusCode == 200) {
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
