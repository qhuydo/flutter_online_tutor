import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.noConnection() = _NoConnection;

  const factory Failure.serverError() = _ServerError;

  const factory Failure.apiError({int? errorCode, String? message}) =
      _ApiError;

  const factory Failure.internalError() = _InternalError;

  const factory Failure.notFound() = _NotFound;

  // What a Terrible Failure
  const factory Failure.wtf(String? details) = _Wtf;
}
