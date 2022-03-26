import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/authentication/failures/authentication_failure.dart';
import '../../../domain/authentication/interfaces/i_authentication_service.dart';
import '../../../domain/authentication/value_objects/email_address.dart';
import '../../../domain/authentication/value_objects/password.dart';
import '../../../domain/authentication/value_objects/phone_number.dart';
import '../../../presentation/common.dart';
import '../../common/db/fixture_loader.dart';
import '../dto/token.dart';

@LazySingleton(as: AuthenticationService)
class MockAuthenticationService implements AuthenticationService {
  late final Box<String> _box;
  // static const _boxName = 'mockSecret';
  static const _keyToken = 'tokens';

  static const mockOfflineError = 'offline@mock.com';

  MockAuthenticationService(@Named('mockSecret') Box<String> box) : _box = box;

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

      if (req['email'] == emailValue && req['password'] == passwordValue) {
        final res = await FixtureLoader.loginResponse;
        final token = Tokens.fromJson(res['tokens']);

        await _box.put(_keyToken, json.encode(token.toJson()).toString());

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

      if (req['phone'] == phoneValue && req['password'] == passwordValue) {
        final res = await FixtureLoader.loginResponse;
        final token = Tokens.fromJson(res['tokens']);

        await _box.put(_keyToken, json.encode(token.toJson()).toString());
        return right(unit);
      }

      return left(const AuthenticationFailure.wrongPhoneNumberOrPassword());
    } on FlutterError {
      return left(const AuthenticationFailure.serverError());
    }
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signOut() async {
    await _box.clear();
    return right(unit);
  }
}