import 'package:dartz/dartz.dart';

import '../../common/value_objects/value_object.dart';
import '../failures/password_failure.dart';

class Password extends ValueObject<PasswordFailure, String> {
  final Either<PasswordFailure, String> _passwordOrFailure;

  const Password._(this._passwordOrFailure);

  factory Password(String input) => Password._(_validatePassword(input));

  @override
  Either<PasswordFailure, String> get value => _passwordOrFailure;

  static const _minimumPasswordLength = 8;

  static Either<PasswordFailure, String> _validatePassword(String input) {
    if (input.isEmpty) return left(const PasswordFailure.emptyPassword());

    if (input.length < _minimumPasswordLength) {
      return left(const PasswordFailure.shortPassword());
    }

    return right(input);
  }
}
