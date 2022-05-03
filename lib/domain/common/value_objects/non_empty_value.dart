import 'package:dartz/dartz.dart';

import '../../authentication/failures/value_failure.dart';
import '../../common/value_objects/value_object.dart';

class NonEmptyValue extends ValueObject<ValueFailure, String> {
  final Either<ValueFailure, String> _valueOrFailure;

  NonEmptyValue._(this._valueOrFailure);

  factory NonEmptyValue([String? value]) => NonEmptyValue._(_validate(value));

  @override
  Either<ValueFailure, String> get value => _valueOrFailure;

  static Either<ValueFailure, String> _validate(String? value) {
    if (value == null) {
      return left(const ValueFailure.valueIsRequired());
    }

    if (value.isEmpty) {
      return left(const ValueFailure.emptyValue());
    }

    return right(value);
  }
}