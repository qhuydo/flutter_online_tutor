import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.noConnection() = _NoConnection;

  const factory Failure.serverError() = _ServerError;

  const factory Failure.apiError({int? errorCode, String? message}) =
      _ApiError;
}
