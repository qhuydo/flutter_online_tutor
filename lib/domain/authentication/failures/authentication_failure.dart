import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_failure.freezed.dart';

@freezed
class AuthenticationFailure with _$AuthenticationFailure {
  const factory AuthenticationFailure.wrongEmailOrPassword() =
      _WrongEmailOrPassword;

  const factory AuthenticationFailure.wrongPhoneNumberOrPassword() =
      _WrongPhoneNumberOrPassword;

  const factory AuthenticationFailure.noConnection() = _NoConnection;

  const factory AuthenticationFailure.serverError() = _ServerError;

  const factory AuthenticationFailure.alreadySignedOut() = _AlreadySignedOut;

  const factory AuthenticationFailure.emailAlreadyTaken() = _EmailAlreadyTaken;

  const factory AuthenticationFailure.phoneNumberAlreadyTaken() =
      _PhoneNumberAlreadyTaken;
}
