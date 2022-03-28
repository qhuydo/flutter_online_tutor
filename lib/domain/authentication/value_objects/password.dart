import 'package:dartz/dartz.dart';

import '../../common/value_objects/value_object.dart';
import '../failures/password_failure.dart';

class Password extends ValueObject<PasswordFailure, String> {
  final Either<PasswordFailure, String> passwordOrFailure;

  Password._(this.passwordOrFailure);

  factory Password.failure(PasswordFailure f) => Password._(left(f));

  Password.fromEither(Either<PasswordFailure, String> either)
      : passwordOrFailure = either;

  Password(String input) : passwordOrFailure = validatePassword(input);

  @override
  Either<PasswordFailure, String> get value => passwordOrFailure;

  static const _minimumPasswordLength = 6;

  static Either<PasswordFailure, String> validatePassword(String input) {
    if (input.isEmpty) return left(const PasswordFailure.emptyPassword());

    if (input.length < _minimumPasswordLength) {
      return left(const PasswordFailure.shortPassword());
    }

    return right(input);
  }
}
