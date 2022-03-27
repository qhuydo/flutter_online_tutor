part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String emailStr) = _EmailChanged;

  const factory LoginEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;

  const factory LoginEvent.phoneNumberChanged(String phoneNumberStr) =
      _PhoneNumberChanged;

  const factory LoginEvent.logInWithEmailAndPasswordPressed() =
      _logInWithEmailAndPasswordPressed;

  const factory LoginEvent.logInWithPhoneAndPasswordPressed() =
  _logInWithPhoneAndPasswordPressed;
}
