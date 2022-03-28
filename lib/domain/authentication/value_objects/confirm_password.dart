import 'package:dartz/dartz.dart';

import '../failures/password_failure.dart';
import 'password.dart';

class ConfirmPassword extends Password {
  ConfirmPassword._(Either<PasswordFailure, String> passwordOrFailure)
      : super.fromEither(passwordOrFailure);

  factory ConfirmPassword({
    required Password newPassword,
    required String input,
  }) {
    final passwordOrFailure = Password.validatePassword(input);
    if (!newPassword.isValid()) {
      return ConfirmPassword._(passwordOrFailure);
    }
    return passwordOrFailure.fold(
      (l) => ConfirmPassword._(passwordOrFailure),
      (r) {
        if (r != newPassword.requireValue()) {
          return ConfirmPassword._(
            left(const PasswordFailure.wrongNewPassword()),
          );
        }
        return ConfirmPassword._(passwordOrFailure);
      },
    );
  }
}
