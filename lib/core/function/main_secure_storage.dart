import 'package:flutter_secure_storage/flutter_secure_storage.dart';

mixin MainSecureStorage {
  FlutterSecureStorage storage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
  );

  Future<void> secureDelete({required String key}) async {
    await storage.delete(key: key);
  }

  Future<void> secureDeleteAll() async {
    await storage.deleteAll();
  }

  Future<String> secureRead({required String key, String? defaultValue}) async {
    return await storage.read(key: key) ?? defaultValue ?? '';
  }

  Future<void> secureWrite({required String key, required String value}) async {
    await storage.write(key: key, value: value);
  }
}
