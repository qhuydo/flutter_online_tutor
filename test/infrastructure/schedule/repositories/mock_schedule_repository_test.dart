import 'dart:typed_data';

import 'package:flutter_online_tutor/domain/authentication/value_objects/email_address.dart';
import 'package:flutter_online_tutor/domain/authentication/value_objects/password.dart';
import 'package:flutter_online_tutor/domain/schedule/utils/schedule_utils.dart';
import 'package:flutter_online_tutor/infrastructure/authentication/repositories/mock_authentication_service.dart';
import 'package:flutter_online_tutor/infrastructure/schedule/repositories/mock_schedule_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockAuthenticationService authenticationService;
  late MockScheduleRepository repository;

  late Box<String> box;

  setUp(() async {
    await Hive.initFlutter();
    box = await Hive.openBox<String>(
      'testBox',
      bytes: Uint8List(0),
    );
    authenticationService = MockAuthenticationService(
      box,
    )..shouldDelay = false;

    final emailAddress = EmailAddress('test@example.com');
    final password = Password('password');

    await authenticationService.signIn(
      emailAddress: emailAddress,
      password: password,
    );

    repository = MockScheduleRepository(box);
  });

  tearDown(() async {
    await box.clear();
  });

  group('get tutor schedule', () {
    test('should get schedule', () async {
      // arrange
      const tutorId = '4d54d3d7-d2a9-42e5-97a2-5ed38af5789a';

      // act
      final result = await repository.getScheduleEvents(
          tutorId: tutorId,
          range: ScheduleUtils.dateTimeRangeInOneMonth(
            DateTime(2022, 4, 1),
          ));
      final list = result.fold((l) => null, (r) => r);
      // assert
      expect(result.isRight(), isTrue);
      expect(list?.isNotEmpty, isTrue);
    });
  });

  group('get upcoming classes', () {
    test('should get upcoming classes', () async {
      // act
      final result = await repository.getUpcomingClasses();

      final list = result.fold((l) => null, (r) => r);

      // assert
      expect(result.isRight(), isTrue);
      expect(list?.isNotEmpty, isTrue);
    });
  });

  group('get meeting history', () {
    test('should get meeting histories', () async {
      // act
      final result = await repository.getHistory();

      final list = result.fold((l) => null, (r) => r);

      // assert
      expect(result.isRight(), isTrue);
      expect(list?.isNotEmpty, isTrue);
    });
  });
}
