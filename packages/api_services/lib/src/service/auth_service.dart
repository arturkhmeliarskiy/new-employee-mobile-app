import 'dart:convert';
import 'dart:io';

import 'package:api_services/api_services.dart';
import 'package:shared/shared.dart';

class AuthService {
  final BaseHttpClient _baseHttpClient;
  final AccessCookieService _accessCookieService;

  AuthService(
    this._baseHttpClient,
    this._accessCookieService,
  );

  Future<AuthResponseModel> getAuthResponse(String body) async {
    final url = Uri.parse('${AppManager.currentConfig.apiBaseUrl}/auth/login');
    final response = await _baseHttpClient.post(url, body: body);
    if (response.statusCode == 200) {
      final cookies = response.headers['set-cookie'];
      var cookieValue = '';

      if (cookies != null) {
        final cookie = Cookie.fromSetCookieValue(cookies);
        cookieValue = cookie.value;
      }

      final isAlreadyLogged = await _accessCookieService.isAlreadyLoggedIn();

      if (isAlreadyLogged == false) {
        await _accessCookieService.setAccessCookie(cookieValue);
      }

      final result = AuthResponseModel.fromJson(jsonDecode(response.body));

      return result;
    } else {
      final result = AuthResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
        null,
      );

      return result;
    }
  }
}
