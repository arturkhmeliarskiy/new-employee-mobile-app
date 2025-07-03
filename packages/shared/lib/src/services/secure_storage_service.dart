import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';
import 'package:uuid/uuid.dart';

@lazySingleton
class SecureStorageService {
  final SharedPreferencesService _sharedPreferencesService;
  final FlutterSecureStorage _flutterSecureStorage;

  SecureStorageService(
    this._sharedPreferencesService,
    this._flutterSecureStorage,
  );

  Future<String?> getValue(String key) {
    final sharedPreferenceKey = _sharedPreferencesService.getString(
      key: key,
    );

    if (sharedPreferenceKey == null) {
      return Future.value();
    }

    return _flutterSecureStorage.read(key: sharedPreferenceKey);
  }

  Future<void> setValue(String key, String value) async {
    final cookieId = const Uuid().v4();

    _sharedPreferencesService.setString(
      key: key,
      value: cookieId,
    );

    await _flutterSecureStorage.write(
      key: cookieId,
      value: value,
    );
  }

  Future<void> clearKey(String key, String value) async {
    final cookieId = const Uuid().v4();

    _sharedPreferencesService.setString(
      key: key,
      value: cookieId,
    );

    await _flutterSecureStorage.write(
      key: cookieId,
      value: value,
    );
  }

  Future<void> deleteAll() async {
    await _sharedPreferencesService.clear();
    await _flutterSecureStorage.deleteAll();
  }
}
