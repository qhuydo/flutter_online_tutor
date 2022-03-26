import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_failure.freezed.dart';

@freezed
class EmailFailure with _$EmailFailure {

  const factory EmailFailure.empty() = _Empty;

  const factory EmailFailure.invalidEmail(String email) = _InvalidEmail;

}