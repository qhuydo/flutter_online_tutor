import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppInjectableModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @singleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @preResolve
  @named
  Future<Box<String>> get secretBox => Hive.openBox('secret');

  @preResolve
  @Named('mockSecret')
  Future<Box<String>> get mockSecretBox => Hive.openBox('mockSecret');

  @preResolve
  @Named('mockCacheSecret')
  Future<Box<String>> get mockCacheSecretBox => Hive.openBox<String>(
        'cache',
        bytes: Uint8List(0),
      );
}
