import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import 'server_url.dart';

@lazySingleton
class ApiClient {
  final Dio _dio;
  final ServerUrl _serverUrl;

  ApiClient(this._dio, this._serverUrl);

  static Future<Either<Failure, T>> makeRequest<T>(
    Future<T> Function() callback,
  ) async {
    try {
      final response = await callback();
      return right(response);
    } on DioError catch (e) {
      final res = e.response?.data is Map<String, dynamic>
          ? e.response?.data as Map<String, dynamic>
          : {};
      // http status code
      final statusCode = e.response?.statusCode;
      // error code from response
      final errorCode = res['statusCode'];
      if (errorCode != null && errorCode is int) {
        return left(Failure.fromErrorCode(errorCode));
      }

      final message = res['message'];
      if ((message != null && message is String) || statusCode != null) {
        return left(Failure.apiError(statusCode: statusCode, message: message));
      }
      return left(const Failure.serverError());
    }
  }

  Future<Either<Failure, T>> get<T>(
    String path, {
    required T Function(Response response) onResponded,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) =>
      getFromUrl(
        '${_serverUrl.url}/$path',
        onResponded: onResponded,
        queryParams: queryParams,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

  Future<Either<Failure, T>> getFromUrl<T>(
    String path, {
    required T Function(Response response) onResponded,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) =>
      makeRequest(
        () async => onResponded(
          await _dio.get(
            path,
            queryParameters: queryParams,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress,
          ),
        ),
      );

  Future<Either<Failure, T>> post<T>(
    String path, {
    required T Function(Response response) onResponded,
    dynamic data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      postFromUrl(
        '${_serverUrl.url}/$path',
        data: data,
        onResponded: onResponded,
        queryParams: queryParams,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  Future<Either<Failure, T>> postFromUrl<T>(
    String path, {
    required T Function(Response response) onResponded,
    dynamic data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      makeRequest(
        () async => onResponded(
          await _dio.post(
            path,
            data: data,
            queryParameters: queryParams,
            options: options,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          ),
        ),
      );

  Future<Either<Failure, T>> put<T>(
    String path, {
    required T Function(Response response) onResponded,
    dynamic data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      putFromUrl(
        '${_serverUrl.url}/$path',
        data: data,
        onResponded: onResponded,
        queryParams: queryParams,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  Future<Either<Failure, T>> putFromUrl<T>(
    String path, {
    required T Function(Response response) onResponded,
    dynamic data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      makeRequest(
        () async => onResponded(
          await _dio.put(
            path,
            data: data,
            queryParameters: queryParams,
            options: options,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          ),
        ),
      );

  Future<Either<Failure, T>> patch<T>(
    String path, {
    required T Function(Response response) onResponded,
    dynamic data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      patchFromUrl(
        '${_serverUrl.url}/$path',
        data: data,
        onResponded: onResponded,
        queryParams: queryParams,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  Future<Either<Failure, T>> patchFromUrl<T>(
    String path, {
    required T Function(Response response) onResponded,
    dynamic data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      makeRequest(
        () async => onResponded(
          await _dio.patch(
            path,
            data: data,
            queryParameters: queryParams,
            options: options,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          ),
        ),
      );

  Future<Either<Failure, T>> delete<T>(
    String path, {
    required T Function(Response response) onResponded,
    dynamic data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
  }) =>
      deleteFromUrl(
        '${_serverUrl.url}/$path',
        data: data,
        onResponded: onResponded,
        queryParams: queryParams,
        options: options,
        cancelToken: cancelToken,
      );

  Future<Either<Failure, T>> deleteFromUrl<T>(
    String path, {
    required T Function(Response response) onResponded,
    dynamic data,
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
  }) =>
      makeRequest(
        () async => onResponded(
          await _dio.delete(
            path,
            data: data,
            queryParameters: queryParams,
            options: options,
            cancelToken: cancelToken,
          ),
        ),
      );
}
