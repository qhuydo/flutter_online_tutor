import 'dart:typed_data';

import 'package:flutter_online_tutor/domain/authentication/value_objects/email_address.dart';
import 'package:flutter_online_tutor/domain/authentication/value_objects/password.dart';
import 'package:flutter_online_tutor/domain/authentication/value_objects/phone_number.dart';
import 'package:flutter_online_tutor/domain/common/constants/countries.dart';
import 'package:flutter_online_tutor/domain/common/models/country.dart';
import 'package:flutter_online_tutor/domain/user/constants/levels.dart';
import 'package:flutter_online_tutor/domain/user/models/speciality.dart';
import 'package:flutter_online_tutor/domain/user/value_objects/birthday.dart';
import 'package:flutter_online_tutor/domain/user/value_objects/name.dart';
import 'package:flutter_online_tutor/infrastructure/authentication/repositories/mock_authentication_service.dart';
import 'package:flutter_online_tutor/infrastructure/user/repositories/mock_user_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockAuthenticationService authenticationService;
  late MockUserRepository userRepository;
  late Box<String> box;
  // late Box<String> cacheBox;

  setUp(() async {
    await Hive.initFlutter();
    box = await Hive.openBox<String>(
      'testBox',
      bytes: Uint8List(0),
    );
    userRepository = MockUserRepository(box)
      ..shouldDelay = false;

    // cacheBox = await Hive.openBox<String>(
    //   'testCacheBox',
    //   bytes: Uint8List(0),
    // );
    authenticationService = MockAuthenticationService(
      box,
      // cacheBox: cacheBox,
    )
      ..shouldDelay = false;
  });

  group('learning topic', () {
    test('should load learning topics', () async {
      // arrange

      // act
      final listOrFailure = await userRepository.getLearnTopics();

      // assert
      expect(listOrFailure.isRight(), isTrue);
    });
  });

  group('test preparation', () {
    test('should load test preparation topics', () async {
      // act
      final listOrFailure = await userRepository.getTestPreparationTopics();

      // assert
      expect(listOrFailure.isRight(), isTrue);
    });
  });

  group('change user info', () {
    test('should save user info with valid values', () async {
      // arrange
      await signIn(authenticationService);

      final Name name = Name('A');
      final BirthDay birthDay = BirthDay(DateTime(1999, 1, 1));
      final PhoneNumber? phoneNumber = PhoneNumber('380123456789');
      final Country country = countryMap['UA']!;
      const Level level = Level.advanced;
      final List<Speciality> learnTopics = [];
      final List<Speciality> testPreparations = [];

      // act
      final result = await userRepository.updateUserInfo(
        name: name,
        birthDay: birthDay,
        phoneNumber: phoneNumber,
        country: country,
        level: level,
        learnTopics: learnTopics,
        testPreparations: testPreparations,
      );

      final user = (await authenticationService.getSignedInUser())
          .fold(() => null, (a) => a,);

      // assert
      expect(result.isRight(), isTrue);
      expect(user?.name, equals(name));
      expect(user?.birthday, equals(birthDay));
      expect(user?.phoneNumber, equals(phoneNumber));
      expect(user?.country, equals(country));
      expect(user?.level, equals(level));
      expect(user?.learningTopics, equals(learnTopics));
      expect(user?.testPreparationTopics, equals(testPreparations));
    });
  });
}

Future<void> signIn(MockAuthenticationService authenticationService) async {
  final emailAddress = EmailAddress('test@example.com');
  final password = Password('password');

  await authenticationService.signIn(
    emailAddress: emailAddress,
    password: password,
  );
}
