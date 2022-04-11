abstract class InternetConnectionService {
  Stream<bool> subscribe();

  Future dispose();

  bool get hasConnection;
}