import 'package:dartz/dartz.dart';

import '../../common/value_objects/value_object.dart';
import '../failures/email_failure.dart';

class EmailAddress extends ValueObject<EmailFailure, String> {
  @override
  Either<EmailFailure, String> get value => _emailOrFailure;

  final Either<EmailFailure, String> _emailOrFailure;

  const EmailAddress._(this._emailOrFailure);

  factory EmailAddress(String email) {
    return EmailAddress._(
      _validateEmailAddress(email),
    );
  }

  static Either<EmailFailure, String> _validateEmailAddress(
    String input,
  ) {
    const emailRegex =
        r'''^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@('''
        r'''([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})''';

    if (RegExp(emailRegex).hasMatch(input)) {
      return right(input);
    } else {
      return left(EmailFailure.invalidEmail(input));
    }
  }
}
