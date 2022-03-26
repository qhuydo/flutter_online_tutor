import 'package:dartz/dartz.dart';

import '../error/error.dart';
import '../interfaces/i_validatable.dart';

abstract class ValueObject<F, T> implements Validatable {
  const ValueObject();

  Either<F, T> get value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<F, T> && other.value == value;
  }

  T requireValue() => value.fold((l) => throw NoValueError(l), (r) => r);

  @override
  int get hashCode => value.hashCode;

  @override
  bool isValid() => value.isRight();
}
