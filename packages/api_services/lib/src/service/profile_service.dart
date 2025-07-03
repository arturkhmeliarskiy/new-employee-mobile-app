import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:http/http.dart' as http;
import 'package:shared/shared.dart';

class ProfileService {
  final BaseHttpClient _baseHttpClient;

  ProfileService(this._baseHttpClient);

  Future<NotificationMessagesResponseModel> getNotificationMessages() async {
    NotificationMessagesResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/notificationmessages?agencyid=all',
    );

    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      result =
          NotificationMessagesResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = NotificationMessagesResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
        null,
      );
    }
    return result;
  }

  Future<MessagesInfoResponseModel> putNotificationMessagesId(String id) async {
    MessagesInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/notificationmessages/$id?agencyid=all',
    );

    final response = await _baseHttpClient.put(url);
    if (response.statusCode == 200) {
      result = MessagesInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
      );
    }
    return result;
  }

  Future<NotificationMessagesReadAllResponseModel>
      postNotificationMessagesReadAll() async {
    NotificationMessagesReadAllResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/notificationmessages/readAll',
    );
    final response = await _baseHttpClient.post(url);
    if (response.statusCode == 200) {
      result = NotificationMessagesReadAllResponseModel.fromJson(
        jsonDecode(response.body),
      );
    } else {
      result = NotificationMessagesReadAllResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
        0,
      );
    }
    return result;
  }

  Future<http.Response> getNotificationTokens(String token) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/notificationmessages/{$token}',
    );

    return _baseHttpClient.get(url);
  }

  Future<http.Response> getInitFirebaseApp() async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/initfirebaseapp',
    );

    return _baseHttpClient.get(url);
  }

  Future<MessagesInfoResponseModel> postNotificationTokens(String body) async {
    MessagesInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/notificationtokens',
    );

    final response = await _baseHttpClient.post(url, body: body);
    if (response.statusCode == 200) {
      result = MessagesInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
      );
    }

    return result;
  }

  Future<http.Response> putNotificationTokens(String token) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/notificationtokens/{$token}',
    );

    return _baseHttpClient.put(url);
  }

  Future<http.Response> deleteNotificationTokens(String token) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/notificationtokens/{$token}',
    );

    return _baseHttpClient.delete(url);
  }

  Future<Base64ImageResponseModel> getBase64Image(String fileName) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/getphoto?filename=$fileName&encoding=base64',
    );

    final response = await _baseHttpClient.get(url);

    final result = Base64ImageResponseModel.fromJson(jsonDecode(response.body));
    return result;
  }

  Future<Base64MyFilesResponseModel> getBase64MyFiles(String id) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/files/download?id=$id&agencyid=all',
    );

    final response = await _baseHttpClient.get(url);

    final result =
        Base64MyFilesResponseModel.fromJson(jsonDecode(response.body));
    return result;
  }

  Future<Base64ImageResponseModel> getBase64AgencyFile(String idAgency) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/sffiles/agency/file?fileId=$idAgency',
    );

    final response = await _baseHttpClient.get(url);

    final result = Base64ImageResponseModel.fromJson(jsonDecode(response.body));
    return result;
  }

  Future<FilesResponseModel> getMyFiles() async {
    FilesResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/files?agencyid=all',
    );

    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      result = FilesResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = FilesResponseModel(
        response.statusCode,
        [],
      );
    }

    return result;
  }

  Future<http.Response> getMyFileId(String id, String fileName) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/files/download?id=$id',
    );

    return _baseHttpClient.get(url);
  }

  Future<MessagesInfoResponseModel> shareFile(String body) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/files/share',
    );

    final response = await _baseHttpClient.post(url, body: body);

    final result = MessagesInfoResponseModel(
      response.statusCode,
      response.statusCode == 200
          ? jsonDecode(response.body)['message'] ?? ''
          : 'edit_document.not_share'.tr(),
    );

    return result;
  }

  Future<MessagesInfoResponseModel> deleteMyFileId(
    String fileName,
    String id,
  ) async {
    MessagesInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/files?filename=$fileName&fileid=$id',
    );

    final response = await _baseHttpClient.delete(url);

    if (response.statusCode == 200) {
      result = MessagesInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
      );
    }

    return result;
  }

  Future<MessagesInfoAddFileResponseModel> postMyFile(String body) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/files',
    );

    final response = await _baseHttpClient.post(url, body: body);
    if (response.statusCode == 200) {
      final result =
          MessagesInfoAddFileResponseModel.fromJson(jsonDecode(response.body));
      return result;
    } else {
      final result = MessagesInfoAddFileResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
        null,
      );
      return result;
    }
  }

  Future<http.Response> postShareMyFile(String body) async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/files',
    );

    return _baseHttpClient.post(url, body: body);
  }

  Future<MessagesInfoResponseModel> postProfilePhoto(String body) async {
    MessagesInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/s3/addprofilephoto',
    );

    final response = await _baseHttpClient.post(url, body: body);

    if (response.statusCode == 200) {
      result = MessagesInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
      );
    }

    return result;
  }

  Future<InfoResponseModel> getInfo() async {
    InfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/info',
    );

    final response = await _baseHttpClient.get(url);

    if (response.statusCode == 200) {
      result = InfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = InfoResponseModel(null);
    }

    return result;
  }

  Future<http.Response> putUpdatePersonals() async {
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/employees/updatepersonals',
    );

    return _baseHttpClient.put(url);
  }

  Future<MessagesInfoResponseModel> putChangePassword(String body) async {
    MessagesInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/changepassword',
    );
    final response = await _baseHttpClient.put(url, body: body);

    if (response.statusCode == 200) {
      result = MessagesInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
      );
    }

    return result;
  }

  Future<MessagesInfoResponseModel> putLanguage(String body) async {
    MessagesInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/language',
    );
    final response = await _baseHttpClient.put(url, body: body);
    if (response.statusCode == 200) {
      result = MessagesInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
      );
    }

    return result;
  }

  Future<MessagesInfoResponseModel> putChangeUserName(String body) async {
    MessagesInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/changeusername',
    );
    final response = await _baseHttpClient.put(url);
    if (response.statusCode == 200) {
      result = MessagesInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
      );
    }

    return result;
  }

  Future<MessagesInfoResponseModel> getLogout() async {
    MessagesInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/auth/logout',
    );

    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      result = MessagesInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
      );
    }

    return result;
  }

  Future<AgencyFilesResponseModel> getAgencyFiles() async {
    AgencyFilesResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/sffiles/agencyFiles?agencyId=all',
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

  Future<MessagesInfoResponseModel> putPersonalinfo(String body) async {
    MessagesInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/users/personalinfo',
    );

    final response = await _baseHttpClient.put(url, body: body);

    if (response.statusCode == 200) {
      result = MessagesInfoResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
      );
    }

    return result;
  }
}
