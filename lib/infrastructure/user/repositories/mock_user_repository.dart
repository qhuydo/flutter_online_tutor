import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/authentication/value_objects/phone_number.dart';
import '../../../domain/common/error/error.dart';
import '../../../domain/common/failures/failure.dart';
import '../../../domain/common/models/country.dart';
import '../../../domain/user/constants/levels.dart';
import '../../../domain/user/interfaces/i_user_repository.dart';
import '../../../domain/user/models/learn_topic.dart';
import '../../../domain/user/models/test_preparation.dart';
import '../../../domain/user/value_objects/birthday.dart';
import '../../../domain/user/value_objects/name.dart';
import '../../../presentation/common.dart';
import '../../common/db/fixture_loader.dart';
import '../dto/learning_topic_dto.dart';
import '../dto/test_preparation_dto.dart';
import '../dto/user_dto.dart';
import '../utils/level_extension.dart';

@LazySingleton(as: UserRepository)
class MockUserRepository extends UserRepository {
  final Box<String> _box;
  static const _keyUser = 'user';
  bool shouldDelay = true;

  MockUserRepository(
    @Named('mockSecret') this._box,
  );

  @override
  Future<Either<Failure, List<LearnTopic>>> getLearnTopics() async {
    try {
      final res = await FixtureLoader.learnTopicResponse;
      final list = List<LearningTopicDto>.from(
        res.map((x) => LearningTopicDto.fromJson(x)),
      );

      return right(list.map((e) => e.toDomain()).toList());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<TestPreparation>>>
      getTestPreparationTopics() async {
    try {
      final res = await FixtureLoader.testPreparationResponse;
      final list = List<TestPreparationDto>.from(
        res.map((x) => TestPreparationDto.fromJson(x)),
      );

      return right(list.map((e) => e.toDomain()).toList());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateUserInfo({
    required Name name,
    required BirthDay birthDay,
    required PhoneNumber? phoneNumber,
    required Country country,
    required Level level,
    required List<LearnTopic> learnTopics,
    required List<TestPreparation> testPreparations,
  }) async {
    try {
      if (!_box.containsKey(_keyUser)) {
        return left(const Failure.internalError());
      }

      await _delay();
      final user = UserDto.fromJson(jsonDecode(_box.get(_keyUser)!));

      final nameValue = name.requireValue();
      final birthDayValue = birthDay.requireStringValue();
      final phoneNumberValue = phoneNumber?.requireValue() ?? '';
      final countryValue = country.isoCode;
      final levelValue = level.toEncodeString();
      final learnTopicValue =
          learnTopics.map((e) => LearningTopicDto.fromDomain(e)).toList();
      final testPreparationValue = testPreparations
          .map((e) => TestPreparationDto.fromDomain(e))
          .toList();

      final dto = user.copyWith(
        name: nameValue,
        birthday: birthDayValue,
        phone: phoneNumberValue,
        country: countryValue,
        level: levelValue,
        learnTopics: learnTopicValue,
        testPreparations: testPreparationValue,
      );

      await _box.put(_keyUser, jsonEncode(dto));
      return right(unit);
    } on NoValueError {
      return left(const Failure.internalError());
    }
  }

  Future<void> _delay() async {
    if (shouldDelay) {
      await Future.delayed(const Duration(seconds: 3));
    }
  }

// @disposeMethod
// void dispose(){
//   _box.delete('learn_topics');
//   _box.delete('test_preparation');
// }

}
