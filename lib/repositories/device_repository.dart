import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class DeviceRepository {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<void> persistIntro(bool intro) async {
    await storage.write(key: 'intro', value: intro.toString());
  }

  Future<bool> hasIntro() async {
    var value = await storage.read(key: 'intro');
    if (value != null) {
      return true;
    }
    return false;
  }
}
