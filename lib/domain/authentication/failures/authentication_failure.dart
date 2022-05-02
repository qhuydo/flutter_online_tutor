import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/failures/failure.dart';

part 'authentication_failure.freezed.dart';

@freezed
class AuthenticationFailure with _$AuthenticationFailure {
  const AuthenticationFailure._();

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

  const factory AuthenticationFailure.emailNotExist() = _EmailNotExist;

  const factory AuthenticationFailure.wrongCurrentPassword() =
      _WrongCurrentPassword;

  const factory AuthenticationFailure.unauthorized() = _Unauthorzied;

  const factory AuthenticationFailure.accountNotActivated() =
      _AccountNotActivated;

  factory AuthenticationFailure.fromErrorCode(int errorCode) {
    switch (errorCode) {
      case 1:
        return const AuthenticationFailure.unauthorized();
      case 2:
        return const AuthenticationFailure.accountNotActivated();
      case 4:
        return const AuthenticationFailure.emailAlreadyTaken();
      case 5:
        return const AuthenticationFailure.emailNotExist();
      case 7:
        return const AuthenticationFailure.wrongEmailOrPassword();
      case 32:
        return const AuthenticationFailure.wrongCurrentPassword();
      case 36:
        return const AuthenticationFailure.phoneNumberAlreadyTaken();
      default:
        return const AuthenticationFailure.serverError();
    }
  }

  factory AuthenticationFailure.fromFailure(Failure failure) {
    return failure.maybeWhen(
      accountNotActivated: () =>
          const AuthenticationFailure.accountNotActivated(),
      unauthenticated: () => const AuthenticationFailure.unauthorized(),
      emailExisted: () => const AuthenticationFailure.emailAlreadyTaken(),
      emailNotExist: () => const AuthenticationFailure.emailNotExist(),
      incorrectEmailOrPassword: () =>
          const AuthenticationFailure.wrongEmailOrPassword(),
      incorrectPassword: () =>
          const AuthenticationFailure.wrongCurrentPassword(),
      phoneExisted: () => const AuthenticationFailure.phoneNumberAlreadyTaken(),
      orElse: () => const AuthenticationFailure.serverError(),
    );
  }
}
