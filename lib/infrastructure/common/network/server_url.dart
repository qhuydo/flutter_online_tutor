
import 'package:injectable/injectable.dart';

abstract class ServerUrl {
  String get url;
}

@Singleton(as: ServerUrl, env: [Environment.dev, Environment.test])
class ServerUrlDev extends ServerUrl {
  @override
  String get url => 'https://sandbox.api.lettutor.com';
}

@Singleton(as: ServerUrl, env: [Environment.prod])
class ServerUrlProd extends ServerUrl {
  // TODO update url
  @override
  String get url => 'https://sandbox.api.lettutor.com';
}