
import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_failure.freezed.dart';

@freezed
class PasswordFailure with _$PasswordFailure {
  const factory PasswordFailure.emptyPassword() = _EmptyPassword;

  const factory PasswordFailure.shortPassword() = _ShortPassword;
}