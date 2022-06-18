import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageProvider extends GetConnect {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  LocalStorageProvider() {
    onInit();
  }

  dynamic getItem({required String key}) async {
    final SharedPreferences _storage = await _prefs;
    return _storage.getString(key) ?? '';
  }

  Future<bool> setItem({required String key, required dynamic value}) async {
    final SharedPreferences _storage = await _prefs;
    return await _storage.setString(key, value);
  }

  Future<bool> containsItem({required String key}) async {
    final SharedPreferences _storage = await _prefs;
    return _storage.containsKey(key);
  }

  Future<bool> clearStorage() async {
    final SharedPreferences _storage = await _prefs;
    return await _storage.clear();
  }
}
