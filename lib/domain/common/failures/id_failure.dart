import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_failure.freezed.dart';

@freezed
class IdFailure with _$IdFailure {
  const factory IdFailure() = _IdFailure;

  const factory IdFailure.emptyValue() = _EmptyValue;
}
