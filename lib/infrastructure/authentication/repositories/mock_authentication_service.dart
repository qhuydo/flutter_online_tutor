import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../../domain/authentication/interfaces/i_authentication_service.dart';
import '../../../domain/authentication/value_objects/email_address.dart';
import '../../../domain/authentication/value_objects/password.dart';
import '../../../domain/authentication/value_objects/phone_number.dart';
import '../../../domain/common/error/error.dart';
import '../../../domain/user/models/user.dart';
import '../../../presentation/common.dart';
import '../../common/db/fixture_loader.dart';
import '../../user/dto/user_dto.dart';
import '../dto/authentication_dto.dart';
import '../dto/token.dart';

@LazySingleton(as: AuthenticationService, env: ['mock'])
class MockAuthenticationService implements AuthenticationService {
  final Box<String> _box;
  late final Box<String> _cacheBox;
  bool shouldDelay = true;

  // static const _boxName = 'mockSecret';
  static const _keyToken = 'tokens';
  static const _keyUser = 'user';

  static const mockOfflineError = 'offline@mock.com';

  MockAuthenticationService(
    @Named('mockSecret') this._box, {
    @Named('mockCacheSecret') Box<String>? cacheBox,
  }) {
    if (cacheBox == null) {
      Hive.openBox<String>('cache', bytes: Uint8List(0))
          .then((value) => _cacheBox = value);
    } else {
      _cacheBox = cacheBox;
    }
  }

  @override
  Future<bool> isSignedIn() => Future.value(_box.containsKey(_keyToken));

  @override
  Future<Either<AuthenticationFailure, Unit>> signIn({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailValue = emailAddress.requireValue();
    final passwordValue = password.requireValue();

    if (emailValue == mockOfflineError) {
      return left(const AuthenticationFailure.noConnection());
    }

    try {
      final req = await FixtureLoader.loginRequest;
      if (!_cacheBox.containsKey(req['email'])) {
        await _cacheBox.put(req['email'], req['password']);
      }

      final password = _cacheBox.get(emailValue);

      await _delay();

      if (password != null && password == passwordValue) {
        final res = await FixtureLoader.loginResponse;
        final authDto = AuthenticationDto.fromJson(res);

        await _saveAuthData(authDto);

        return right(unit);
      }

      return left(const AuthenticationFailure.wrongEmailOrPassword());
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
      final req = await FixtureLoader.loginByPhoneRequest;

      await _delay();

      if (!_cacheBox.containsKey(req['phone'])) {
        await _cacheBox.put(req['phone'], req['password']);
      }

      final password = _cacheBox.get(phoneValue);

      if (password != null && password == passwordValue) {
        final res = await FixtureLoader.loginResponse;
        final authDto = AuthenticationDto.fromJson(res);

        await _saveAuthData(authDto);
        return right(unit);
      }

      return left(const AuthenticationFailure.wrongPhoneNumberOrPassword());
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
  Future<Either<AuthenticationFailure, Unit>> signOut() async {
    await _box.clear();
    return right(unit);
  }

  @override
  Future<Option<User>> getSignedInUser() async {
    final userStr = _box.get(_keyUser);
    final userDto =
        userStr != null ? UserDto.fromJson(jsonDecode(userStr)) : null;
    return optionOf(userDto?.toDomain());
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signUp({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailValue = emailAddress.requireValue();
    final passwordValue = password.requireValue();

    try {
      final req = await FixtureLoader.loginRequest;
      if (!_cacheBox.containsKey(req['email'])) {
        await _cacheBox.put(req['email'], req['password']);
      }

      await _delay();

      if (!_cacheBox.containsKey(emailValue)) {
        await _cacheBox.put(emailValue, passwordValue);

        final res = await FixtureLoader.loginResponse;
        final authDto = AuthenticationDto.fromJson(res);

        await _saveAuthData(authDto);

        return right(unit);
      }

      return left(const AuthenticationFailure.emailAlreadyTaken());
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
      final req = await FixtureLoader.loginByPhoneRequest;
      await _delay();

      if (!_cacheBox.containsKey(req['phone'])) {
        await _cacheBox.put(req['phone'], req['password']);
      }

      if (!_cacheBox.containsKey(phoneValue)) {
        await _cacheBox.put(phoneValue, passwordValue);

        final res = await FixtureLoader.loginResponse;
        final authDto = AuthenticationDto.fromJson(res);

        await _saveAuthData(authDto);
        return right(unit);
      }

      return left(const AuthenticationFailure.phoneNumberAlreadyTaken());
    } on FlutterError {
      return left(const AuthenticationFailure.serverError());
    }
  }

  Future<void> _delay() async {
    if (shouldDelay) {
      await Future.delayed(const Duration(seconds: 3));
    }
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> resetPassword({
    required EmailAddress emailAddress,
  }) async {
    final emailValue = emailAddress.requireValue();

    try {
      final req = await FixtureLoader.loginRequest;
      if (!_cacheBox.containsKey(req['email'])) {
        await _cacheBox.put(req['email'], req['password']);
      }

      if (!_cacheBox.containsKey(emailValue)) {
        return left(const AuthenticationFailure.emailNotExist());
      }

      await _delay();

      await _cacheBox.put(emailValue, '12345678');

      return right(unit);
    } on FlutterError {
      return left(const AuthenticationFailure.serverError());
    }
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> changePassword({
    required Password oldPassword,
    required Password newPassword,
  }) async {
    await _delay();

    if (!(await isSignedIn())) {
      return left(const AuthenticationFailure.unauthorized());
    }

    final oldPasswordValue = oldPassword.requireValue();
    final newPasswordValue = newPassword.requireValue();

    final userOption = await getSignedInUser();
    try {
      final user = userOption.getOrElse(() => throw NoValueError(userOption));
      final email = user.emailAddress.valueOrNull();
      final phone = user.phoneNumber?.valueOrNull();

      final oldRealPassword = _cacheBox.get(email) ?? _cacheBox.get(phone);

      if (oldPasswordValue != oldRealPassword) {
        return left(const AuthenticationFailure.wrongCurrentPassword());
      }

      if (_cacheBox.containsKey(email)) {
        _cacheBox.put(email, newPasswordValue);
      } else {
        _cacheBox.put(phone, newPasswordValue);
      }

      return right(unit);
    } on NoValueError catch (e) {
      log(e.toString());
      return left(const AuthenticationFailure.unauthorized());
    }
  }

  @override
  Future<Option<Tokens>> getTokens() async {
    final tokenJson = _box.get(_keyToken);
    if (tokenJson == null) return none();
    return some(Tokens.fromJson(jsonDecode(tokenJson)));
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> refreshToken() async {
    return right(unit);
  }
}
