import 'dart:convert';
import 'dart:typed_data';

import 'package:api_services/api_services.dart';
import 'package:shared/shared.dart';

class CVFileUploadService {
  final BaseHttpClient _baseHttpClient;

  CVFileUploadService(
    this._baseHttpClient,
  );

  Future<CVFileUploadGetUrlModel> getUrl(
    String body,
  ) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/tools/upload/url/guest',
    );
    final response = await _baseHttpClient.post(url, body: body);

    return CVFileUploadGetUrlModel(
      response.statusCode,
      jsonDecode(response.body)['message'] ?? '',
      jsonDecode(response.body)['url'] ?? '',
      jsonDecode(response.body)['token'] ?? '',
      jsonDecode(response.body)['userId'] ?? '',
      '',
      '',
      '',
      '',
      '',
    );
  }

  Future<CVFileUploadGetUrlModel> uploadFile(
    String url,
    Uint8List body,
  ) async {
    final response = await _baseHttpClient.put(Uri.parse(url), body: body);
    return CVFileUploadGetUrlModel(
      response.statusCode,
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    );
  }

  Future<CVFileUploadGetUrlModel> startParseFile(
    String token,
  ) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/tools/upload/parseCV/guest',
    );
    final body = json.encode({'token': token});
    final response = await _baseHttpClient.post(url, body: body);
    return CVFileUploadGetUrlModel(
      response.statusCode,
      response.statusCode == 200
          ? jsonDecode(response.body)['status'] ?? ''
          : jsonDecode(response.body)['message'] ?? '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    );
  }

  Future<CVFileUploadGetUrlModel> getUserInfo(String body) async {
    CVFileUploadGetUrlModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/tools/user/userInfo',
    );

    final response = await _baseHttpClient.post(url, body: body);

    if (response.statusCode == 200) {
      final userInfo = jsonDecode(response.body)['userInfo'] ?? '';
      final email = userInfo['email']['email'] ?? '';
      final phone = userInfo['phone']['number'] ?? '';

      result = CVFileUploadGetUrlModel(
        response.statusCode,
        '',
        '',
        '',
        '',
        userInfo['firstName'] ?? '',
        userInfo['lastName'] ?? '',
        email,
        phone,
        '',
      );
    } else {
      result = CVFileUploadGetUrlModel(
        response.statusCode,
        jsonDecode(response.body)['message'] ?? '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
      );
    }

    return result;
  }

  Future<CVFileUploadGetUrlModel> userIsExists(String body) async {
    CVFileUploadGetUrlModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/tools/user/checkExist',
    );

    final response = await _baseHttpClient.post(url, body: body);

    result = CVFileUploadGetUrlModel(
      response.statusCode,
      jsonDecode(response.body)['message'] ?? '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    );

    return result;
  }

  Future<CVFileUploadGetUrlModel> sendCode(
    String body,
  ) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/tools/user/validate',
    );

    final response = await _baseHttpClient.post(url, body: body);

    return CVFileUploadGetUrlModel(
      response.statusCode,
      jsonDecode(response.body)['message'] ?? '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      jsonDecode(response.body)['password'] ?? '',
    );
  }

  Future<CVFileUploadGetUrlModel> sendingListOfProfessions(String body) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/tools/user/create/solicitation',
    );

    final response = await _baseHttpClient.post(url, body: body);

    return CVFileUploadGetUrlModel(
      response.statusCode,
      jsonDecode(response.body)['message'] ?? '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    );
  }
}
