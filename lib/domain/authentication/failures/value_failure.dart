import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure with _$ValueFailure {
  const factory ValueFailure() = _ValueFailure;

  const factory ValueFailure.valueIsRequired() = _ValueIsRequired;

  const factory ValueFailure.emptyValue() = _EmptyValue;

  const factory ValueFailure.invalidValue() = _InvalidValue;
}
