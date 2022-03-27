import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:window_size/window_size.dart';

import 'bootstrap.dart';
import 'di/dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await configureInjection(Environment.dev);
  if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
    setWindowMinSize(const Size(600, 750));
  }

  bootstrap();
}
