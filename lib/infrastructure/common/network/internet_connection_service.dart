import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../../domain/common/interfaces/i_internet_connection_service.dart';

@LazySingleton(as: InternetConnectionService)
class InternetConnectionServiceImpl implements InternetConnectionService {
  bool _isConnected = false;
  final InternetConnectionChecker _checker;

  InternetConnectionServiceImpl() : _checker = InternetConnectionChecker();

  @override
  @disposeMethod
  Future dispose() async {}

  @override
  bool get hasConnection => _isConnected;

  @override
  Stream<bool> subscribe() async* {
    yield* _checker.onStatusChange.map((status) {
      _isConnected = status == InternetConnectionStatus.connected;
      return _isConnected;
    });
  }
}
