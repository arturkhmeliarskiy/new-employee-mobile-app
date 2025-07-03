import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:shared/shared.dart';

class ChatService {
  final BaseHttpClient _baseHttpClient;

  ChatService(this._baseHttpClient);

  Future<ChatGroupsAgencyResponseModel> getChatGroupsAgency(
    String agencyId,
  ) async {
    ChatGroupsAgencyResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}'
      '/api/chatgroups/allAgencies${agencyId.isNotEmpty ? '?agencyid=$agencyId' : '?agencyid=all'}',
    );

    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      result =
          ChatGroupsAgencyResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = ChatGroupsAgencyResponseModel(
        response.statusCode,
        [],
      );
    }
    return result;
  }

  Future<ChatMessagesAgencyResponseModel> getChatMessagesAgency(
    String chatgroupId,
    int offset,
  ) async {
    ChatMessagesAgencyResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}'
      '/api/chatmessages/allAgencies?chatgroupid='
      '$chatgroupId&offset=$offset&limit=20',
    );

    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      result =
          ChatMessagesAgencyResponseModel.fromJson(jsonDecode(response.body));
    } else {
      result = ChatMessagesAgencyResponseModel(
        response.statusCode,
        [],
        '',
      );
    }
    return result;
  }

  Future<UnreadChatMessagesAgencyResponseModel> getUnreadChatMessages(
    List<String> listChatgroupsIds,
  ) async {
    UnreadChatMessagesAgencyResponseModel result;
    String chatgroupsIds;

    chatgroupsIds = listChatgroupsIds.first;

    for (var i = 1; i < listChatgroupsIds.length; i++) {
      chatgroupsIds += '&chatgroupsids=${listChatgroupsIds[i]}';
    }
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/chatmessages/unread/'
      'allAgencies?chatgroupsids=$chatgroupsIds',
    );

    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      result = UnreadChatMessagesAgencyResponseModel.fromJson(
        jsonDecode(response.body),
      );
    } else {
      result = UnreadChatMessagesAgencyResponseModel(
        response.statusCode,
        [],
      );
    }
    return result;
  }

  Future<MessagesInfoResponseModel> putChatMessage(
    String chatgroupId,
    String agencyId,
  ) async {
    MessagesInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}'
      '/api/chatmessages/allAgencies?chatgroupid=$chatgroupId&agency=$agencyId',
    );

    final response = await _baseHttpClient.put(
      url,
    );
    if (response.statusCode == 200) {
      result = MessagesInfoResponseModel.fromJson(
        jsonDecode(response.body),
      );
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        '',
      );
    }
    return result;
  }

  Future<ChatMessagesResponseModel> postChatMessage(
    String body,
  ) async {
    ChatMessagesResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/chatmessages/allAgencies',
    );

    final response = await _baseHttpClient.post(
      url,
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: body,
    );
    if (response.statusCode == 200) {
      result = ChatMessagesResponseModel.fromJson(
        jsonDecode(response.body),
      );
    } else {
      result = ChatMessagesResponseModel(
        response.statusCode,
        null,
        '',
      );
    }
    return result;
  }

  Future<ChatGroupsAgencyResponseModel> postChatGroups(
    String body,
  ) async {
    ChatGroupsAgencyResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/chatgroups/allAgencies',
    );

    final response = await _baseHttpClient.post(url, body: body);
    if (response.statusCode == 200) {
      result = ChatGroupsAgencyResponseModel.fromJson(
        jsonDecode(response.body),
      );
    } else {
      result = ChatGroupsAgencyResponseModel(
        response.statusCode,
        [],
      );
    }
    return result;
  }

  Future<MessagesInfoResponseModel> postUpdateOnlyExternalMessages(
    String body,
  ) async {
    MessagesInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/chatgroups/'
      '/allAgencies/updateOnlyExternalMessages',
    );

    final response = await _baseHttpClient.post(url, body: body);
    if (response.statusCode == 200) {
      result = MessagesInfoResponseModel.fromJson(
        jsonDecode(response.body),
      );
    } else {
      result = MessagesInfoResponseModel(
        response.statusCode,
        jsonDecode(response.body)['message'],
      );
    }
    return result;
  }

  Future<MessagesFileInfoResponseModel> postChatMessagesUpload(
    String fileName,
    String chatGroupId,
    List<int> body,
  ) async {
    MessagesFileInfoResponseModel result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/api/chatmessages/upload?fileName=chat-files/$chatGroupId/$fileName',
    );

    final response = await _baseHttpClient.post(
      url,
      headers: {'Content-Type': 'application/octet-stream'},
      body: body,
    );
    if (response.statusCode == 200) {
      result = MessagesFileInfoResponseModel.fromJson(
        jsonDecode(response.body),
      );
    } else {
      result = MessagesFileInfoResponseModel(
        response.statusCode,
        '',
      );
    }
    return result;
  }
}
