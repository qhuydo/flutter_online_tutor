import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_service_event.freezed.dart';

@freezed
class AuthenticationServiceEvent with _$AuthenticationServiceEvent {
  const factory AuthenticationServiceEvent.signedOut() = _SignedOut;
}
