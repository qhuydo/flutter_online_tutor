part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.initialise() = _Initialise;

  const factory AuthenticationEvent.authCheckRequested() = _AuthCheckRequested;

  const factory AuthenticationEvent.signedOut() = _SignedOut;

  const factory AuthenticationEvent.loginWithGoogle() = _LoginWithGoogle;

}
