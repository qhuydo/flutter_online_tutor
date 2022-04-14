import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../../domain/authentication/interfaces/i_authentication_service.dart';
import '../../../domain/authentication/value_objects/email_address.dart';
import '../../../domain/authentication/value_objects/password.dart';
import '../../../domain/authentication/value_objects/phone_number.dart';
import '../../../domain/user/models/user.dart';
import '../../../presentation/common.dart';
import '../../common/network/api_client.dart';
import '../../common/network/request_url.dart';
import '../../user/dto/user_dto.dart';
import '../dto/authentication_dto.dart';
import '../dto/token.dart';

@Singleton(
  as: AuthenticationService,
  env: [Environment.dev, Environment.prod, Environment.test],
)
class AuthenticationServiceImpl implements AuthenticationService {
  late final Box<String> _box;
  final ApiClient _apiClient;

  static const _keyToken = 'tokens';
  static const _keyUser = 'user';

  AuthenticationServiceImpl(@Named('secret') this._box, this._apiClient);

  @override
  Future<Either<AuthenticationFailure, Unit>> changePassword({
    required Password oldPassword,
    required Password newPassword,
  }) async {
    final oldPasswordValue = oldPassword.requireValue();
    final newPasswordValue = newPassword.requireValue();

    try {
      final data = {
        'password': oldPasswordValue,
        'newPassword': newPasswordValue,
      };

      final response = await _apiClient.post(
        RequestUrl.auth.changePassword,
        data: data,
        onResponded: (_) => right(unit),
      );
      return response.fold(
        (failure) => left(AuthenticationFailure.fromFailure(failure)),
        (_) => right(unit),
      );
    } on FlutterError {
      return left(const AuthenticationFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getSignedInUser() async {
    final userStr = _box.get(_keyUser);
    final userDto =
        userStr != null ? UserDto.fromJson(jsonDecode(userStr)) : null;
    return optionOf(userDto?.toDomain());
  }

  @override
  Future<bool> isSignedIn() => Future.value(_box.containsKey(_keyToken));

  @override
  Future<Either<AuthenticationFailure, Unit>> resetPassword({
    required EmailAddress emailAddress,
  }) async {
    final emailValue = emailAddress.requireValue();
    try {
      final data = {'email': emailValue};
      final result = await _apiClient.post(
        RequestUrl.user.forgotPassword,
        data: data,
        onResponded: (response) {
          return unit;
        },
      );
      return result.fold(
        (failure) => left(AuthenticationFailure.fromFailure(failure)),
        (unit) => right(unit),
      );
    } on Error {
      return left(const AuthenticationFailure.serverError());
    }
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signIn({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailValue = emailAddress.requireValue();
    final passwordValue = password.requireValue();

    try {
      final data = {'email': emailValue, 'password': passwordValue};

      final result = await _apiClient.post(
        RequestUrl.auth.login,
        data: data,
        onResponded: (response) {
          return AuthenticationDto.fromJson(
            response.data as Map<String, dynamic>,
          );
        },
      );

      return result.fold(
        (failure) => left(AuthenticationFailure.fromFailure(failure)),
        (authDto) async {
          await _saveAuthData(authDto);
          return right(unit);
        },
      );
    } on FlutterError {
      return left(const AuthenticationFailure.serverError());
    }
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signInWithPhone({
    required PhoneNumber phoneNumber,
    required Password password,
  }) async {
    final phoneValue = phoneNumber.requireValue();
    final passwordValue = password.requireValue();

    try {
      final data = {'phone': phoneValue, 'password': passwordValue};

      final result = await _apiClient.post(
        RequestUrl.auth.login,
        data: data,
        onResponded: (response) {
          return AuthenticationDto.fromJson(
            response.data as Map<String, dynamic>,
          );
        },
      );

      return result.fold(
        (f) {
          var failure = AuthenticationFailure.fromFailure(f);
          failure = failure.mapOrNull(
                wrongEmailOrPassword: (_) =>
                    const AuthenticationFailure.wrongPhoneNumberOrPassword(),
              ) ??
              failure;
          return left(failure);
        },
        (authDto) async {
          await _saveAuthData(authDto);
          return right(unit);
        },
      );
    } on FlutterError {
      return left(const AuthenticationFailure.serverError());
    }
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signOut() async {
    await _box.clear();
    return right(unit);
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signUp({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailValue = emailAddress.requireValue();
    final passwordValue = password.requireValue();

    try {
      final data = {
        'email': emailValue,
        'password': passwordValue,
        'source': null,
      };

      final result = await _apiClient.post(
        RequestUrl.auth.register,
        data: data,
        onResponded: (response) {
          return AuthenticationDto.fromJson(
            response.data as Map<String, dynamic>,
          );
        },
      );

      return result.fold(
        (l) => left(AuthenticationFailure.fromFailure(l)),
        (authDto) async {
          await _saveAuthData(authDto);
          return right(unit);
        },
      );
    } on FlutterError {
      return left(const AuthenticationFailure.serverError());
    }
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signUpWithPhone({
    required PhoneNumber phoneNumber,
    required Password password,
  }) async {
    final phoneValue = phoneNumber.requireValue();
    final passwordValue = password.requireValue();

    try {
      final data = {
        'phone': phoneValue,
        'password': passwordValue,
        'source': null,
      };

      final result = await _apiClient.post(
        RequestUrl.auth.registerByPhone,
        data: data,
        onResponded: (response) {
          return AuthenticationDto.fromJson(
            response.data as Map<String, dynamic>,
          );
        },
      );

      return result.fold(
        (l) => left(AuthenticationFailure.fromFailure(l)),
        (authDto) async {
          await _saveAuthData(authDto);
          return right(unit);
        },
      );
    } on FlutterError {
      return left(const AuthenticationFailure.serverError());
    }
  }

  Future _saveAuthData(AuthenticationDto authDto) async {
    await _box.put(
      _keyToken,
      jsonEncode(authDto.tokens),
    );

    await _box.put(
      _keyUser,
      jsonEncode(authDto.user),
    );
  }

  @override
  Future<Option<Tokens>> getTokens() async {
    final tokenJson = _box.get(_keyToken);
    if (tokenJson == null) return none();
    return some(Tokens.fromJson(jsonDecode(tokenJson)));
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> refreshToken() async {
    final tokens = (await getTokens()).fold(() => null, (a) => a);
    if (tokens == null) return left(const AuthenticationFailure.unauthorized());

    final data = {
      'refreshToken': tokens.refresh.token,
      // todo change timezone based on device's timezone
      'timezone': 7,
    };

    final result = await _apiClient.post(
      RequestUrl.auth.refreshToken,
      data: data,
      onResponded: (response) {
        return AuthenticationDto.fromJson(response as Map<String, dynamic>);
      },
    );

    return await result.fold((l) => left(AuthenticationFailure.fromFailure(l)),
        (r) async {
      await _saveAuthData(r);
      return right(unit);
    });
  }
}
