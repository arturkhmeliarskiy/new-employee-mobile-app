import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

@lazySingleton
class AccessCookieService {
  static const String id = 'id';

  final SecureStorageService _secureStorageService;

  AccessCookieService(this._secureStorageService);

  Future<String?> getAccessCookie() async {
    final getAccessCookie = await _secureStorageService.getValue(id);
    return getAccessCookie;
  }

  Future<void> setAccessCookie(String cookie) async {
    await _secureStorageService.setValue(id, cookie);
  }

  Future<bool> isAlreadyLoggedIn() async {
    final cookie = await _secureStorageService.getValue(id) ?? '';

    if (cookie.isNotEmpty) {
      return true;
    }

    return false;
  }

  Future<void> deleteAll() async {
    await _secureStorageService.deleteAll();
  }
}
