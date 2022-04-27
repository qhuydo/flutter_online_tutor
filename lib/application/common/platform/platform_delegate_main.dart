import 'abstract_target.dart';

class Target extends AbstractTarget {
  @override
  bool get isAndroid => false;

  @override
  bool get isDesktop => false;

  @override
  bool get isFuchsia => false;

  @override
  bool get isIOS => false;

  @override
  bool get isLinux => false;

  @override
  bool get isMacOS => false;

  @override
  bool get isMobile => false;

  @override
  bool get isSupportedChewiePlatforms => false;

  @override
  bool get isSupportedJitsiPlatforms => false;

  @override
  bool get isWeb => false;

  @override
  bool get isWindows => false;

}