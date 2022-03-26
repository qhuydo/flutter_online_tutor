import 'package:dartz/dartz.dart';

import '../interfaces/i_validatalble.dart';

abstract class ValueObject<F, T> implements Validatable {
  const ValueObject();

  Either<F, T> get value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<F, T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  bool isValid() => value.isRight();
}
