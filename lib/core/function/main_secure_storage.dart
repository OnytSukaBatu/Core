import 'package:flutter_secure_storage/flutter_secure_storage.dart';

mixin MainSecureStorage {
  FlutterSecureStorage storage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
  );

  Future<void> setString({required String key, required String value}) async {
    await storage.write(key: key, value: value);
  }

  Future<String> getString({required String key, String dv = ''}) async {
    return await storage.read(key: key) ?? dv;
  }

  Future<void> setInt({required String key, required int value}) async {
    String inputValue = value.toString();
    await storage.write(key: key, value: inputValue);
  }

  Future<int> getInt({required String key, int dv = 0}) async {
    String returnValue = await storage.read(key: key) ?? dv.toString();
    return int.parse(returnValue);
  }

  Future<void> setDouble({required String key, required double value}) async {
    String inputValue = value.toString();
    await storage.write(key: key, value: inputValue);
  }

  Future<double> getDouble({required String key, dv = 0.0}) async {
    String returnValue = await storage.read(key: key) ?? dv.toString();
    return double.parse(returnValue);
  }

  Future<void> setBool({required String key, required bool value}) async {
    String date = DateTime.now().millisecondsSinceEpoch.toString();
    String inputValue = '$value~$date';
    await storage.write(key: key, value: inputValue);
  }

  Future<bool> getBool({required String key, bool dv = false}) async {
    String returnValue = await storage.read(key: key) ?? dv.toString();
    List listValue = returnValue.split('~');
    return bool.parse(listValue[0]);
  }

  Future<void> secureDelete({required String key}) async {
    await storage.delete(key: key);
  }

  Future<void> secureDeleteAll() async {
    await storage.deleteAll();
  }
}
