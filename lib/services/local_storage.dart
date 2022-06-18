import 'package:controllers/services/local_storage_provider.dart';

class LocalStorageRepository {
  final LocalStorageProvider _provider = LocalStorageProvider();

  Future<dynamic> getItem({required String key}) async {
    return await _provider.getItem(key: key);
  }

  Future<bool> setItem({required String key, required dynamic value}) async {
    return await _provider.setItem(key: key, value: value);
  }

  Future<bool> contains({required String key}) async {
    return _provider.containsItem(key: key);
  }

  Future<bool> clear() async {
    return await _provider.clearStorage();
  }
}
