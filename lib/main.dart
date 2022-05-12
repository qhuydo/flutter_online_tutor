import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:window_size/window_size.dart';

import 'application/common/platform/platform_delegate.dart';
import 'application/common/utils/video_player.dart';
import 'bootstrap.dart';
import 'di/dependency_injection.dart';
import 'infrastructure/common/network/dio_interceptors.dart';
import 'presentation/common/routes/app_routes.gr.dart';

Future<void> mainCommon(String environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await configureInjection(environment);
  getIt.registerSingleton<AppRouter>(AppRouter());

  getIt<Dio>()
    ..options = BaseOptions(
      connectTimeout: 15000,
      receiveTimeout: 15000,
    )
    ..interceptors.add(getIt<DioInterceptor>());

  if (Target().isDesktop) {
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
  if (Target().isMacOS) {
    targetPlatform = TargetPlatform.iOS;
  } else if (Target().isLinux || Target().isWindows) {
    targetPlatform = TargetPlatform.android;
  }
  if (targetPlatform != null) {
    debugDefaultTargetPlatformOverride = targetPlatform;
  }
}
