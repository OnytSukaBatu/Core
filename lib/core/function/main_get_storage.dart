import 'package:get_storage/get_storage.dart';

mixin MainGetStorage {
  GetStorage box = GetStorage();

  Future<void> onGetStorageInit() async {
    await GetStorage.init();
  }

  Future<void> boxErase() async {
    await box.erase();
  }

  dynamic boxRead({required String key, dynamic defaultValue}) {
    return box.read(key) ?? defaultValue;
  }

  Future<void> boxRemove({required String key}) async {
    await box.remove(key);
  }

  Future<void> boxWrite({required String key, required dynamic value}) async {
    await box.write(key, value);
  }
}
