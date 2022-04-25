import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/authentication/value_objects/phone_number.dart';
import '../../../domain/common/error/error.dart';
import '../../../domain/common/failures/failure.dart';
import '../../../domain/common/models/country.dart';
import '../../../domain/user/constants/levels.dart';
import '../../../domain/user/interfaces/i_user_repository.dart';
import '../../../domain/user/models/speciality.dart';
import '../../../domain/user/models/user.dart';
import '../../../domain/user/value_objects/birthday.dart';
import '../../../domain/user/value_objects/name.dart';
import '../../../presentation/common.dart';
import '../../common/db/fixture_loader.dart';
import '../../common/network/api_client.dart';
import '../../common/network/request_url.dart';
import '../dto/speciality_dto.dart';
import '../dto/user_dto.dart';
import '../utils/level_extension.dart';

@LazySingleton(
  as: UserRepository,
  env: [Environment.dev, Environment.prod, Environment.test],
)
class UserRepositoryImpl extends UserRepository {
  late final Box<String> _box;
  final ApiClient _apiClient;

  static const _keyUser = 'user';

  UserRepositoryImpl(
    @Named('secret') this._box,
    this._apiClient,
  );

  @override
  Future<Either<Failure, List<Speciality>>> getLearnTopics() async {
    try {
      final res = await FixtureLoader.learnTopicResponse;
      final list = List<SpecialityDto>.from(
        res.map((x) => SpecialityDto.fromJson(x)),
      );

      return right(list.map((e) => e.toDomain()).toList());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<Speciality>>> getTestPreparationTopics() async {
    try {
      final res = await FixtureLoader.testPreparationResponse;
      final list = List<SpecialityDto>.from(
        res.map((x) => SpecialityDto.fromJson(x)),
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
    required List<Speciality> learnTopics,
    required List<Speciality> testPreparations,
    File? profileImage,
  }) async {
    try {
      if (!_box.containsKey(_keyUser)) {
        return left(const Failure.internalError());
      }

      if (profileImage != null) {
        final uploadProfileResult = await uploadAvatar(profileImage);
        if (uploadProfileResult.isLeft()) {
          return uploadProfileResult;
        }
      }

      final nameValue = name.requireValue();
      final birthDayValue = birthDay.requireStringValue();
      final phoneNumberValue = phoneNumber?.requireValue() ?? '';
      final countryValue = country.isoCode;
      final levelValue = level.toEncodeString();
      final learnTopicValue = learnTopics.map((e) => e.id.toString()).toList();
      final testPreparationValue =
          testPreparations.map((e) => e.id.toString()).toList();

      final data = {
        'name': nameValue,
        'country': countryValue,
        'phone': phoneNumberValue,
        'birthday': birthDayValue,
        'level': levelValue,
        'learnTopics': learnTopicValue,
        'testPreparations': testPreparationValue
      };

      final result = await _apiClient.put(
        RequestUrl.user.info,
        data: data,
        onResponded: (response) {
          final data = response.data as Map<String, dynamic>;
          return UserDto.fromJson(data);
        },
      );

      if (result.isLeft()) {
        return left(
          result.fold((l) => l, (r) => const Failure.internalError()),
        );
      }

      await _box.put(_keyUser, jsonEncode(result));
      return right(unit);
    } on NoValueError {
      return left(const Failure.internalError());
    }
  }

  Future<Either<Failure, Unit>> uploadAvatar(File profileImage) async {
    try {
      String fileName = profileImage.path.split('/').last;
      final data = FormData.fromMap({
        'avatar': await MultipartFile.fromFile(
          profileImage.path,
          filename: fileName,
        ),
      });

      final result = await _apiClient.post(
        RequestUrl.user.uploadAvatar,
        data: data,
        onResponded: (_) => unit,
      );

      return result;
    } on FlutterError {
      return left(const Failure.internalError());
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
  Future<Either<Failure, User>> fetchUserInfo() async {
    try {
      final fetchResult = await _apiClient.get(
        RequestUrl.user.info,
        onResponded: (response) {
          final data = response.data as Map<String, dynamic>;
          return UserDto.fromJson(data);
        },
      );
      await _box.put(_keyUser, jsonEncode(fetchResult));
      return fetchResult.map((r) => r.toDomain());
    } on FlutterError {
      return left(const Failure.internalError());
    }
  }
}
