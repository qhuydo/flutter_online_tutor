import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

class SecureHiveStorage {
  late Uint8List _encryptionKey;

  static Future<SecureHiveStorage> create(FlutterSecureStorage storage) async {
    final object = SecureHiveStorage._()
      .._setPrivateKey(await _initPrivateKey(storage));
    return object;
  }

  SecureHiveStorage._();

  void _setPrivateKey(Uint8List encryptionKey) {
    _encryptionKey = encryptionKey;
  }

  static Future<Uint8List> _initPrivateKey(FlutterSecureStorage storage) async {
    // if key not exists return null
    final encryprionKey = await storage.read(key: 'key');
    if (encryprionKey == null) {
      final key = Hive.generateSecureKey();
      await storage.write(
        key: 'key',
        value: base64UrlEncode(key),
      );
    }
    final key = await storage.read(key: 'key');
    final encryptionKey = base64Url.decode(key!);
    // log('Encryption key: $encryptionKey');
    return encryptionKey;
  }

  Future<Box<T>> openBox<T>(String name) => Hive.openBox<T>(
        name,
        encryptionCipher: HiveAesCipher(_encryptionKey),
      );

  Future<Box<String>> get secretBox => openBox<String>('secret');
}
