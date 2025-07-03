import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:http/http.dart' as http;
import 'package:shared/shared.dart';

class BaseHttpClient {
  final AccessCookieService _accessCookieService;

  BaseHttpClient(this._accessCookieService);

  Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json; charset=UTF-8',
  };

  Future<http.Response> get(Uri url, {Map<String, String>? headers}) async {
    final Map<String, String> bodyErrorConnection = {
      'message': 'no_internet_connection'.tr(),
    };
    final accessCookie = await _accessCookieService.getAccessCookie();
    final currentHeaders = defaultHeaders;
    if (accessCookie != null) {
      currentHeaders['Cookie'] = 'sessionId=$accessCookie';
    }
    if (headers != null) {
      currentHeaders.addAll(headers);
    }
    http.Response result;
    try {
      result = await http.get(url, headers: currentHeaders);
    } on SocketException {
      result = http.Response(jsonEncode(bodyErrorConnection), 1009);
    }

    log(result.body);

    return result;
  }

  Future<http.Response> put(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final Map<String, String> bodyErrorConnection = {
      'message': 'no_internet_connection'.tr(),
    };
    final accessCookie = await _accessCookieService.getAccessCookie();
    final currentHeaders = defaultHeaders;
    if (accessCookie != null) {
      currentHeaders['Cookie'] = 'sessionId=$accessCookie';
    }
    if (headers != null) {
      currentHeaders.addAll(headers);
    }
    http.Response result;
    try {
      result = await http.put(
        url,
        headers: currentHeaders,
        body: body,
        encoding: encoding,
      );
    } on SocketException {
      result = http.Response(jsonEncode(bodyErrorConnection), 1009);
    }

    log(result.body);

    return result;
  }

  Future<http.Response> post(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final Map<String, String> bodyErrorConnection = {
      'message': 'no_internet_connection'.tr(),
    };
    final accessCookie = await _accessCookieService.getAccessCookie();
    final currentHeaders = defaultHeaders;
    if (accessCookie != null) {
      currentHeaders['Cookie'] = 'sessionId=$accessCookie';
    }
    if (headers != null) {
      currentHeaders.addAll(headers);
    }
    http.Response result;
    try {
      result = await http.post(
        url,
        headers: currentHeaders,
        body: body,
        encoding: encoding,
      );
    } on SocketException {
      result = http.Response(jsonEncode(bodyErrorConnection), 1009);
    }
    log(result.body);

    return result;
  }

  Future<http.Response> delete(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final Map<String, String> bodyErrorConnection = {
      'message': 'no_internet_connection'.tr(),
    };
    final accessCookie = await _accessCookieService.getAccessCookie();
    final currentHeaders = defaultHeaders;
    if (accessCookie != null) {
      currentHeaders['Cookie'] = 'sessionId=$accessCookie';
    }
    if (headers != null) {
      currentHeaders.addAll(headers);
    }
    http.Response result;
    try {
      result = await http.delete(
        url,
        headers: currentHeaders,
        body: body,
        encoding: encoding,
      );
    } on SocketException {
      result = http.Response(jsonEncode(bodyErrorConnection), 1009);
    }
    log(result.body);

    return result;
  }
}
