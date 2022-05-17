import 'package:injectable/injectable.dart';

abstract class ServerUrl {
  String get url;

  String get webUrl;

  String get jitsiUrl;

  String get verifyRedirectHost;

  String get socketUrl;
}

@Singleton(as: ServerUrl, env: [Environment.dev, Environment.test, 'mock'])
class ServerUrlDev extends ServerUrl {
  @override
  String get url => 'https://sandbox.api.lettutor.com';

  @override
  String get webUrl => 'https://sandbox.app.lettutor.com';

  @override
  String get jitsiUrl => 'https://meet.lettutor.com';

  @override
  String get verifyRedirectHost => 'letstudy.io';

  @override
  String get socketUrl => 'wss://sandbox.api.lettutor.com';
}

@Singleton(as: ServerUrl, env: [Environment.prod])
class ServerUrlProd extends ServerUrl {
  @override
  String get url => 'https://api.app.lettutor.com';

  @override
  String get webUrl => 'https://app.lettutor.com';

  @override
  String get jitsiUrl => 'https://meet.lettutor.com';

  @override
  String get verifyRedirectHost => 'letstudy.io';

  @override
  String get socketUrl => 'wss://api.app.lettutor.com';
}
