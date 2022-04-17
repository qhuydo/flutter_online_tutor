import 'dart:io';

import 'package:dart_vlc/dart_vlc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:window_size/window_size.dart';

import 'bootstrap.dart';
import 'di/dependency_injection.dart';
import 'infrastructure/common/network/dio_interceptors.dart';

Future<void> mainCommon(String environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await configureInjection(environment);

  getIt<Dio>()
    ..options = BaseOptions(
      connectTimeout: 15000,
      receiveTimeout: 15000,
    )
    ..interceptors.add(getIt<DioInterceptor>());

  if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
    setWindowMinSize(const Size(600, 750));
    DartVLC.initialize();
  }
  if (!kIsWeb) _setTargetPlatformForDesktop();

  bootstrap();
}

main() => mainCommon(Environment.dev);

/// If the current platform is desktop, override the default platform to
/// a supported platform (iOS for macOS, Android for Linux and Windows).
/// Otherwise, do nothing.
void _setTargetPlatformForDesktop() {
  TargetPlatform? targetPlatform;
  if (Platform.isMacOS) {
    targetPlatform = TargetPlatform.iOS;
  } else if (Platform.isLinux || Platform.isWindows) {
    targetPlatform = TargetPlatform.android;
  }
  if (targetPlatform != null) {
    debugDefaultTargetPlatformOverride = targetPlatform;
  }
}
