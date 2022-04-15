import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/authentication/interfaces/i_authentication_service.dart';
import '../../../domain/common/failures/failure.dart';
import 'server_url.dart';

@LazySingleton()
class DioInterceptor extends Interceptor {
  /// Service for authentication.
  final AuthenticationService _authenticationService;

  /// Dio client.
  final Dio _dio;

  final ServerUrl _serverUrl;

  DioInterceptor(this._dio, this._authenticationService, this._serverUrl);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token =
        (await _authenticationService.getTokens()).fold(() => null, (a) => a);

    var modifiedOptions = options;
    if (options.path.contains(_serverUrl.url)) {
      modifiedOptions = options
        ..headers.addAll(
          token == null
              ? {}
              : {'Authorization': 'Bearer ${token.access.token}'},
        );
    }

    handler.next(modifiedOptions);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    final response = err.response;

    final isUnauthorised = response != null &&
        (response.statusCode == 401 ||
            (response.data != null &&
                response.data is Map<String, dynamic> &&
                (response.data as Map<String, dynamic>)['statusCode'] ==
                    Failure.unauthorisedStatusCode));

    if (isUnauthorised) {
      final token =
          (await _authenticationService.getTokens()).fold(() => null, (a) => a);

      token != null
          ? await _authenticationService.refreshToken()
          : await _authenticationService.signOut();

      final tokens =
          (await _authenticationService.getTokens()).fold(() => null, (a) => a);
      if (tokens != null) {
        handler.resolve(
          await _dio.fetch(
            response.requestOptions
              ..headers['Authorization'] = 'Bearer ${tokens.access.token}',
          ),
        );
      }
      if (response.statusCode == 401) {
        handler.next(err);
      }
    } else {
      handler.next(err);
    }
  }
}
