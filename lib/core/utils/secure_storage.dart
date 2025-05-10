import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  static final SecureStorageService _instance =
      SecureStorageService._internal();

  factory SecureStorageService() => _instance;

  SecureStorageService._internal();

  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  static Future<void> init() async {
    // No initialization needed for flutter_secure_storage
  }

  static Future<void> writeData({
    required String key,
    required String value,
  }) async {
    await _storage.write(key: key, value: value);
  }

  static Future<String?> readData({
    required String key,
  }) async {
    return await _storage.read(key: key);
  }

  static Future<void> deleteData({
    required String key,
  }) async {
    await _storage.delete(key: key);
  }

  static Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}
