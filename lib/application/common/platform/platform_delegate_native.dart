import 'dart:io';

import 'abstract_target.dart';

class Target extends AbstractTarget {
  @override
  bool get isAndroid => Platform.isAndroid;

  @override
  bool get isDesktop =>
      Platform.isMacOS || Platform.isLinux || Platform.isWindows;

  @override
  bool get isFuchsia => Platform.isFuchsia;

  @override
  bool get isIOS => Platform.isIOS;

  @override
  bool get isLinux => Platform.isIOS;

  @override
  bool get isMacOS => Platform.isMacOS;

  @override
  bool get isMobile => Platform.isIOS || Platform.isAndroid;

  @override
  bool get isSupportedChewiePlatforms => Platform.isAndroid || Platform.isIOS;

  @override
  bool get isWeb => false;

  @override
  bool get isWindows => Platform.isWindows;
}
