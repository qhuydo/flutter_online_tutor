import 'dart:convert';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter_online_tutor/domain/authentication/failures/authentication_failure.dart';
import 'package:flutter_online_tutor/domain/authentication/value_objects/email_address.dart';
import 'package:flutter_online_tutor/domain/authentication/value_objects/password.dart';
import 'package:flutter_online_tutor/domain/authentication/value_objects/phone_number.dart';
import 'package:flutter_online_tutor/infrastructure/authentication/dto/token.dart';
import 'package:flutter_online_tutor/infrastructure/authentication/repositories/mock_authentication_service.dart';
import 'package:flutter_online_tutor/infrastructure/common/db/fixture_loader.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockAuthenticationService authenticationService;
  late Box<String> box;
  late Box<String> cacheBox;

  setUp(() async {
    await Hive.initFlutter();
    // var _bytes = await rootBundle
    //     .load('assets/testbox.hive')
    //     .then((value) => value.buffer.asUint8List());

    box = await Hive.openBox<String>(
      'testBox',
      bytes: Uint8List(0),
    );

    cacheBox = await Hive.openBox<String>(
      'testCacheBox',
      bytes: Uint8List(0),
    );

    authenticationService = MockAuthenticationService(
      box,
      cacheBox: cacheBox,
    )..shouldDelay = false;
  });

  tearDown(() async {
    await box.clear();
    await cacheBox.clear();
  });

  group('sign in', () {
    test('should sign in with test account', () async {
      // arrange
      final emailAddress = EmailAddress('test@example.com');
      final password = Password('password');

      final req = await FixtureLoader.loginResponse;
      final expectedTokens = Tokens.fromJson(req['tokens']);

      // act
      final result = await authenticationService.signIn(
        emailAddress: emailAddress,
        password: password,
      );
      final isSignedIn = await authenticationService.isSignedIn();

      final actualTokens = Tokens.fromJson(json.decode(box.get('tokens')!));

      // assert
      expect(result, equals(const Right(unit)));
      // expect the refresh token & access token is in hive storage
      expect(actualTokens, equals(expectedTokens));
      expect(isSignedIn, isTrue);
    });

    test('should not sign in with wrong email', () async {
      // arrange
      // wrong email address
      final emailAddress = EmailAddress('test@example1.com');
      final password = Password('password');

      // act
      final result = await authenticationService.signIn(
        emailAddress: emailAddress,
        password: password,
      );
      final isSignedIn = await authenticationService.isSignedIn();

      // assert
      expect(
          result,
          equals(const Left(
            AuthenticationFailure.wrongEmailOrPassword(),
          )));
      expect(isSignedIn, isFalse);
    });

    test('should not sign in with wrong password', () async {
      // arrange
      final emailAddress = EmailAddress('test@example.com');
      // wrong password
      final password = Password('12345678');

      // act
      final result = await authenticationService.signIn(
        emailAddress: emailAddress,
        password: password,
      );
      final isSignedIn = await authenticationService.isSignedIn();

      // assert
      expect(
          result,
          equals(const Left(
            AuthenticationFailure.wrongEmailOrPassword(),
          )));
      expect(isSignedIn, isFalse);
    });

    test('should return no-connection failure when using test account',
        () async {
      // arrange
      final emailAddress = EmailAddress('offline@mock.com');
      final password = Password('password');

      // act
      final result = await authenticationService.signIn(
        emailAddress: emailAddress,
        password: password,
      );
      final isSignedIn = await authenticationService.isSignedIn();

      // assert
      expect(
          result,
          equals(const Left(
            AuthenticationFailure.noConnection(),
          )));
      expect(isSignedIn, isFalse);
    });
  });

  group('sign in with phone', () {
    test('should sign in with test account', () async {
      // arrange
      final phone = PhoneNumber('380123456789');
      final password = Password('password');

      final req = await FixtureLoader.loginResponse;
      final expectedTokens = Tokens.fromJson(req['tokens']);

      // act
      final result = await authenticationService.signInWithPhone(
        phoneNumber: phone,
        password: password,
      );
      final isSignedIn = await authenticationService.isSignedIn();

      final actualTokens = Tokens.fromJson(json.decode(box.get('tokens')!));

      // assert
      expect(result, equals(const Right(unit)));
      // expect the refresh token & access token is in hive storage
      expect(actualTokens, equals(expectedTokens));
      expect(isSignedIn, isTrue);
    });

    test('should not sign in with wrong phone number', () async {
      // arrange
      // wrong phone number
      final phone = PhoneNumber('38012345671');
      final password = Password('password');

      // act
      final result = await authenticationService.signInWithPhone(
        phoneNumber: phone,
        password: password,
      );
      final isSignedIn = await authenticationService.isSignedIn();

      // assert
      expect(
          result,
          equals(const Left(
            AuthenticationFailure.wrongPhoneNumberOrPassword(),
          )));
      expect(isSignedIn, isFalse);
    });
  });

  group('sign out', () {
    test('should sign out', () async {
      // arrange
      final emailAddress = EmailAddress('test@example.com');
      final password = Password('password');

      await authenticationService.signIn(
        emailAddress: emailAddress,
        password: password,
      );

      // act
      final isSignedIn = await authenticationService.isSignedIn();
      final signedInUser = await authenticationService.getSignedInUser();
      await authenticationService.signOut();
      final isSignedOut = !(await authenticationService.isSignedIn());

      // assert
      expect(isSignedIn, isTrue);
      expect(signedInUser.isSome(), isTrue);
      expect(isSignedOut, isTrue);
    });
  });

  group('register', () {
    test('should register new account & login successfully', () async {
      // arrange
      final emailAddress = EmailAddress('test2@example.com');
      final password = Password('password');

      // act
      final result = await authenticationService.signUp(
        emailAddress: emailAddress,
        password: password,
      );
      final isSignedIn = await authenticationService.isSignedIn();

      // assert
      expect(result, equals(const Right(unit)));
      expect(isSignedIn, isTrue);
    });

    test('should not register when email already taken', () async {
      // arrange
      // existed email address
      final emailAddress = EmailAddress('test@example.com');
      final password = Password('password');

      // act
      final result = await authenticationService.signUp(
        emailAddress: emailAddress,
        password: password,
      );
      final isSignedIn = await authenticationService.isSignedIn();

      // assert
      expect(
          result,
          equals(const Left(
            AuthenticationFailure.emailAlreadyTaken(),
          )));
      expect(isSignedIn, isFalse);
    });
  });

  group('register with phone', () {
    test('should register new account & login successfully', () async {
      // arrange
      final phone = PhoneNumber('380123456788');
      final password = Password('password');

      // act
      final result = await authenticationService.signUpWithPhone(
        phoneNumber: phone,
        password: password,
      );
      final isSignedIn = await authenticationService.isSignedIn();

      // assert
      expect(result, equals(const Right(unit)));
      expect(isSignedIn, isTrue);
    });

    test('should not register when phone number already taken', () async {
      // arrange
      // existed phone number
      final phone = PhoneNumber('380123456789');
      final password = Password('password');

      // act
      final result = await authenticationService.signUpWithPhone(
        phoneNumber: phone,
        password: password,
      );
      final isSignedIn = await authenticationService.isSignedIn();

      // assert
      expect(
          result,
          equals(const Left(
            AuthenticationFailure.phoneNumberAlreadyTaken(),
          )));
      expect(isSignedIn, isFalse);
    });
  });
}
