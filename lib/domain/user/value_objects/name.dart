import 'package:dartz/dartz.dart';

import '../../authentication/failures/value_failure.dart';
import '../../common/value_objects/value_object.dart';

class Name extends ValueObject<ValueFailure, String> {
  final Either<ValueFailure, String> _nameOrFailure;

  Name._(this._nameOrFailure);

  factory Name(String? name) => Name._(_validate(name));

  @override
  Either<ValueFailure, String> get value => _nameOrFailure;

  /// Validate birth date some time before today's date and within 120 years.
  static Either<ValueFailure, String> _validate(String? name) {
    if (name == null) {
      return left(const ValueFailure.valueIsRequired());
    }

    if (name.isEmpty) {
      return left(const ValueFailure.emptyValue());
    }

    return right(name);
  }
}