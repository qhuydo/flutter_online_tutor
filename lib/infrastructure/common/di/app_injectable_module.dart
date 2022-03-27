import 'dart:typed_data';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppInjectableModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

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
