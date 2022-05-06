import 'package:injectable/injectable.dart';

abstract class ServerUrl {
  String get url;

  String get jitsiUrl;

  String get verifyRedirectHost;
}

@Singleton(as: ServerUrl, env: [Environment.dev, Environment.test, 'mock'])
class ServerUrlDev extends ServerUrl {
  @override
  String get url => 'https://sandbox.api.lettutor.com';

  @override
  String get jitsiUrl => 'https://meet.lettutor.com';

  @override
  String get verifyRedirectHost => 'letstudy.io';
}

@Singleton(as: ServerUrl, env: [Environment.prod])
class ServerUrlProd extends ServerUrl {
  @override
  String get url => 'https://api.app.lettutor.com';

  @override
  String get jitsiUrl => 'https://meet.lettutor.com';

  @override
  String get verifyRedirectHost => 'letstudy.io';
}
