import 'dart:convert';

import 'package:api_services/api_services.dart';
import 'package:shared/shared.dart';

class SearchService {
  final BaseHttpClient _baseHttpClient;

  SearchService(
    this._baseHttpClient,
  );

  Future<SearchResponse> getSuitableOptions(
    String text,
    String currentLang,
  ) async {
    SearchResponse result;
    final url = Uri.parse(
      '${AppManager.currentConfig.apiBaseUrl}/tools/search/esco/functions?search=$text&lang=$currentLang',
    );
    final response = await _baseHttpClient.get(url);
    if (response.statusCode == 200) {
      result = SearchResponse(
        response.statusCode,
        '',
        SearchListModel.fromJson(jsonDecode(response.body)),
      );
    } else {
      result = SearchResponse(
        response.statusCode,
        jsonDecode(response.body)['message'] ?? '',
        SearchListModel([]),
      );
    }
    return result;
  }
}
